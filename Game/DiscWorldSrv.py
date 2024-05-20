
from multiprocessing import pool
import paho.mqtt.client as mqtt
import sys
#import threading
import multiprocessing
import mariadb
import json
import time
import datetime
import binascii
import hashlib
import http.client, urllib
import re

from SrvConfig import MQTTBroker,MQTTPort,MQTTUser,MQTTPass,MQTTTimeout,SQLServer,SQLPort,SQLDatabase,SQLUser,SQLPass,PushOverToken,PushOverUser,MapGPS1Lat,MapGPS1Long,MapGPS2Lat,MapGPS2Long,MapLocation1X,MapLocation1Y,MapLocation2X,MapLocation2Y,MapSizeX,MapSizeY

DiscSilentFirstTrigger=20
DiscSilentSecondTrigger=40

TimeStampOffset=946684800 # Difference between Linux and ESP8266 epochs
TimeMargin=60 # how much time +/- current time to permit messages to age

BoostBonusDivider=10 # This is 10% by default. 

def get_map_y(lat,lat1,lat2,pixel1y,pixel2y,mapwidth):
    LatDiff=lat2-lat1
    YDiff=pixel2y - pixel1y
    LatPerPixel= LatDiff / YDiff
    BaseLat= lat1 - (pixel1y * LatPerPixel)

    LatDiff=BaseLat - lat
    Y=int(abs(LatDiff / LatPerPixel))
    if Y > mapwidth:
        Y=mapwidth
        print("Outside of map calculated size")
    return Y


def get_map_x(long,long1,long2,pixel1x,pixel2x,mapheight):
    LongDiff=long2-long1
    XDiff=pixel2x - pixel1x
    LongPerPixel= LongDiff / XDiff
    BaseLong= long1 - (pixel1x * LongPerPixel)

    LatDiff=BaseLong - long
    X=int(abs(LatDiff / LongPerPixel))
    if X > mapheight:
        X=mapheight
        print("Outside of map calculated size")
    return X



def get_db_connectionpool():
    try:
        pool = mariadb.ConnectionPool(
            user=SQLUser,
            password=SQLPass,
            host=SQLServer,
            port=SQLPort,
            database=SQLDatabase,
            pool_name="DiscWorldSrv",
            pool_size=10
        )
    except mariadb.Error as e:
        print(f"Error connecting to the database: {e}")
        sys.exit(1)
    return pool


def get_db_connection(pool):
    try:
        dbConn=pool.get_connection()
        connectionvalid=True
        try:
            dbConn.ping()
        except:
            connectionvalid=False
        if connectionvalid==True:
            return dbConn
        print("DB connection failed ping test")
    except:
        if (pool is not None):
            print("Error getting DB connection from pool.")

    try:
        dbConn = mariadb.connect(
            user=SQLUser,
            password=SQLPass,
            host=SQLServer,
            port=SQLPort,
            database=SQLDatabase
        )
        return dbConn
    except mariadb.Error as e:
        print(f"Error connecting to the database: {e}")
    return None


def game_controller(broker,brokerport,MQTTusername,MQTTpassword,gameStartTime,gameEndTime,ExistingGameStatus):
    time.sleep(5)
    try:
        client = mqtt.Client(client_id='GameController', protocol=mqtt.MQTTv5)
        client.username_pw_set(MQTTusername,MQTTpassword)
        client.connect(broker, brokerport, 60)
        client.loop_start()
    except BaseException as e:
        print(f"Error connecting to MQTT: {e}")
        return
    print("DBConn call 1")
    gcconn=get_db_connection(None)

    GameStatus=ExistingGameStatus
    try:
        if datetime.datetime.now()<gameStartTime:
            # Game not yet started
            GameStatus=1
        elif datetime.datetime.now()<gameEndTime:
            GameStatus=2
        else:
            GameStatus=3
    except:
        pass
    payloaddict={"gamestatus": GameStatus}
    client.publish("/controller/from/gamestatus",json.dumps(payloaddict),0,False)
    unresponsiveLoopCount=0
    while True:
        gcconnectionvalid=True
        try:
            gcconn.ping()
        except:
            gcconnectionvalid=False
        if (gcconnectionvalid==False):
            try:
                gcconn.close()
            except:
                print("Failed DB Connection close errored")
                print("DBConn call 2")
                gcconn=get_db_connection(None)

        NewGameStatus=GameStatus
        try:    
            if datetime.datetime.now()<gameStartTime:
                # Game not yet started
                NewGameStatus=1
            elif datetime.datetime.now()<gameEndTime:
                NewGameStatus=2
            else:
                NewGameStatus=3
        except:
            pass
        if GameStatus!=NewGameStatus:
            GameStatus=NewGameStatus
            payloaddict={"gamestatus": GameStatus}
            client.publish("/controller/from/gamestatus",json.dumps(payloaddict),0,False)
        unresponsiveLoopCount+=1
        if unresponsiveLoopCount>5: # should be 20
            unresponsiveLoopCount=0
            payloaddict={"gamestatus": GameStatus}
            client.publish("/controller/from/checkalive",json.dumps(payloaddict),0,False)
            processtasks(client,gcconn)
            checkmaxholdtimes(client,gcconn)
            payloaddict={"gamestatus": GameStatus}
        client.publish("/controller/from/updatescores",json.dumps(payloaddict),0,False)
        time.sleep(5)

def checkmaxholdtimes(client,conn):
    try:
        mycurr=conn.cursor()
        mycurr.execute("SELECT discid,capturetime,maxholdtime FROM discs WHERE maxholdtime>0 AND ownerteam>0 AND currentstatus=1")
        for (discid,capturetime,maxholdtime) in mycurr:
            dt=datetime.datetime.now() - capturetime
            if dt.seconds > maxholdtime:
                client.publish("/controller/from/endowner",discid,0,False)
        mycurr.close()
    except:
        print("Error when checking max hold times.")

def processtasks(client,conn):
    try:
        mycurr=conn.cursor()
        mycurr.execute("SELECT taskID,frequency,lastexecuted,tasktime,taskactivity FROM tasks")
        for (taskID,frequency,lastexecuted,tasktime,taskactivity) in mycurr:
            executetask=False
            if frequency==1: # daily after this time
                nowtime=datetime.datetime.now().time()
                nowdate=datetime.datetime.now().date()
                if nowtime>tasktime: # we are after the task time
                    if nowdate!=lastexecuted.date():
                        executetask=True
            if frequency==2: # every x interval
                dt=datetime.timedelta(hours=tasktime.hour, minutes=tasktime.minute)
                if lastexecuted+dt < datetime.datetime.now():
                    executetask=True
            if executetask:
                mycur2=conn.cursor()
                mycur2.execute("UPDATE tasks SET lastexecuted=? WHERE taskID=?",(datetime.datetime.now(),taskID))
                conn.commit()
                mycur2.close()
                if taskactivity==1: # logout all discs with a score multiplier of more than 1
                    client.publish("/controller/from/endowner","1",0,False)
        mycurr.close()
    except:
        print("Error in process tasks")

def send_pushover_alert(msgtext):
    send_pushover_notification(msgtext,2,"alien")

def send_pushover_notification(msgtext, msgpriority, msgsound):
    try:
        print("Sending Pushover Notification")
        conn = http.client.HTTPSConnection("api.pushover.net:443")
        conn.request("POST", "/1/messages.json",
        urllib.parse.urlencode({
            "token": PushOverToken,
            "user": PushOverUser,
            "message": msgtext,
            "priority": msgpriority,
            "sound": msgsound,
            "retry": 30,
            "expire": 7200,
        }), { "Content-type": "application/x-www-form-urlencoded" })
        gr=conn.getresponse()
        print("Pushover Response: " + str(gr))
    except:
        print("Error sending pushover message")

def tamper_detected(client,msg,detail):
    print("Tamper Detected: " + detail)
    client.publish("/alert/hack","Path: " + str(msg.topic) + " Reason: " + detail + " Payload: " + str(msg.payload),0,False)
    

def send_disc_message(client,dbConn,topic,payloaddict,targetDisc):
    mycurr=dbConn.cursor()
    mycurr.execute("SELECT serverkey FROM discs WHERE discid=?",(targetDisc,))
    payloaddict["timestamp"]=int(time.time()-TimeStampOffset)
    payload=json.dumps(payloaddict, default=str)
    destination="/discs/to/" + targetDisc + "/" + topic
    for (serverkey,) in mycurr:
        myHash=hashlib.sha256(serverkey[:8].encode('utf-8'))
        myHash.update(payload.encode('utf-8'))
        myHash.update(serverkey[9:13].encode('utf-8'))
        myHash.update(destination.encode('utf-8'))
        myHash.update(serverkey[14:].encode('utf-8'))
        payload=payload+binascii.hexlify(myHash.digest()).decode('utf-8')
        client.publish(destination,payload,0,False)
    mycurr.close()

