
def get_dfversion():
    return "2.18"

def cmd_init(client,srvregkey,srvbasekey,discbasekey,MACAddress):
    import utime, random, hashlib, json, ubinascii
    try:
        topic="/discs/from/" + MACAddress + "/init"
        myTime=str(utime.time())+"."+str(random.getrandbits(30))
        payloaddict={"serialnumber": MACAddress, "timestamp": myTime}
        payload=json.dumps(payloaddict)
        myHash=hashlib.sha256(srvregkey[:15].encode())
        myHash.update(topic.encode())
        myHash.update(srvregkey[15:20].encode())
        myHash.update(payload.encode())
        myHash.update(srvregkey[20:30].encode())
        finalhash=ubinascii.hexlify(myHash.digest()).decode('utf-8')
        payload=payload+finalhash
        client.publish(topic,payload)
        srvkey=srvbasekey[:10] + myTime[2:] + srvbasekey[11:19] + str(finalhash)[-5:]
        srvkey=srvkey[:50]
        disckey=discbasekey[-12:] + str(finalhash)[-10:-6] + myTime[1:] + discbasekey[5:14]
        disckey=disckey[:50]
        f=open("clientkey.txt","w")
        f.write(disckey)
        f.close()
        f=open("serverkey.txt","w")
        f.write(srvkey)
        f.close()
        return myTime
    except:
        return 0


def activate_wifi(mycfg):
    import network
    import utime
    from machine import idle
    sta_if = network.WLAN(network.STA_IF)
    sta_if.active(True)
    if ("wifi_ssid" in mycfg and "wifi_psk" in mycfg):
        if (len(mycfg["wifi_psk"])<6):
            sta_if.connect(mycfg["wifi_ssid"])
        else:
            sta_if.connect(mycfg["wifi_ssid"],mycfg["wifi_psk"])
        endTime=utime.time()+10
        while (not sta_if.isconnected()):
            idle()
            if (endTime>0):
                if (endTime<utime.time()):
                    break
    if (not sta_if.isconnected()):
        if "wifi_backup_ssid" in mycfg and "wifi_backup_psk" in mycfg:
            if (len(mycfg["wifi_backup_psk"])<6):
                sta_if.connect(mycfg["wifi_backup_ssid"])
            else:
                sta_if.connect(mycfg["wifi_backup_ssid"],mycfg["wifi_backup_psk"])
            endTime=utime.time()+6
            while (not sta_if.isconnected()):
                idle()
                if (endTime<utime.time()):
                    break
    return sta_if.isconnected()

def get_clientkey():
    try:
        keyfile=open("clientkey.txt","r")
        keytext=keyfile.readline()
        keyfile.close()
    except:
        keytext=""
    return keytext

def validate_config(mycfg):
    try:
        if ("mqtt_broker" in mycfg and "mqtt_username" in mycfg and "mqtt_password" in mycfg and "wifi_ssid" in mycfg and "wifi_psk" in mycfg):
            if len(mycfg["mqtt_broker"])<2:
                return False
            if len(mycfg["mqtt_username"])<2:
                return False
            if len(mycfg["mqtt_password"])<2:
                return False
            if len(mycfg["wifi_ssid"])<2:
                return False
            if len(mycfg["wifi_psk"])<2:
                return False
            return True
        else:
            return False
    except:
        return False

def get_serverkey():
    try:
        keyfile=open("serverkey.txt","r")
        keytext=keyfile.readline()
        keyfile.close()
    except:
        keytext=""
    return keytext

def wipe_config():
    from os import remove
    from machine import idle
    try:
        remove("serverkey.txt")
    except:
        idle()
    try:
        remove("clientkey.txt")
    except:
        idle()
    try:
        remove("config.txt")
    except:
        idle()

def have_keys():
    KeyExists=False
    try:
        f=open("serverkey.txt")
        f.close()
        f=open("clientkey.txt")
        f.close()
        KeyExists=True
    except:
        print("havekeys error")
    return KeyExists

def get_config():
    import json
    try:
        configfile=open("config.txt","r")
        cfgdict=json.load(configfile)
        configfile.close()
    except BaseException as e:
        cfgdict={}
    return cfgdict

def save_config(cfgdict):
    import json
    savesuccess=False
    try:
        cfgtxt=json.dumps(cfgdict)
        configfile=open("config.txt","w")
        configfile.write(cfgtxt)
        configfile.close()
        savesuccess=True
    except:
        savesuccess=False


def msg_newconfig(payload):
    mycfg=get_config()
    for cfgitem in payload:
        mycfg[cfgitem]=payload[cfgitem]
    save_config(mycfg)


