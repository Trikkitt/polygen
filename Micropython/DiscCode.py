
import network
import utime
import ubinascii
import random
import json
import hashlib
import ntptime
from umqtt.simple import MQTTClient
from machine import deepsleep,UART,reset
import uos

import DiscFunctions

MACAddress=ubinascii.hexlify(network.WLAN(network.STA_IF).config('mac')).decode()

cfg=DiscFunctions.get_config()

srvbasekey=""
discbasekey=""
srvregkey=""


uos.dupterm(None,1)
uart = UART(0,115200,bits=8, parity=None, stop=1, timeout=2, timeout_char=2, rxbuf=255)
#uart.init(115200, bits=8, parity=None, stop=1, timeout=1, timeout_char=1)
#uart.init(115200, bits=8, parity=None, stop=1, timeout=2, timeout_char=2, rxbuf=256)
firmware_version="2.15"
uart.write(chr(13) + "PWRON" + chr(13))

def sub_cb(topic,msg):
    print("Received topic: " + str(topic))
    print("Payload: " + str(msg))
    if DiscFunctions.validate_message(topic,msg)==True:
        print("Valid message received")
        (t1,t2,t3,targetDisc,messageType)=topic.decode('utf-8').split('/')
        msgresult=DiscFunctions.process_message(messageType,msg,uart)
        if msgresult=="updatewifi":
            payload=json.loads(str(msg)[2:-65])
            uart.write("UPDWF" + chr(13))
            do_firmware_update(payload["files"],payload["urls"])
            uart.write("UPDOK" + chr(13))
            utime.sleep(1)
            reset()