def validate_disc_message(msg,sourceDisc,dbConn):
    validmessage=False
    mycurr=dbConn.cursor()
    mycurr.execute("SELECT clientkey FROM discs WHERE discid=?",(sourceDisc,))
    for (clientkey,) in mycurr:
        myHash=hashlib.sha256(clientkey[:11].encode())
        myHash.update(msg.topic.encode())
        myHash.update(clientkey[20:].encode())
        myHash.update(str(msg.payload)[2:-65].encode())
        #myHash.update(msg.payload[2:-65].encode())
        myHash.update(clientkey[12:19].encode())
        strHash=binascii.hexlify(myHash.digest()).decode('utf-8')
        msgHash=str(msg.payload)[-65:-1]
        if msgHash==strHash:
            validmessage=True
    mycurr.close()
    return validmessage

def recordcapturefinish(dbConn,sourceDisc):
    mycurr=dbConn.cursor()
    mycurr.execute("SELECT capturetime,scoremultiplier,owner FROM discs WHERE discid=?",(sourceDisc,))
    discinfo=mycurr.fetchone()
    capturetime=discinfo[0]
    captureendtime=datetime.datetime.now()
    scoremultiplier=discinfo[1]
    existingowner=discinfo[2]
    junkvar=mycurr.fetchall()
    if existingowner is None:
        mycurr.close()
        return
    captureduration=(captureendtime-capturetime).total_seconds()
    adjustedscore=captureduration * scoremultiplier
    mycurr.execute("UPDATE discs SET capturetime=now(),owner=NULL,ownerteam=NULL,boostcount=0 WHERE discid=?",(sourceDisc,))
    mycurr.execute("UPDATE discvisits SET totalheldduration=totalheldduration+? WHERE playerid=? AND discid=?",(captureduration,existingowner,sourceDisc))
    logtype=1
    if scoremultiplier>1:
        logtype=4
    mycurr.execute("INSERT INTO playerscorelog (playertoken,source,score,discid) VALUES (?,?,?,?)",(existingowner,logtype,adjustedscore,sourceDisc))
    mycurr.execute("UPDATE discvisits SET maxheldduration=? WHERE playerid=? AND discid=? AND maxheldduration<?",(captureduration,existingowner,sourceDisc,captureduration))
    mycurr.execute("UPDATE players SET totalduration=totalduration+? WHERE token=?",(adjustedscore,existingowner))
    mycurr.execute("UPDATE players SET maxduration=?, longestheld=? WHERE token=? AND maxduration<?",(captureduration,sourceDisc,existingowner,captureduration))
    dbConn.commit()

    mycurr.execute("SELECT playertoken,boosttimestamp FROM discboosts WHERE discid=?",(sourceDisc,))
    allboosts=mycurr.fetchall()
    for (playertoken,boosttimestamp) in allboosts:
        boostduration=(captureendtime-boosttimestamp).total_seconds()
        boostvalue=round((boostduration / BoostBonusDivider),0)
        mycurr.execute("UPDATE players SET totalduration=totalduration+? WHERE token=?",(boostvalue,playertoken))
        boostlogtype=logtype+1
        mycurr.execute("INSERT INTO playerscorelog (playertoken,source,score,discid) VALUES (?,?,?,?)",(playertoken,boostlogtype,boostvalue,sourceDisc))

    mycurr.execute("DELETE FROM discboosts WHERE discid=?",(sourceDisc,))
    dbConn.commit()
    mycurr.close()

def get_spare_name(dbConn):
    try:
        mycurr=dbConn.cursor()
        mycurr.execute("SELECT id,gamename FROM availablenames WHERE used=0 ORDER BY id LIMIT 1")
        namerecord=mycurr.fetchone()
        junkvar=mycurr.fetchall()
        mycurr.execute("UPDATE availablenames SET used=1 WHERE id=?",(namerecord[0],))
        dbConn.commit()
        mycurr.close()
        playername="[" + namerecord[1] + "]"
        return playername
    except:
        return ""

def sendstatus(client,dbConn,targetDisc):
    mycurr=dbConn.cursor()
    mycurr.execute("SELECT gamestatus,gamestart,gameend,winningteamID FROM systemcfg")
    f=mycurr.fetchone()
    junkvar=mycurr.fetchall()
    gamestatus=f[0]
    gamestarttime=f[1]
    gameendtime=f[2]
    winningteamID=f[3]

    mycurr.execute("SELECT id,dischue,soundoffset FROM teams")
    TeamList=""
    for (teamID,teamHue,soundOffset) in mycurr:
        TeamEntry=(("0" + hex(teamID)[2:])[-2:] + ("000" + hex(teamHue)[2:])[-4:] + ("0" + hex(soundOffset)[2:])[-2:] ).ToUpper()
        TeamList=TeamList + TeamEntry
    mycurr.execute("SELECT name,soundmode,daytimevolume,nighttimevolume,currentstatus,owner,ownerteam,idleRFIDgap,idleAnimationDelay,idleDiagInterval,idleAliveInterval,boostcount FROM discs WHERE discid=?",(targetDisc,))
    f=mycurr.fetchone()
    junkvar=mycurr.fetchall()
    soundmode=f[1]
    myvolume=30
    if soundmode==0:
        myvolume=f[2]
    elif soundmode==1:
        currenttime=datetime.datetime.now().time()
        if currenttime.hour>=21 or currenttime.hour < 9:
            myvolume=f[3]
        else:
            myvolume=f[2]
    elif soundmode==2:
        currenttime=datetime.datetime.now().time()
        if currenttime.hour>=23 or currenttime.hour < 9:
            myvolume=f[3]
        else:
            myvolume=f[2]
    else:
        currenttime=datetime.datetime.now().time()
        if currenttime.hour>1 and currenttime.hour < 9:
            myvolume=f[3]
        else:
            myvolume=f[2]
    earlycheckin=0
    if datetime.datetime.now()<gameendtime:
        td=gameendtime-datetime.datetime.now()
        if td.seconds<340:
            earlycheckin=td.seconds
    if datetime.datetime.now()<gamestarttime:
        td=gamestarttime-datetime.datetime.now()
        if td.seconds<340:
            earlycheckin=td.seconds
    earlycheckin=earlycheckin // 3
    if earlycheckin<0:
        earlycheckin=0
    if (f[5] is None):
        owner=""
        ownerteam=-1
    else:
        owner=f[5]
        ownerteam=f[6]
    payloaddict={"gamestatus": gamestatus, "gamestarttime": gamestarttime, "gameendtime": gameendtime, "name": f[0], "volume": myvolume, "currentstatus": f[4], "winningTeamID": winningteamID, "earlycheckin": earlycheckin, "owner": owner, "ownerteam": ownerteam, "idleRFIDgap": f[7], "idleAnimationDelay": f[8], "idleDiagInterval": f[9], "idleAliveInterval": f[10], "boostcount": f[11], "teams": TeamList}
    send_disc_message(client,dbConn,"game",payloaddict,targetDisc)
    mycurr.close()
    
def sendowner(client,dbConn,targetDisc):
    mycurr=dbConn.cursor()
    mycurr.execute("SELECT owner,ownerteam FROM discs WHERE discid=?",(targetDisc,))
    f=mycurr.fetchone()
    junkvar=mycurr.fetchall()
    if (f is not None):
        if (f[0] is None):
            payloaddict={"teamID": -1, "playerID": ""}
        else:
            payloaddict={"teamID": f[1], "playerID": f[0]}
        send_disc_message(client,dbConn,"owner",payloaddict,str(targetDisc))
    else:
        print("Error retrieving disc " + targetDisc + " using the SendOwner function.")
    mycurr.close()

def hasparams(client,msg,payload,requiredparams):
    allexist=True
    for x in requiredparams:
        if not x in payload:
            allexist=False
            print("Missing " + x)
            tamper_detected(client,msg,"Missing required parameters")
    return allexist