def process_message(messageType,msg,uart):
    import json
    from machine import idle
    if messageType=="initack":
        uart.write("INITA" + chr(13))
    if messageType=="playerunknown":
        payload=json.loads(str(msg)[2:-65])
        temp=idle()
        while temp>65535:
            temp-=65536
        uart.write("PUNKN," +str(payload["emf"]) + "," + str(payload["mch"]) + "," + str(payload["ccc"]) + "," + str(temp) + chr(13))
    if messageType=="player":
        payload=json.loads(str(msg)[2:-65])
        LangDelta=0
        if payload["language"]=="en":
            LangDelta=0
        if payload["language"]=="de":
            LangDelta=200
        if payload["language"]=="nl":
            LangDelta=400
        if payload["language"]=="fr":
            LangDelta=600
        uart.write("PLAYR," + str(payload["teamID"]) + "," + payload["playerID"] + ","  + str(payload["discteam"]) + "," + str(LangDelta) + "," +str(payload["boostresult"]) + chr(13))
        #uart.write("PLAYR," + str(payload["teamID"]) + "," + payload["playerID"] + "," + str(payload["discteam"]) + chr(13))
    if messageType=="owner":
        payload=json.loads(str(msg)[2:-65])
        OwnerTeam=payload["teamID"]
        if OwnerTeam<0:
            OwnerTeam=0
        uart.write("OWNER," + str(OwnerTeam) + "," + payload["playerID"] + chr(13))
    if messageType=="capturesuccess":
        payload=json.loads(str(msg)[2:-65])
        uart.write("CAPOK," + str(payload["teamID"]) + "," + payload["playerID"] + chr(13))
    if messageType=="capturefailed":
        payload=json.loads(str(msg)[2:-65])
        uart.write("CAPFA," + payload["playerID"] + "," + str(payload["reasonID"]) + chr(13))
    if messageType=="regsuccess":
        payload=json.loads(str(msg)[2:-65])
        uart.write("REGOK," + payload["playerID"] + chr(13))
    if messageType=="regfailed":
        payload=json.loads(str(msg)[2:-65])
        uart.write("REGFA," + payload["playerID"] + chr(13))
    if messageType=="configpic":
        payload=json.loads(str(msg)[2:-65])
        uart.write("CONFIG," + payload["settings"] + chr(13))
    if messageType=="configwifi":
        payload=json.loads(str(msg)[2:-65])
        msg_newconfig(payload)
    if messageType=="aliveack":
        uart.write("ALIVE" + chr(13))
    if messageType=="updatewifi":
        return messageType
    if messageType=="game":
        payload=json.loads(str(msg)[2:-65])
        OwnerTeam=payload["ownerteam"]
        if OwnerTeam<0:
            OwnerTeam=0
        if payload["owner"]=="":
            owner=" "
        else:
            owner=payload["owner"]
        uart.write("GAMED," + str(payload["gamestatus"]) + "," + str(payload["winningTeamID"]) + "," + str(payload["volume"]) + "," + str(payload["currentstatus"]) + "," + str(payload["earlycheckin"]) + "," + owner + "," + str(OwnerTeam)  + "," + str(payload["idleRFIDgap"]) + "," + str(payload["idleAnimationDelay"]) + "," + str(payload["idleDiagInterval"]) +"," + str(payload["idleAliveInterval"]) + "," + str(payload["boostcount"]) + "," + payload["teams"] + chr(13))
    if messageType=="swapsuccess":
        uart.write("SWPOK" + chr(13))
    if messageType=="swapfailed":
        uart.write("SWPFL" + chr(13))
    return ""


def validate_message(topic,msg):
    import ubinascii, utime, json
    TimeMargin=30
    if len(msg)<70:
        print("Message too short")
        return False
    hashstr=msg[-64:]
    print("Hash STR: "+str(hashstr))
    try:
        s=ubinascii.unhexlify(hashstr)
    except:
        print("Payload doesn't end with a hash")
        return False
    try:
        print("JSON Decode: " + str(msg)[2:-65])
        payload=json.loads(str(msg)[2:-65])
    except BaseException as err:
        print("Error decoding payload")
        return False
    if not "timestamp" in payload:
        print("Timestamp missing")
        return False
    now=utime.time()
    timestamp=payload["timestamp"]
    if timestamp > (now+TimeMargin):
        print("Timestamp too far in the future")
        return False
    if timestamp < (now-TimeMargin):
        print("Timestamp to far in the past")
        return False
    return validate_message_hash(topic,msg)

def validate_message_hash(topic,msg):
    import hashlib, ubinascii
    serverkey=get_serverkey()
    myHash=hashlib.sha256(serverkey[:8].encode('utf-8'))
    myHash.update(str(msg)[2:-65].encode('utf-8'))
    myHash.update(serverkey[9:13].encode('utf-8'))
    myHash.update(str(topic)[2:-1].encode('utf-8'))
    myHash.update(serverkey[14:].encode('utf-8'))
    strHash=ubinascii.hexlify(myHash.digest()).decode('utf-8')
    msgHash=str(msg)[-65:-1]
    if strHash==msgHash:
        return True
    else:
        return False

def send_message(client,topic,msg):
    import hashlib, ubinascii
    clientkey=get_clientkey()
    if len(clientkey)>20:
        myHash=hashlib.sha256(clientkey[:11].encode('utf-8'))
        myHash.update(topic.encode())
        myHash.update(clientkey[20:].encode())
        myHash.update(msg.encode())
        myHash.update(clientkey[12:19].encode())
        strHash=ubinascii.hexlify(myHash.digest()).decode('utf-8')
        payload=msg+strHash
        client.publish(topic,payload)


def crc32table():
  from array import array
  poly = 0xEDB88320
  table = array('L')
  for byte in range(256):
    crc = 0
    for bit in range(8):
        if (byte ^ crc) & 1:
            crc = (crc >> 1) ^ poly
        else:
            crc >>= 1
        byte >>= 1
    table.append(crc)
  return table

def crc32calc(crctable,inputvalue,string):
    from array import array
    value = inputvalue
    for ch in string:
        value = crctable[(ch ^ value) & 0xff] ^ (value >> 8)
    return value

def crc32(crctable,string):
    from array import array
    value = 0xffffffff
    for ch in string:
        value = crctable[(ord(ch) ^ value) & 0xff] ^ (value >> 8)

    return -1 - value