def ser_check(mqttclient):
  global srvregkey
  global srvbasekey
  global discbasekey

  if (uart.any()):
    import ubinascii
    cmd=""
    serialline=uart.readline()
    #for a in serialline:
    #    print(str(a) + ",")
    cmd=cmd + serialline.decode("utf-8")
    #print("command: " + cmd)
    if len(cmd)>1:
        cmd=cmd.replace(chr(10),'').replace(chr(13),'')
        if (cmd[0]=='A' and mqttclient is not None):
            #voltageport=ADC(0)
            sta_if = network.WLAN(network.STA_IF)

            (picfirmware,batteryvoltage,diagresult)=cmd[1:].split(",")
            fwversion=firmware_version + " - " + DiscFunctions.get_dfversion()
            payloaddict={"discfirmware": fwversion , "discmicropython": uos.uname()[3], "picfirmware": picfirmware, "batteryvoltage": batteryvoltage, "wifivoltage": 0, "diagresult": diagresult, "network": str(sta_if.ifconfig()).replace("'",""), "timestamp": utime.time()}
            DiscFunctions.send_message(mqttclient,'/discs/from/' + MACAddress + '/alive',json.dumps(payloaddict))
            uart.write("CMDAK" + chr(13))
        if (cmd[0]=='B'):
            uart.write("PONGB" + chr(13))
        if (cmd[0]=='C' and mqttclient is not None):
            payloaddict={"cardtoken": cmd[1:], "timestamp": utime.time()}
            DiscFunctions.send_message(mqttclient,'/discs/from/' + MACAddress + '/capture',json.dumps(payloaddict))
        if (cmd[0]=='D' and mqttclient is not None):
            payloaddict={"debugmsg": cmd[1:], "timestamp": utime.time()}
            DiscFunctions.send_message(mqttclient,'/debug/from/' + MACAddress,json.dumps(payloaddict))
        if (cmd[0]=='E'):
            if DiscFunctions.have_keys():
                uart.write("HAVKY" + chr(13))
            else:
                uart.write("NOKEY" + chr(13))
        if (cmd[0]=='F' and mqttclient is not None):
            payloaddict={"batteryvoltage": cmd[1:], "timestamp": utime.time()}
            DiscFunctions.send_message(mqttclient,'/discs/from/' + MACAddress + '/flatbattery',json.dumps(payloaddict))
        if (cmd[0]=='H'):
            if (mqttclient is not None):
                payloaddict={"tamper": cmd[1:], "timestamp": utime.time()}
                DiscFunctions.send_message(mqttclient,'/discs/from/' + MACAddress + '/tamper',json.dumps(payloaddict))
                DiscFunctions.send_message(mqttclient,'/discs/from/' + MACAddress + '/wiped',json.dumps(payloaddict))
            DiscFunctions.wipe_config()
            mycfg=DiscFunctions.get_config()
            mycfg["tamper"]="active"
            DiscFunctions.save_config(mycfg)
            uart.write('WIPED' + chr(13))
            

        if (cmd[0]=='I' and mqttclient is not None):
            # commented out for dev
            #(srvregkey,srvbasekey,discbasekey)=cmd[1:].split(",")
            if len(srvregkey)==0 or len(srvbasekey)==0 or len(discbasekey)==0:
                uart.write("INITN" + chr(13))
            else:
                regresult=DiscFunctions.cmd_init(myclient,srvregkey,srvbasekey,discbasekey,MACAddress)
                if regresult!=0:
                    uart.write("INITS" + chr(13))
        if (cmd[0]=='J'):
            try:
                print("CFG: " + cmd[1:])
                (cfgitem,cfgvalue)=cmd[1:].split("\t")
                cfgitem=cfgitem.replace("text/","")
                if cfgitem=="regkey":
                    srvregkey=cfgvalue
                elif cfgitem=="srvkey":
                    srvbasekey=cfgvalue
                elif cfgitem=="disckey":
                    discbasekey=cfgvalue
                else:
                    mycfg=DiscFunctions.get_config()
                    mycfg[cfgitem]=cfgvalue
                    if "tamper" in mycfg:
                        mycfg["tamper"]=""
                    DiscFunctions.save_config(mycfg)
                uart.write("CMDAK" + chr(13))
            except Exception as inst:
                f=open("cfgupd-error.txt","w")
                f.write(inst.value)
                f.write(str(inst.errno))
                f.close()
        if (cmd[0]=='K'):
            uos.dupterm(UART(0, 115200), 1)
            import sys
            print("K command received")
            sys.exit()
        if (cmd[0]=='L'):
            payloaddict={"location": "", "timestamp": utime.time()}
            DiscFunctions.send_message(mqttclient,'/discs/from/' + MACAddress + '/location',json.dumps(payloaddict))
        if (cmd[0]=='N'):
           raise Exception('many','errors') 
        if (cmd[0]=='O'):
            payloaddict={"timestamp": utime.time()}
            DiscFunctions.send_message(mqttclient,'/discs/from/' + MACAddress + '/adminoffline',json.dumps(payloaddict))
        if (cmd[0]=='P'):
            print("Going to sleep")
            uart.write("SLEEP" + chr(13))
            deepsleep()
        if (cmd[0]=='Q' and mqttclient is not None):
            payloaddict={"query": cmd[1:], "timestamp": utime.time()}
            DiscFunctions.send_message(mqttclient,'/discs/from/' + MACAddress + '/query', json.dumps(payloaddict))
        if (cmd[0]=='R' and mqttclient is not None):
            (cardtoken,teamID,cardtype)=cmd[1:].split(",")
            payloaddict={"cardtoken": cardtoken, "teamID": teamID, "cardtype": cardtype, "timestamp": utime.time()}
            DiscFunctions.send_message(mqttclient,'/discs/from/' + MACAddress + '/register',json.dumps(payloaddict))
        if (cmd[0]=='S' and mqttclient is not None):
            payloaddict={"timestamp": utime.time()}
            DiscFunctions.send_message(mqttclient,'/discs/from/' + MACAddress + '/swap',json.dumps(payloaddict))

        if (cmd[0]=='T' and mqttclient is not None):
            payloaddict={"cardtoken": cmd[1:], "timestamp": utime.time()}
            DiscFunctions.send_message(mqttclient,'/discs/from/' + MACAddress + '/token',json.dumps(payloaddict))
        #if (cmd[0]=='U'):
        #    updatepic(uart)
        if (cmd[0]=='W'):
            payloaddict={"reason": cmd[1:], "timestamp": utime.time()}
            if  (mqttclient is not None):
                DiscFunctions.send_message(mqttclient,'/discs/from/' + MACAddress + '/wiped',json.dumps(payloaddict))
            DiscFunctions.wipe_config()
            uart.write('WIPED' + chr(13))
        if (cmd[0]=="X"):
            payloaddict={"reason": cmd[1:], "timestamp": utime.time()}
            if  (mqttclient is not None):
                DiscFunctions.send_message(mqttclient,'/discs/from/' + MACAddress + '/adminonline',json.dumps(payloaddict))

            