def cmd_disc_init(client,msg,sourceDisc,payload,dbConn):
    if not hasparams(client,msg,payload,["serialnumber","timestamp"]):
        return
    if payload["serialnumber"]!=sourceDisc:
        tamper_detected(client,msg,"Serial number and message location do not match")
        return    
    mycurr=dbConn.cursor()
    mycurr.execute("SELECT serverregkey,serverbasekey,discbasekey FROM systemcfg")
    srvregkey=""
    srvbasekey=""
    discbasekey=""
    for (a,b,c) in mycurr:
        srvregkey=a
        srvbasekey=b
        discbasekey=c
    mycurr.close()
    if srvregkey=="" or srvbasekey=="" or discbasekey=="":
        print("Not all required keys configured.  Aborting.")
        return
    if len(srvregkey)<30 or len(srvbasekey)<30 or len(discbasekey)<30:
        print("One or more keys are too short.  Aborting.")
        return

    # Make sure the message has a valid hash calculated for it
    myHash=hashlib.sha256(srvregkey[:15].encode())
    myHash.update(msg.topic.encode())
    myHash.update(srvregkey[15:20].encode())
    myHash.update(str(msg.payload)[2:-65].encode())
    myHash.update(srvregkey[20:30].encode())
    strHash=binascii.hexlify(myHash.digest()).decode('utf-8')
    if strHash!=str(msg.payload)[-65:-1]:
        tamper_detected(client,msg,"Hash mismatch.")
        return

    timestamp=int(float(payload["timestamp"])) + TimeStampOffset
    timestampdt=datetime.datetime.fromtimestamp(timestamp)
    keytimestamp=float(payload["timestamp"])
    srvkey=srvbasekey[:10] + payload["timestamp"][2:] + srvbasekey[11:19] + str(msg.payload)[-6:-1]
    srvkey=srvkey[:50]
    disckey=discbasekey[-12:] + str(msg.payload)[-11:-7] + payload["timestamp"][1:] + discbasekey[5:14]
    disckey=disckey[:50]

    print("Registration of disc authorised.")
    mycurr=dbConn.cursor()
    mycurr.execute("SELECT discid FROM discs WHERE discid=?",(sourceDisc,))
    newrecord=True
    for (x,) in mycurr:
        newrecord=False
    mycurr.close()
    mycurr=dbConn.cursor()
    if newrecord==True:
        print("creating new record")
        mycurr.execute("INSERT INTO discs (discid,name,lastmsgtime,serverkey,clientkey,currentstatus) VALUES (?,?,?,?,?,1)",(sourceDisc,sourceDisc,timestampdt,srvkey,disckey))
    else:
        print("updating existing record")
        mycurr.execute("UPDATE discs SET lastmsgtime=?,serverkey=?,clientkey=?,currentstatus=1 WHERE discid=?",(timestampdt,srvkey,disckey,sourceDisc))
    dbConn.commit()
    print("Disc registration saved.")
    confirmationdict={"result": "Success"}
    send_disc_message(client,dbConn,"initack",confirmationdict,sourceDisc)
    print("Registration acknowledgement sent")
    mycurr.close()

def cmd_disc_flatbattery(client,msg,sourceDisc,payload,dbConn):
    if not hasparams(client,msg,payload,["batteryvoltage","timestamp"]):
        return
    mycurr=dbConn.cursor()
    timestamp=int(float(payload["timestamp"])) + TimeStampOffset
    timestampdt=datetime.datetime.fromtimestamp(timestamp)
    batteryvoltage=int(payload["batteryvoltage"])
    mycurr.execute("UPDATE discs SET lastalivecheck=?,batteryvoltage=?,lastmsgtime=?,currentstatus=5 WHERE discid=?",(datetime.datetime.now(),batteryvoltage,timestampdt,sourceDisc))
    dbConn.commit()

    mycurr.execute("SELECT owner,name FROM discs WHERE discid=?",(sourceDisc,))
    f=mycurr.fetchone()
    junkvar=mycurr.fetchall()
    if (f[0] is not None):
        if len(f[0])>0:
            recordcapturefinish(dbConn,sourceDisc)
    client.publish("/alert/batteryflag/" + sourceDisc, "Disc " + f[1] + " is offline due to flat battery.")
    mycurr.close()


def cmd_disc_adminoffline(client,msg,sourceDisc,payload,dbConn):
    if not hasparams(client,msg,payload,["timestamp"]):
        return
    mycurr=dbConn.cursor()
    timestamp=int(float(payload["timestamp"])) + TimeStampOffset
    timestampdt=datetime.datetime.fromtimestamp(timestamp)
    mycurr.execute("UPDATE discs SET currentstatus=?,lastalivecheck=?,lastmsgtime=? WHERE discid=?",(6,datetime.datetime.now(),timestampdt,sourceDisc))
    dbConn.commit()

    mycurr.execute("SELECT owner,name FROM discs WHERE discid=?",(sourceDisc,))
    f=mycurr.fetchone()
    junkvar=mycurr.fetchall()
    if (f[0] is not None):
        if len(f[0])>0:
            recordcapturefinish(dbConn,sourceDisc)
    try:
        discName=f[1]
    except:
        discName=sourceDisc
    client.publish("/alert/adminoffline/" + sourceDisc, "Disc " + discName + " is offline due to admin command.")
    mycurr.close()

def cmd_disc_adminonline(client,msg,sourceDisc,payload,dbConn):
    if not hasparams(client,msg,payload,["timestamp"]):
        return
    mycurr=dbConn.cursor()
    timestamp=int(float(payload["timestamp"])) + TimeStampOffset
    timestampdt=datetime.datetime.fromtimestamp(timestamp)
    mycurr.execute("UPDATE discs SET currentstatus=?,lastalivecheck=?,lastmsgtime=? WHERE discid=?",(1,datetime.datetime.now(),timestampdt,sourceDisc))
    dbConn.commit()
    mycurr.execute("SELECT owner,name FROM discs WHERE discid=?",(sourceDisc,))
    f=mycurr.fetchone()
    junkvar=mycurr.fetchall()
    try:
        discName=f[1]
    except:
        discName=sourceDisc
    client.publish("/alert/adminonline/" + sourceDisc, "Disc " + discName + " is online due to admin command.")
    mycurr.close()

def cmd_disc_alive(client,msg,sourceDisc,payload,dbConn):
    if not hasparams(client,msg,payload,["picfirmware","discmicropython","discfirmware","batteryvoltage","wifivoltage","diagresult","timestamp"]):
        return
    lowbatterylower=555
    lowbatteryupper=565
    mycurr=dbConn.cursor()
    timestamp=int(float(payload["timestamp"])) + TimeStampOffset
    try:
        diagresult=int(payload["diagresult"])
    except:
        diagresult=-1
    timestampdt=datetime.datetime.fromtimestamp(timestamp)
    batteryvoltage=int(payload["batteryvoltage"])
    mycurr.execute("INSERT INTO discstatushistory (discid,statustimestamp,batteryvoltage,diagnosticvalue) VALUES (?,?,?,?)",(sourceDisc,datetime.datetime.now(),batteryvoltage,diagresult))
    if batteryvoltage>0:
        print("CheckinB: " + str((datetime.datetime.now(),batteryvoltage,timestampdt,sourceDisc)))
        mycurr.execute("UPDATE discs SET lastalivecheck=?,batteryvoltage=?,lastmsgtime=?,diagnosticresult=? WHERE discid=?",(datetime.datetime.now(),batteryvoltage,timestampdt,diagresult,sourceDisc))
    else:
        print("Checkin: " + str((datetime.datetime.now(),batteryvoltage,timestampdt,sourceDisc)))
        mycurr.execute("UPDATE discs SET lastalivecheck=?,lastmsgtime=?,diagnosticresult=? WHERE discid=?",(datetime.datetime.now(),timestampdt,diagresult,sourceDisc))
    if len(payload["picfirmware"])>0:
        print("FWRpt: "+ str((payload["picfirmware"],payload["discfirmware"],payload["discmicropython"],sourceDisc)))
        mycurr.execute("UPDATE discs SET picfirmwareversion=?,discfirmwareversion=?,micropythonversion=?,firmwareversioncheck=now() WHERE discid=?",(payload["picfirmware"],payload["discfirmware"],payload["discmicropython"],sourceDisc))
    if "network" in payload:
        mycurr.execute("UPDATE discs SET network=? WHERE discid=?",(payload["network"],sourceDisc))
        
    mycurr.execute("UPDATE discs SET currentstatus=1 WHERE discid=? AND (currentstatus=2 OR currentstatus=3 OR currentstatus=5)",(sourceDisc,))
    if mycurr.rowcount is not None:
        if mycurr.rowcount>0:
            client.publish("/alert/online/" + sourceDisc,"Disc " + sourceDisc + " online " + str(datetime.datetime.now()),0,False)
    if batteryvoltage<lowbatterylower:
        mycurr.execute("UPDATE discs SET lowbatteryalert=1 WHERE discid=? AND lowbatteryalert=0",(sourceDisc,))
        if mycurr.rowcount is not None:
            if mycurr.rowcount>0:
                mycurr.execute("SELECT name FROM discs WHERE discid=?",(sourceDisc,))
                f=mycurr.fetchone()
                junkvar=mycurr.fetchall()
                client.publish("/alert/batterylow/" + sourceDisc,"Disc " + f[0] + " low battery " + str(datetime.datetime.now()),0,False)
    if batteryvoltage>lowbatteryupper:
        mycurr.execute("UPDATE discs SET lowbatteryalert=0 WHERE discid=? AND lowbatteryalert=1",(sourceDisc,))
    print("Alive check-in")
    dbConn.commit()
    mycurr.execute("SELECT updaterequired FROM discs WHERE discid=?",(sourceDisc,))
    f=mycurr.fetchone()
    junkvar=mycurr.fetchall()
    if f[0]==1:
        mycurr.execute("UPDATE discs SET updaterequired=0 WHERE discid=?",(sourceDisc,))
        dbConn.commit()
        mycurr.execute("SELECT filename,downloadurl FROM firmwarefiles")
        fwfiles=mycurr.fetchall()
        urls={}
        filenames=""
        for (filename,url) in fwfiles:
            if str(filenames)=="":
                filenames=(filename,)
            else:
                filenames=filenames + (filename,)
            urls[filename]=url
        if len(filenames)>0:
            payloaddict={"files": filenames, "urls": urls}
            send_disc_message(client,dbConn,"updatewifi",payloaddict,sourceDisc)
    payloaddict={}
    mycurr.close()
    sendstatus(client,dbConn,sourceDisc)     
    #send_disc_message(client,dbConn,"aliveack",payloaddict,sourceDisc)
    try:
      with open(sourceDisc + ".log","a") as f:
          f.write(str(datetime.datetime.now()) + "," + str(batteryvoltage) + "," + format(diagresult,'b') + "\n")
    except:
        pass

def cmd_disc_tampertrip(client,msg,sourceDisc,payload,dbConn):
    mycurr=dbConn.cursor()
    mycurr.execute("SELECT owner,name FROM discs WHERE discid=?",(sourceDisc,))
    f=mycurr.fetchone()
    junkvar=mycurr.fetchall()
    if (f[0] is not None):
        if len(f[0])>0:
            recordcapturefinish(dbConn,sourceDisc)
    mycurr.execute("UPDATE discs SET currentstatus=4 WHERE discid=?",(sourceDisc,))
    tamper_detected(client,msg,"Tamper detection alert from disc " + f[1])
    dbConn.commit()
    mycurr.close()

def recorddiscvisit(dbConn,visitedDisc,playertoken):
    mycurr=dbConn.cursor()
    mycurr.execute("SELECT visitbonus,firstvisitbonus FROM systemcfg")
    bonuses=mycurr.fetchone()
    visitbonus=bonuses[0]
    firstvisitbonus=bonuses[1]
    tmp=mycurr.fetchall()
    
    mycurr.execute("SELECT totalvisits FROM discvisits WHERE discid=? AND playerid=?",(visitedDisc,playertoken))
    tmp=mycurr.fetchall()
    if mycurr.rowcount==1:
        # Has previously visited this one
        mycurr.execute("UPDATE discvisits SET totalvisits=totalvisits+1 WHERE discid=? AND playerid=?",(visitedDisc,playertoken))
        mycurr.execute("UPDATE players SET lastvisited=?, totalvisits=totalvisits+1 WHERE token=?",(visitedDisc,playertoken))
        if visitbonus>0:
            mycurr.execute("UPDATE players SET totalduration=totalduration+? WHERE token=?",(visitbonus,playertoken))
            mycurr.execute("INSERT INTO playerscorelog (playertoken,source,score,discid) VALUES (?,3,?,?)",(playertoken,visitbonus,visitedDisc))
    else:
        mycurr.execute("INSERT INTO discvisits (discid,playerid,totalvisits) values (?,?,1)",(visitedDisc,playertoken))
        mycurr.execute("UPDATE players SET lastvisited=?, totalvisits=totalvisits+1,uniquevisits=uniquevisits+1  WHERE token=?",(visitedDisc,playertoken))        
        if firstvisitbonus>0:
            mycurr.execute("UPDATE players SET totalduration=totalduration+? WHERE token=?",(firstvisitbonus,playertoken))
            mycurr.execute("INSERT INTO playerscorelog (playertoken,source,score,discid) VALUES (?,7,?,?)",(playertoken,firstvisitbonus,visitedDisc))
    dbConn.commit()
    mycurr.close()


def cmd_disc_location(client,msg,sourceDisc,payload,dbConn):
    if not hasparams(client,msg,payload,["location","timestamp"]):
        return
    if payload["location"]=="":
        mylocation=get_admin_location(dbConn)
    else:
        mylocation=payload["location"]
    mycurr=dbConn.cursor()
    loc=mylocation.split(",")
    if len(loc)==2:
        GPSy=float(loc[0])
        GPSx=float(loc[1])
        MapY=get_map_y(GPSy,MapGPS1Lat,MapGPS2Lat,MapLocation1Y,MapLocation2Y,MapSizeY)
        MapX=get_map_x(GPSx,MapGPS1Long,MapGPS2Long,MapLocation1X,MapLocation2X,MapSizeX)
    else:
        MapY=-1
        MapX=-1
    if MapY==-1 or MapX==-1:
        mycurr.execute("UPDATE discs SET gpslocation=? WHERE discid=?",(mylocation,sourceDisc))
    else:
        mycurr.execute("UPDATE discs SET gpslocation=?,mapx=?,mapy=? WHERE discid=?",(mylocation,MapX,MapY,sourceDisc))
    dbConn.commit()
    mycurr.close()


def get_admin_location(dbConn):
    mycurr=dbConn.cursor()
    mycurr.execute("SELECT currentlocation FROM admininfo")
    admininfo=mycurr.fetchone()
    adminlocation=admininfo[0]
    junkvar=mycurr.fetchall()
    mycurr.close()
    return adminlocation

def cmd_disc_inplaceswap(client,msg,sourceDisc,payload,dbConn):
    if not hasparams(client,msg,payload,["timestamp"]):
        return
    mycurr=dbConn.cursor()
    mycurr.execute("SELECT discid FROM discs WHERE currentstatus=6 ORDER BY lastmsgtime DESC")
    olddiscinfo=mycurr.fetchone()
    olddisc=olddiscinfo[0]
    junkvar=mycurr.fetchall()
    if len(olddisc)>0:
        # Move the visit history of the new disc to holding
        mycurr.execute("UPDATE discvisits SET discid='HOLDING' WHERE discid=?",(sourceDisc,))
        # Move the vists for the old disc to the new disc
        mycurr.execute("UPDATE discvisits SET discid=? WHERE discid=?",(sourceDisc,olddisc))
        dbConn.commit()
        # Move the vists for the NEW disc to the OLD disc
        mycurr.execute("UPDATE discvisits SET discid=? WHERE discid='HOLDING'",(olddisc,))
        dbConn.commit()
        mycurr.execute("UPDATE discs td JOIN (SELECT discid,name,discoveredby,discoveredtime,soundmode,daytimevolume,nighttimevolume,mapx,mapy,scoremultiplier,maxholdtime,gpslocation FROM discs WHERE discid=?) sd " + \
        "SET td.name=sd.name,td.discoveredby=sd.discoveredby,td.discoveredtime=sd.discoveredtime,td.soundmode=sd.soundmode,td.daytimevolume=sd.daytimevolume,td.mapx=sd.mapx,td.mapy=sd.mapy," + \
        "td.scoremultiplier=sd.scoremultiplier,td.maxholdtime=sd.maxholdtime,td.gpslocation=sd.gpslocation,td.currentstatus=1 WHERE td.discid=?",(olddisc,sourceDisc))
        mycurr.execute("UPDATE discs SET name='OFFLINE-' + name WHERE discid=?",(olddisc,))
        dbConn.commit()
        payloaddict={"olddisc": olddisc}
        send_disc_message(client,dbConn,"swapsuccess",payloaddict,sourceDisc)
    else:
        payloaddict={"olddisc": ""}
        send_disc_message(client,dbConn,"swapfailed",payloaddict,sourceDisc)
    mycurr.close()

def cmd_disc_query(client,msg,sourceDisc,payload,dbConn):
    if not hasparams(client,msg,payload,["query","timestamp"]):
        return
    if payload["query"]=="s":
        sendstatus(client,dbConn,sourceDisc)
    if payload["query"]=="o":
        sendowner(client,dbConn,sourceDisc)