def mqtt_connect(mycfg,myID):
    if ("mqtt_broker" in mycfg and "mqtt_username" in mycfg and "mqtt_password" in mycfg):
        client = MQTTClient(myID,mycfg["mqtt_broker"], port=1883, user=mycfg["mqtt_username"], password=mycfg["mqtt_password"])
    else:
        return False
    client.set_callback(sub_cb)
    connected=False
    try:
        client.connect()
        connected=True
    except Exception as err:
        connected=False
    if (not connected and "mqtt_broker_backup" in mycfg):
        client = MQTTClient(myID,mycfg["mqtt_broker_backup"], port=1883, user=mycfg["mqtt_username"], password=mycfg["mqtt_password"])
        client.set_callback(sub_cb)
        try:
            client.connect()
            connected=True
        except Exception as err:
            connected=False
    if (connected):
        return client
    else:
        return False


def do_firmware_update(filenames,firmware_urls):
    import os
    import urequests
    from ubinascii import unhexlify
    for filename in filenames:
        firmware_url=firmware_urls[filename]
        try:
            fw_req=urequests.get(firmware_url)
            if (fw_req.status_code==200):
                fw_file=open(filename.replace(".","-new."),"w")
                datahex=fw_req.raw.read(256)
                while len(datahex)>0:
                    datablock=unhexlify(datahex)
                    fw_file.write(datablock)
                    datahex=fw_req.raw.read(256)
                fw_file.close()
                fw_req.close()
                try:
                    os.remove(filename.replace(".","-backup."))
                except:
                    pass
                try:
                    os.rename(filename,filename.replace(".","-backup."))
                except:
                    pass
                os.rename(filename.replace(".","-new."),filename)
        except Exception as err:
            f=open("fwupd-error.txt","w")
            f.write(err.value)
            f.write(str(err.errno))
            f.close()
            print("Error in do_firmware_update",err)

def sendline(s,linestr,uart,linecount):
    ACKReceived=False
    while (ACKReceived==False):
        while uart.any()>0:
            temp=uart.read(1)
        uart.write(linestr)
        uartreply=uart.read(3)
        #uartreplystr=input("")
        uartreplystr=""
        if (uartreply is not None):
            uartreplystr=str(uartreply,"utf-8")
        if (uartreplystr[:3]=="ACK"):
            ACKReceived=True
        else:
            ACKReceived=False
try:
    if "tamper" in cfg:
        if cfg["tamper"]=='active':
            uart.write("TAMPR" + chr(13))
            utime.sleep(2)
    if DiscFunctions.validate_config(cfg):
        uart.write("CFGOK" + chr(13))
    else:
        uart.write("CFGBD" + chr(13))

    while (not DiscFunctions.activate_wifi(cfg)):
        uart.write("WIFIF" + chr(13))
        counter=150
        chkstart=utime.time()
        while (counter>0):
            ser_check(None)
            counter-=1
        chkend=utime.time()
        if (chkend-chkstart) > 5:
            uart.write("CLKER" + chr(13))

    validtime=False

    try:
        ntphost=cfg["ntpserver"]
        if len(ntphost)>8:
            ntptime.host=ntphost
    except:
        ntphost=""
    while (not validtime):
        try:
            ntptime.settime()
            validtime=True
        except:
            validtime=False
            uart.write("TIMEF" + chr(13))
            counter=150
            while (counter>0):
                ser_check(None)
                counter-=1

    while True:
        myclient=mqtt_connect(cfg,MACAddress)
        lasttime=utime.time()+2
        while (not myclient):
            ser_check(None)
            nowtime=utime.time()
            if nowtime>lasttime:
                uart.write("MQTTF" + chr(13))
                myclient=mqtt_connect(cfg,MACAddress)
                lasttime=utime.time()+2
        myclient.subscribe(topic='/discs/to/' + MACAddress + '/#')
        uart.write("AWAKE" + chr(13))
        while True:
            ser_check(myclient)
            myclient.check_msg()
except Exception as inst:
    f=open("error.txt","w")
    f.write(inst.value)
    f.write(str(inst.errno))
    f.close()
    print(inst.value)
    print(str(inst.errno))
    if myclient is not None:
        payloaddict={"source": "exception", "debugmsg": inst.value, "timestamp": utime.time()}
        DiscFunctions.send_message(myclient,'/debug/from/' + MACAddress,json.dumps(payloaddict))