def cmd_disc_registerplayer(client,msg,sourceDisc,payload,dbConn):
    if not hasparams(client,msg,payload,["cardtoken","teamID","timestamp"]):
        return
    print("Processing new player registration")
    mycurr=dbConn.cursor()
    mytoken=payload["cardtoken"]
    mycurr.execute("SELECT p.team FROM players p WHERE token=?",(mytoken,))
    playerExists=False
    for (teamID,) in mycurr:
        print("Player exists already on team " + str(teamID))
        playerExists=True
    if playerExists:
        payloaddict={"playerID": mytoken}
        send_disc_message(client,dbConn,"regfailed",payloaddict,sourceDisc)
        return
    print("Registering new player now")
    mycurr.execute("SELECT codename,emfvisit,mchvisit,cccvisit FROM previousplayers WHERE token=?",(mytoken,))
    playername=""
    bonuscount=0
    for (codename,emfvisit,mchvisit,cccvisit) in mycurr:
        playername=codename
        bonuscount+=emfvisit
        bonuscount+=mchvisit
        bonuscount+=cccvisit
    if (len(playername)==0):
        playername=get_spare_name(dbConn)
    else:
        mycurr.execute("UPDATE availablenames SET used=1 WHERE gamename=?",(playername,))
    if playername=="":
        playername=mytoken
    if ("cardtype" in payload):
        cardtype=payload["cardtype"]
    else:
        cardtype=0
    if (bonuscount>0):
        mycurr.execute("SELECT previousplayerbonus FROM systemcfg")
        f=mycurr.fetchone()
        junkvar=mycurr.fetchall()
        playerbonus=f[0] * bonuscount
    else:
        playerbonus=0
    mycurr.execute("INSERT INTO players (token,team,playername,cardtype,totalduration) VALUES (?,?,?,?,?)",(mytoken,payload["teamID"],playername,cardtype,playerbonus))
    if playerbonus>0:
        mycurr.execute("INSERT INTO playerscorelog (playertoken,source,score) VALUES (?,6,?)",(mytoken,playerbonus))
    dbConn.commit()
    mycurr.close()
    payloaddict={"playerID": mytoken}
    send_disc_message(client,dbConn,"regsuccess",payloaddict,sourceDisc)
    cmd_disc_tokenpresented(client,msg,sourceDisc,payload,dbConn)

def cmd_disc_tokenpresented(client,msg,sourceDisc,payload,dbConn):
    if not hasparams(client,msg,payload,["cardtoken","timestamp"]):
        return
    mycurr=dbConn.cursor()
    mytoken=payload["cardtoken"]
    print("Processing token: " + mytoken)
    mycurr.execute("SELECT p.playername,p.team,p.lastvisited,t.colour,p.language FROM players p LEFT JOIN teams t ON p.team=t.id WHERE token=?",(mytoken,))
    myteam=-1
    for (name,team,lastvisited,colour,language) in mycurr:
        myteam=team
        myname=name
        mylastvisit=lastvisited
        mylanguage=language
    if myteam>-1:
        print("Found player. Name: " + myname)
        discteam=-1
        try:
            mycurr.execute("SELECT ownerteam FROM discs WHERE discid=?",(sourceDisc,))
            f=mycurr.fetchone()
            if (f[0] is not None):
                discteam=f[0]
            junkvar=mycurr.fetchall()
        except:
            print("error getting disc team.")
        booststatus=0
        print("Boost step 1")
        if myteam==discteam:
            print("Boost step 2")
            mycurr.execute("SELECT COUNT(boosttimestamp) FROM discboosts WHERE discid=? AND playertoken=?",(sourceDisc,mytoken))
            boostcount=mycurr.fetchone()[0]
            junkvar=mycurr.fetchall()
            booststatus=1
            print("Boost count var:")
            print(boostcount)
            if boostcount==0:
                print("boosting...")
                booststatus=2
                mycurr.execute("INSERT INTO discboosts (discid,playertoken) VALUES (?,?)",(sourceDisc,mytoken))
                mycurr.execute("UPDATE discs SET boostcount=boostcount+1 WHERE discid=?",(sourceDisc,))
                mycurr.execute("UPDATE players SET boostcount=boostcount+1 WHERE token=?",(mytoken,))
                dbConn.commit()
        payloaddict={"playerID": mytoken, "teamID": myteam, "discteam": discteam, "language": mylanguage, "boostresult": booststatus}

        send_disc_message(client,dbConn,"player",payloaddict,sourceDisc)
        # Only record visits where it is not the same as the last one visited
        if mylastvisit!=sourceDisc:
            recorddiscvisit(dbConn,sourceDisc,mytoken)
    else:
        print("Unknown player")
        payloaddict={"cardtoken": mytoken, "emf": 0, "mch": 0, "ccc":0}
        try:
            mycurr.execute("SELECT emfvisit,mchvisit,cccvisit FROM previousplayers WHERE token=?",(payload["cardtoken"],))
            previousvisits=mycurr.fetchone()
            junkvar=mycurr.fetchall()
            if (previousvisits is not None):
                payloaddict={"cardtoken": mytoken, "emf": previousvisits[0], "mch": previousvisits[1], "ccc": previousvisits[2]}
        except:
            print("Error checking previous visits")
        send_disc_message(client,dbConn,"playerunknown",payloaddict,sourceDisc)
    mycurr.close()

def cmd_disc_capture(client,msg,sourceDisc,payload,dbConn):
    if not hasparams(client,msg,payload,["cardtoken","timestamp"]):
        return
    mycurr=dbConn.cursor()
    mytoken=payload["cardtoken"]
    print("Processing token: " + mytoken)
    mycurr.execute("SELECT p.team,t.colour FROM players p LEFT JOIN teams t on p.team=t.id WHERE token=?",(mytoken,))
    f=mycurr.fetchone()
    junkvar=mycurr.fetchall()
    if f is None:
        tamper_detected(client,msg,"Unknown player token received as a capture")
        return
    myteam=f[0]
    myteamcolour=f[1]

    mycurr.execute("SELECT ownerteam,discoveredby,owner,currentstatus FROM discs WHERE discid=?",(sourceDisc,))
    existingownerteam=-1
    newdiscovery=True
    for (ownerteam,discoveredby,owner,currentstatus) in mycurr:
        existingownerteam=ownerteam
        existingowner=owner
        discstatus=currentstatus
        if (discoveredby is not None):
            if len(discoveredby)>0:
                newdiscovery=False
    if existingownerteam is not None:
        if existingownerteam<0:
            tamper_detected(client,msg,"Unknown disc ID received as a capture.  How could this happen?")
            return
        if existingownerteam==myteam:
            # failed capture - already owned by this team.
            payloaddict={"playerID": mytoken, "reasonID":1, "reason": "Same team."}
            send_disc_message(client,dbConn,"capturefailed",payloaddict,sourceDisc)    
            return
    if discstatus==4:
        tamper_detected(client,msg,"Capture attempts from tamper triggered disc")
        return
    if discstatus==6:
        tamper_detected(client,msg,"Capture attempts from admin-offlined disc")
        return
    mycurr.execute("SELECT gamestatus FROM systemcfg")
    f=mycurr.fetchone()
    junkvar=mycurr.fetchall()
    if f[0]!=2:
        print("Game isn't running right now")
        payloaddict={"playerID": mytoken, "reasonID":2, "reason": "Game not running."}
        send_disc_message(client,dbConn,"capturefailed",payloaddict,sourceDisc)    
        return

    if newdiscovery==True:
        # Record that they've captured the disc and discovered it
        mycurr.execute("UPDATE discs SET owner=?,ownerteam=?,capturetime=now(),discoveredby=?,discoveredtime=now() WHERE discid=?",(mytoken,myteam,mytoken,sourceDisc))
        mycurr.execute("UPDATE players SET discsdiscovered=discsdiscovered+1 WHERE token=?",(mytoken,))
        discovereddict={"discID": sourceDisc, "playerID": mytoken, "teamID": myteam}
        payload=json.dumps(discovereddict)
        client.publish("/scoreboard/to/discdiscovered",payload,0,False)
    else:
        # Need to record the final capture duration for the previous owner.
        # only record the held time if the disc status was normal (1) or offline for a short period (2)
        if discstatus==1 or discstatus==2:
            recordcapturefinish(dbConn,sourceDisc)
        mycurr.execute("UPDATE discs SET owner=?,ownerteam=?,capturetime=now() WHERE discid=?",(mytoken,myteam,sourceDisc))
    catureddict={"discID": sourceDisc, "playerID": mytoken, "teamID": myteam}
    payload=json.dumps(catureddict)
    client.publish("/scoreboard/to/disccaptured",payload,0,False)
    
    # Update the number of captures for the player
    mycurr.execute("SELECT captures FROM discvisits WHERE playerid=? AND discid=?",(mytoken,sourceDisc))
    for (captures,) in mycurr:
        mycaptures=captures
    mycurr.execute("UPDATE discvisits SET captures=captures+1 WHERE playerid=? AND discid=?",(mytoken,sourceDisc))
    if mycaptures==0:
        mycurr.execute("UPDATE players SET uniquecaptures=uniquecaptures+1,totalcaptures=totalcaptures+1 WHERE token=?",(mytoken,))
    else:
        mycurr.execute("UPDATE players SET totalcaptures=totalcaptures+1 WHERE token=?",(mytoken,))
    payloaddict={"teamID": myteam, "playerID": mytoken}
    send_disc_message(client,dbConn,"capturesuccess",payloaddict,sourceDisc)
    dbConn.commit()
    mycurr.close()

def cmd_sys_endboostedcaptures(client,dbConn):
    mycurr=dbConn.cursor()
    mycurr.execute("SELECT discid FROM discs WHERE ownerteam>0 AND scoremultiplier>1")
    boosteddiscs=mycurr.fetchall()
    for (discid,) in boosteddiscs:
        recordcapturefinish(dbConn,discid)
        sendowner(client,dbConn,discid)
    mycurr.close()

def cmd_sys_checkalive(client,dbConn):
    mycurr=dbConn.cursor()
    mycurr.execute("SELECT discid,owner,lastmsgtime,name FROM discs WHERE currentstatus<2 AND TIMESTAMPDIFF(MINUTE,lastmsgtime,now())>?",(DiscSilentFirstTrigger,))
    allsilent=mycurr.fetchall()
    for (discid,owner,lastmsgtime,name) in allsilent:
        client.publish("/alert/offline/" + discid,"Disc " + discid + " " + name + " offline since " + str(lastmsgtime),0,False)
        mycurr.execute("UPDATE discs SET currentstatus=2 WHERE currentstatus<2 AND discid=?",(discid,))
        if owner is not None:
            if len(owner)>0:
                recordcapturefinish(dbConn,discid)
    mycurr.execute("SELECT discid,owner,lastmsgtime,name FROM discs WHERE currentstatus=2 AND TIMESTAMPDIFF(MINUTE,lastmsgtime,now())>?",(DiscSilentSecondTrigger,))
    allsilent=mycurr.fetchall()
    for (discid,owner,lastmsgtime,name) in allsilent:
        client.publish("/alert/offlineextended/" + discid,"Disc " + discid + " " + name + " offline since " + str(lastmsgtime),0,False)        
        mycurr.execute("UPDATE discs SET currentstatus=3 WHERE currentstatus=2 AND discid=?",(discid,))
        if owner is not None:
            if len(owner)>0:
                recordcapturefinish(dbConn,discid)
    dbConn.commit()
    mycurr.close()

def resetgame(dbConn):
    print("Resetting game...")
    mycurr=dbConn.cursor()
    mycurr.execute("DELETE FROM discboosts")
    mycurr.execute("DELETE FROM discvisits")
    mycurr.execute("DELETE FROM playerscorelog")
    mycurr.execute("DELETE FROM players")
    dbConn.commit()
    
    mycurr.execute("UPDATE discs SET owner=NULL, ownerteam=NULL, capturetime=NULL,discoveredby=NULL,discoveredtime=NULL, boostcount=0")
    mycurr.execute("UPDATE systemcfg SET winningteamID=NULL")
    mycurr.execute("UPDATE availablenames SET used=0")
    dbConn.commit()
    mycurr.close()
    print("Game wiped.")

def cmd_sys_updategamestatus(client,dbConn,payload,gamestatus):
    payloaddict=json.loads(payload)
    receivedGameStatus=payloaddict["gamestatus"]
    if gamestatus!=receivedGameStatus:
        mycurr=dbConn.cursor()
        mycurr.execute("UPDATE systemcfg SET gamestatus=?",(receivedGameStatus,))
        dbConn.commit()
        mycurr.execute("SELECT discid,owner FROM discs")
        alldiscs=mycurr.fetchall()
        for (discid,owner) in alldiscs:
            if owner is not None:
                if len(owner)>0 and receivedGameStatus==3: # Game finished and the disc has an owner
                    recordcapturefinish(dbConn,discid)
            sendstatus(client,dbConn,discid)
        if receivedGameStatus==1 and gamestatus==3: # shifting to new game
            resetgame(dbConn)
    return receivedGameStatus

def cmd_sys_updatescores(client,dbConn):
    mycurr=dbConn.cursor()
    # Dump out all the teams
    teamscores={}
    mycurr.execute("SELECT id,teamname,colour FROM teams")
    for (id,teamname,colour) in mycurr:
        payloaddict={"teamid": id, "teamname": teamname, "teamcolour": colour}
        payload=json.dumps(payloaddict)
        client.publish("/scoreboard/to/teams",payload,0,False)
        teamscores[id]=0
    # Game status
    mycurr.execute("SELECT gamestatus,gamestart,gameend FROM systemcfg")
    for (gamestatus,gamestart,gameend) in mycurr:
        payloaddict={"gamestatus": gamestatus, "gamestart": gamestart, "gameend": gameend}
        payload=json.dumps(payloaddict, default=str)
        client.publish("/scoreboard/to/gamestatus",payload,0,False)
    # Collect the player and team scores
    players={}
    mycurr.execute("SELECT token,team,playername,maxduration,totalduration,totalvisits,uniquevisits,totalcaptures,uniquecaptures,discsdiscovered FROM players")
    for (token,team,playername,maxduration,totalduration,totalvisits,uniquevisits,totalcaptures,uniquecaptures,discsdiscovered) in mycurr:
        thisplayer={"token": token, "team": team, "playername": playername, "maxduration": maxduration, "totalduration": totalduration, "totalvisits": totalvisits, 
                    "uniquevisits": uniquevisits, "totalcaptures": totalcaptures, "uniquecaptures": uniquecaptures, "discsdiscovered": discsdiscovered}
        players[token]=thisplayer
        teamscores[team]=teamscores[team]+totalduration
    # send status of all discs that are online
    mycurr.execute("SELECT discid,name,owner,ownerteam,currentstatus,mapx,mapy, TIMESTAMPDIFF(SECOND,capturetime,now()) AS TimeHeld,scoremultiplier FROM discs WHERE currentstatus=1 OR currentstatus=2")    
    for (discid,name,owner,ownerteam,currentstatus,mapx,mapy,timeheld,scoremultiplier) in mycurr:
        payloaddict={"discid": discid, "discname": name, "ownerteam": ownerteam, "mapx": mapx, "mapy": mapy}
        payload=json.dumps(payloaddict)
        client.publish("/scoreboard/to/discsonline",payload,0,False)
        if owner is not None:
            if len(owner)>0:
                players[owner]["totalduration"]=players[owner]["totalduration"]+(timeheld * scoremultiplier)
                teamscores[ownerteam]=teamscores[ownerteam]+(timeheld * scoremultiplier)
    # send list of offline discs
    mycurr.execute("SELECT discid FROM discs WHERE currentstatus<1 OR currentstatus>2")
    for (discid,) in mycurr:
        payloaddict={"discid": discid}
        payload=json.dumps(payloaddict)
        client.publish("/scoreboard/to/discsoffline",payload,0,False)
    payload=json.dumps(teamscores)
    client.publish("/scoreboard/to/teamscores",payload,0,False)
    payload=json.dumps(players)
    client.publish("/scoreboard/to/players",payload,0,False)
    winningteam=0
    winningscore=0
    for teamid in teamscores.keys():
        if teamscores[teamid]>winningscore:
            winningteam=teamid
            winningscore=teamscores[teamid]
    if winningteam>0:
        mycurr.execute("UPDATE systemcfg SET winningteamID=?",(winningteam,))
    else:
        mycurr.execute("UPDATE systemcfg SET winningteamID=NULL")
    dbConn.commit()

def updateownerlocation(payload,dbConn):
    try:    
        if "lat" not in payload:
            return
        if "lon" not in payload:
            return
        if (payload["lat"])=="":
            return
        if (payload["lon"])=="":
            return
        mylocation=str(payload["lat"]) + "," + str(payload["lon"])
        mycurr=dbConn.cursor()
        mycurr.execute("UPDATE admininfo SET currentlocation=?, lastupdated=NOW()",(mylocation,))
        dbConn.commit()
    except:
        print("Error in update owner location.")

def format_token(token):
    try:
        if (len(token)>20):
            return ""
        if (len(token)<8):
            return ""
        tokenvalue=int(token,16)
        if tokenvalue>0:
            newtoken=token + "00000000000000000000"
            newtoken=newtoken[:20]
            return newtoken
    except:
        return ""    

def validate_codename(codename,dbConn):
    try:
        if (codename is None):
            print("C1")
            return False
        if (len(codename)<3):
            print("C2")
            return False
        if (len(codename)>30):
            print("C3")
            return False
        if (re.fullmatch("[a-z0-9A-Z#:;<>()@\.\*\[\]]+",codename) is None):
            print("C4")
            return False
        mycurr=dbConn.cursor()
        mycurr.execute("SELECT token FROM players WHERE playername=?",(codename,))
        f=mycurr.fetchone()
        junkvar=mycurr.fetchall()
        if (f is None):
            print("C5")
            return True
        else:
            print("C6")
            return False
    except Exception as e:
        print(e)
        return False


def cmd_app_setname(client,msg,sourceApp,payload,dbConn):
    try:
        if ("token" in payload and "regpassword" in payload and "name" in payload):
            validrequest=True
            token=format_token(payload["token"])
            if len(token)!=20:
                validrequest=False
                print("Failed on token check")
            regpassword=payload["regpassword"]
            if len(regpassword)>50 or len(regpassword)<3:
                validrequest=False
                print("Failed regpassword check")
            newname=payload["name"]
            if (validate_codename(newname,dbConn)==False):
                validrequest=False
                print("Failed codename check")
            if (validrequest==True):
                # We passed basic checks on the format and code name availability.
                mycurr=dbConn.cursor()
                mycurr.execute("SELECT apppassword,playername,team FROM players WHERE token=?",(token,))
                f=mycurr.fetchone()
                junkvar=mycurr.fetchall()
                if (f is None):
                    payload["reason"]="Validation error"
                    payloadjson=json.dumps(payload)
                    client.publish("/app/to/" + sourceApp + "/setnamefailed",payloadjson,0,False)                     
                else:
                    validpassword=False
                    if f[0] is None:
                        validpassword=True
                    else:
                        if f[0]==regpassword:
                            validpassword=True
                    if (validpassword==True):
                        mycurr.execute("UPDATE players SET playername=?,apppassword=? WHERE token=?",(newname,regpassword,token))
                        dbConn.commit()
                        payloadjson=json.dumps(payload)
                        client.publish("/app/to/" + sourceApp + "/setnameaccepted",payloadjson,0,False) 
                    else:
                        payload["reason"]="Validation error"
                        payloadjson=json.dumps(payload)
                        client.publish("/app/to/" + sourceApp + "/setnamefailed",payloadjson,0,False) 
            else:
                payload["reason"]="Validation error"
                payloadjson=json.dumps(payload)
                client.publish("/app/to/" + sourceApp + "/setnamefailed",payloadjson,0,False) 
    except Exception as e:
        print(e)

def cmd_app_playerdetails(client,msg,sourceApp,payload,dbConn):
    print("player details")
    if ("token" in payload):
        token=format_token(payload["token"])
        if len(token)!=20:
            return
        payloaddict=player_status(token,dbConn)
        if (payloaddict["team"]>0):
            try:
                payloadjson=json.dumps(payloaddict)
                client.publish("/app/to/" + sourceApp + "/player",payloadjson,0,False) 
            except Exception as e:
                print(e)

def is_hex(s):
    try:
        h=int(s,16)
        if (h>0):
            return True
        else:
            return False
    except:
        return False

def player_status(token,dbConn):
    playerdict={}
    try:
        mycurr=dbConn.cursor()
        mycurr.execute("SELECT p.playername,p.team,t.teamname,p.maxduration,p.totalduration," + \
        "p.totalvisits,p.uniquevisits,p.totalcaptures,p.uniquecaptures,p.discsdiscovered,t.rgbcolour " + \
        "FROM players p INNER JOIN teams t on p.team=t.id WHERE p.token=?",(token,))
        player=mycurr.fetchone()
        junkvar=mycurr.fetchall()
        if player is None:
            playerdict["name"]=""
            playerdict["team"]=0
            playerdict["teamname"]=""
        else:
            playerdict["name"]=player[0]
            playerdict["team"]=player[1]
            playerdict["teamname"]=player[2]
            playerdict["maxduration"]=player[3]
            playerdict["totalduration"]=player[4]
            playerdict["totalvisits"]=player[5]
            playerdict["uniquevisits"]=player[6]
            playerdict["totalcaptures"]=player[7]
            playerdict["uniquecaptures"]=player[8]
            playerdict["discsdiscovered"]=player[9]
            playerdict["teamcolour"]=player[10]
            owneddiscscount=0
            mycurr.execute("SELECT capturetime,scoremultiplier,discid,name FROM discs WHERE owner=?",(token,))
            owneddiscs=mycurr.fetchall()
            playerscore=player[4]
            for disc in owneddiscs:
                owneddiscscount+=1
                dt=datetime.datetime.now()-disc[0]
                playerscore+=(dt.seconds * disc[1])
            playerdict["score"]=playerscore
            mycurr.execute("SELECT name FROM discs WHERE owner=?",(token,))
            owneddiscs=mycurr.fetchall()
            playerdict["owneddiscs"]=owneddiscs
            playerdict["owneddiscscount"]=owneddiscscount
            mycurr.execute("SELECT COUNT(discid) FROM discs WHERE discoveredby=?",(token,))
            owncount=mycurr.fetchone()
            junkvar=mycurr.fetchall()
            playerdict["discsdiscovered"]=owncount[0]
            mycurr.execute("SELECT count(discid) FROM discs WHERE currentstatus=1")
            owncount=mycurr.fetchone()
            junkvar=mycurr.fetchall()
            playerdict["onlinediscs"]=owncount[0]
            mycurr.execute("SELECT count(token) FROM players WHERE team>0")
            playercount=mycurr.fetchone()
            junkvar=mycurr.fetchall()
            playerdict["totalplayers"]=playercount[0]
            mycurr.execute("SELECT gamestart,gameend FROM systemcfg")
            gametimes=mycurr.fetchone()
            junkvar=mycurr.fetchall()
            playerdict["gamestart"]=str(gametimes[0])
            playerdict["gameend"]=str(gametimes[1])
            mycurr.execute("SELECT count(discid) FROM discs WHERE lastalivecheck>?",(gametimes[0],))
            owncount=mycurr.fetchone()
            junkvar=mycurr.fetchall()
            playerdict["totaldiscs"]=owncount[0]
            mycurr.execute("SELECT count(discid) FROM discs WHERE currentstatus=1")
            owncount=mycurr.fetchone()
            junkvar=mycurr.fetchall()
            playerdict["onlinediscs"]=owncount[0]
            playerdict["rank"]=0
    except Exception as e:
        print(e)
    return playerdict

def cmd_term_queryplayer(client,msg,token,sourceTerm,dbConn):
    mycurr=dbConn.cursor()
    invalidquery=False
    if len(token)!=20:
        invalidquery=True
    if is_hex(token)!=True:
        invalidquery=True
    if invalidquery==True:
        tamper_detected(client,msg,"Registration Terminal invalid token query player")
    else:
        payloaddict=player_status(token,dbConn)
        payload=json.dumps(payloaddict)
        client.publish("/regterm/to/" + sourceTerm + "/player",payload,0,False)

def cmd_term_updateplayer(client,msg,payload,sourceTerm,dbConn):
    mycurr=dbConn.cursor()
    invalidquery=False
    token=payload["token"]
    if len(token)!=20:
        invalidquery=True
    if is_hex(token)!=True:
        invalidquery=True
    if invalidquery==True:
        tamper_detected(client,msg,"Registration Terminal invalid token update player")
    else:
        newcodename=payload["newname"]
        if (validate_codename(newcodename,dbConn)==True):
            mycurr.execute("UPDATE players SET playername=? WHERE token=?",(newcodename,token))
            dbConn.commit()
            client.publish("/regterm/to/" + sourceTerm + "/ack","Updated",0,False)
        else:
            client.publish("/regterm/to/" + sourceTerm + "/ack","Error or Duplicate",0,False)


def on_connect(client, userdata, flags, reasonCode, properties=None):
    print("Connected with result code " + str(reasonCode))
    client.subscribe(topic="/discs/from/#",qos=2, options=None, properties=None)
    client.subscribe(topic="/scoreboard/from/#",qos=2, options=None, properties=None)
    client.subscribe(topic="/controller/from/#",qos=2, options=None, properties=None)
    client.subscribe(topic="/alert/#",qos=2, options=None, properties=None)
    client.subscribe(topic="owntracks/#",qos=2, options=None, properties=None)
    client.subscribe(topic="/app/from/#",qos=2, options=None, properties=None)
    client.subscribe(topic="/regterm/from/#",qos=2, options=None, properties=None)

def on_message(client, userdata, msg):
    global fw_date
    global fw_version
    global timeTeamScores
    global timePlayerScores
    global MsgCountLastSave
    global WinningTeam
    global gameStatus
    global GameEndTime
    global connpool
    global errorcount
    try:
        if msg.topic[:11]!="/controller":
            print("Received message " + str(msg.topic) + " with message '" + str(msg.payload) + "'")
    except:
        print("Erroring printing received message")    
    errorcount=0
    if (msg.topic[:23]=="owntracks/owntracks/mjt"):
        payload=json.loads(str(msg.payload)[2:-1])
        conn=get_db_connection(connpool)
        updateownerlocation(payload,conn)
        conn.close()

    if (msg.topic[:10]=="/app/from/" and len(msg.payload)<500):
        try:
            (t1,t2,t3,sourceApp,messageType) = msg.topic.split("/")
            #if messageType=="register":
            #    payload=json.loads(str(msg.payload)[2:-1])
            #    cmd_app_register(client,msg,sourceApp,payload,conn)
            if messageType=="setname":
                payload=json.loads(str(msg.payload)[2:-1])
                print("DBConn call 11")
                conn=get_db_connection(connpool)
                cmd_app_setname(client,msg,sourceApp,payload,conn)
                conn.close()
            if messageType=="player":
                payload=json.loads(str(msg.payload)[2:-1])
                print("DBConn call 12")
                conn=get_db_connection(connpool)
                cmd_app_playerdetails(client,msg,sourceApp,payload,conn)
                conn.close()
            
        except:
            print("Error in app message")

    if (msg.topic[:14]=="/regterm/from/"):
        (t1,t2,t3,sourceTerm,messageType) = msg.topic.split("/")
        if messageType=="online":
            print("Registration terminal online.")
        if messageType=="query":
            token=str(msg.payload)[2:-1]
            print("DBConn call 13")
            conn=get_db_connection(connpool)
            cmd_term_queryplayer(client,msg,token,sourceTerm,conn)
            conn.close()
        if messageType=="setcodename":
            payload=json.loads(str(msg.payload)[2:-1])
            print("DBConn call 14")
            conn=get_db_connection(connpool)
            cmd_term_updateplayer(client,msg,payload,sourceTerm,conn)
            conn.close()

    if (msg.topic[:12]=="/discs/from/"):
        # Make sure the payload meets the minimum length    
        if len(msg.payload)<70:
            print("Error: Payload too short")
            tamper_detected(client,msg,"Payload too short")
            return

        # Make sure the payload ends with something that could be a hash
        hashstr=msg.payload[-64:]
        try:
            s=binascii.unhexlify(hashstr)
        except:
            print("Payload doesn't end with a hash")
            tamper_detected(client,msg,"Payload doesn't end with a hash")
            return

        # Make sure the first part of the payload is JSON parseable
        try:
            print("JSON Decode: " + str(msg.payload)[2:-65])
            payload=json.loads(str(msg.payload)[2:-65])
        except BaseException as err:
            print("Error decoding payload")
            print(f"Unexpected {err=}, {type(err)=}")
            tamper_detected(client,msg,"JSON Decode Failed")
            return

        # Make sure the incoming message has a time stamp    
        if not "timestamp" in payload:
            tamper_detected(client,msg,"Timestamp field missing")
            return

        # Time stamp must be a floating point number
        try:
            timestamp=float(payload["timestamp"])
        except:
            tamper_detected(client,msg,"Timestamp isn't a floating point number")
            return

        timestamp=timestamp+TimeStampOffset
        # Time stamp must be within the allowable time window
        now=time.time()
        if timestamp > (now+TimeMargin):
            tamper_detected(client,msg,"Msg timestamp too far in the future")
            return
        if timestamp < (now-TimeMargin):
            print("Timestamp: {0} Time Now: {1}  Time Margin: {2}",timestamp,now,TimeMargin)
            tamper_detected(client,msg,"Msg timestamp too far in the past")
            return

        (t1,t2,t3,sourceDisc,messageType) = msg.topic.split("/")
        print('SourceDisc: ' + sourceDisc + ' Message Type: ' + messageType)

        #try:

        if messageType=="init":
                print ("Processing Init message")
                print("DBConn call 15")
                conn=get_db_connection(connpool)
                cmd_disc_init(client,msg,sourceDisc,payload,conn)
                conn.close()
                return
        else:
                print("DBConn call 16")
                conn=get_db_connection(connpool)
                if validate_disc_message(msg,sourceDisc,conn):
                    if (messageType=="alive"):
                        cmd_disc_alive(client,msg,sourceDisc,payload,conn)
                    if (messageType=="token"):
                        cmd_disc_tokenpresented(client,msg,sourceDisc,payload,conn)
                    if (messageType=="tamper"):
                        cmd_disc_tampertrip(client,msg,sourceDisc,payload,conn)
                    if (messageType=="query"):
                        cmd_disc_query(client,msg,sourceDisc,payload,conn)
                    if (messageType=="register"):
                        cmd_disc_registerplayer(client,msg,sourceDisc,payload,conn)
                    if (messageType=="capture"):
                        cmd_disc_capture(client,msg,sourceDisc,payload,conn)
                    if (messageType=="flatbattery"):
                        cmd_disc_flatbattery(client,msg,sourceDisc,payload,conn)
                    if (messageType=="adminoffline"):
                        cmd_disc_adminoffline(client,msg,sourceDisc,payload,conn)
                    if (messageType=="adminonline"):
                        cmd_disc_adminonline(client,msg,sourceDisc,payload,conn)
                    if (messageType=="location"):
                        cmd_disc_location(client,msg,sourceDisc,payload,conn)
                    if (messageType=="swap"):
                        cmd_disc_inplaceswap(client,msg,sourceDisc,payload,conn)
                    conn.close()
                else:
                    conn.close()                    
                    tamper_detected(client,msg,"Msg failed client key validation")
                    return
        #except:
        #    print("Error processing message.")
    try:
        if (msg.topic[:17]=="/controller/from/"):
            (t1,t2,t3,messageType) = msg.topic.split("/")
            #print('Controller Message Type: ' + messageType)
            if messageType=="checkalive":
                # See which discs haven't checked in for a while and deal with them.
                print("DBConn call 17")
                conn=get_db_connection(connpool)
                cmd_sys_checkalive(client,conn)
                conn.close()
            if messageType=="gamestatus":
                print("DBConn call 18")
                conn=get_db_connection(connpool)
                gameStatus=cmd_sys_updategamestatus(client,conn,msg.payload,gameStatus)
                conn.close()
            if messageType=="updatescores":
                #print("Updating scores")
                print("DBConn call 19")
                conn=get_db_connection(connpool)
                cmd_sys_updatescores(client,conn)
                conn.close()
            if messageType=="endowner":
                if msg.payload=="1":
                    # All boosted discs to end
                    print("DBConn call 20")
                    conn=get_db_connection(connpool)
                    cmd_sys_endboostedcaptures(client,conn)
                    conn.close()
                else:
                    print("DBConn call 21")
                    conn=get_db_connection(connpool)
                    recordcapturefinish(conn,msg.payload)
                    sendowner(client,conn,msg.payload)
                    conn.close()
    except:
        print("Error processing controller message")
    if (msg.topic[:11]=="/alert/hack"):
        send_pushover_alert("Path: " + str(msg.topic) + " Payload: " + str(msg.payload))
    else:
        if (msg.topic[:7]=="/alert/"):
            send_pushover_notification( str(msg.topic) + " Payload: " + str(msg.payload),0,"persistent")

if __name__ == '__main__':
    while True:
        print("Loading...")
        try:    
            errorcount=0
            connpool=get_db_connectionpool()
            print("DBConn call 5")
            conn=get_db_connection(connpool)
            cur=conn.cursor()
            cur.execute("SELECT gamestart,gameend,gamestatus FROM systemcfg")
            for (gs,ge,gstatus) in cur:
                gameStartTime=gs
                gameEndTime=ge
                gameStatus=gstatus
            cur.close()

            print("Connecting MQTT...")
            client = mqtt.Client(client_id='GameServer2',  protocol=mqtt.MQTTv5)
            client.on_connect = on_connect
            client.on_message = on_message
            client.username_pw_set(MQTTUser,MQTTPass)
            client.connect(MQTTBroker, MQTTPort, MQTTTimeout)
            client.loop_start()
            print("Starting controller...")
            gcthread=multiprocessing.Process(target=game_controller,args=(MQTTBroker,MQTTPort,MQTTUser,MQTTPass,gameStartTime,gameEndTime,gameStatus))
            gcthread.start()
            print("Running!")
        except:
            print("Error while loading.  Waiting to retry load.")
            time.sleep(10)
        connectionvalid=True
        while True:
            time.sleep(5)



