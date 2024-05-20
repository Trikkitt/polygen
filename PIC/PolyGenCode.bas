
;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16F15356

Config1 FEXTOSC_OFF, RSTOSC_HFINT32, CLKOUTEN_OFF, CSWEN_ON, FCMEN_ON
Config2 MCLRE_OFF, PWRTE_OFF, LPBOREN_OFF, BOREN_ON, BORV_LO, ZCD_OFF, PPS1WAY_ON, STVREN_ON
Config3 WDTCPS_WDTCPS_31, WDTE_SWDTEN, WDTCWS_WDTCWS_7, WDTCCS_LFINTOSC
Config4 BBSIZE_BB512, BBEN_OFF, SAFEN_OFF, WRTAPP_ON, WRTB_ON, WRTC_ON, WRTSAF_ON, LVP_ON
Config5 CP_ON


;Config1 FEXTOSC_OFF, RSTOSC_HFINT32, CLKOUTEN_OFF, CSWEN_ON, FCMEN_ON
;Config2 MCLRE_OFF, PWRTE_OFF, LPBOREN_OFF, BOREN_ON, BORV_LO, ZCD_OFF, PPS1WAY_ON, STVREN_ON
;Config3 WDTCPS_WDTCPS_31, WDTE_SWDTEN, WDTCWS_WDTCWS_7, WDTCCS_LFINTOSC
;Config4 BBSIZE_BB512, BBEN_OFF, SAFEN_OFF, WRTAPP_ON, WRTB_ON, WRTC_ON, WRTSAF_ON, LVP_ON
;Config5 CP_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------

  Xtal = 32
  All_Digital = TRUE    ' Set PORTA and PORTC to all digital
  
  Declare Optimiser_Level = 0
  Declare Watchdog = Off


' Breadboard assignments

  ' PORTA0 / ICSPDAT = Serial Diag In
  ' PORTA1 / ICSPCLK = Serial Diag Out
  ' PORTA2
  ' PORTA3 / MCLR
  ' PORTA4  = Serial in from WiFi
  ' PORTA5  = Serial out to WiFi
  ' PORTB4  = SPI Out
  ' PORTB5  = SPI In
  ' PORTB6  = RFID Reset
  ' PORTB7
  ' PORTC0  = Battery voltage
  ' PORTC1  = SPI Select
  ' PORTC2  = SPI Clock
  ' PORTC3  = Serial in from DFR
  ' PORTC4  = Serial out to DFR
  ' PORTC5  = WiFi Reset
  ' PORTC6  = DFRPower
  ' PORTC7  = DFR Busy
  

  ' Main PCB assignments
  Seed $0345

  Symbol SPIRFIDSelect=PORTC.1
  Symbol SPIClk=PORTC.2
  Symbol SPIOut=PORTC.3
  Symbol SPIIn=PORTC.4
  Symbol RFIDShutdown=PORTC.5
  Symbol BF=SSP1STAT.0
  
  Symbol SerialOutDiag=PORTB.6
  Symbol SerialInDiag=PORTB.7   
  
  Symbol SerialOutDFR=PORTB.5
  Symbol SerialInDFR=PORTB.4
  Symbol DFRPower=PORTB.3
  Symbol DFRBusy=PORTB.2
  
  Symbol TamperSwitch=PORTA.0
  Symbol NeoPixelPower1=PORTA.1
  Symbol NeoPixelOut1=PORTA.2
  Symbol NeoPixelPower2=PORTA.7
  Symbol NeoPixelOut2=PORTA.6
  
  Symbol WIFIReset=PORTA.3
  
  Symbol VoltageSensor=PORTC.0
  
  Symbol PowerControl=PORTB.1
  
  Symbol SerialOutWiFi=PORTC.6
  Symbol SerialInWiFi=PORTC.7

  Symbol RecentCaptureValue = 6
  
  On_Hardware_Interrupt GoTo ISR_Handler

  Symbol RC522_PCD_IDLE       = 0x00
  Symbol RC522_PCD_AUTHENT    = 0x0E
  Symbol RC522_PCD_RECEIVE    = 0x08
  Symbol RC522_PCD_TRANSMIT   = 0x04
  Symbol RC522_PCD_TRANSCEIVE = 0x0C
  Symbol RC522_PCD_RESETPHASE = 0x0F
  Symbol RC522_PCD_CALCCRC    = 0x03

  Symbol RC522_PICC_REQIDL    = 0x26
  Symbol RC522_PICC_REQALL    = 0x52
  Symbol RC522_PICC_ANTICOLL_CL1  = 0x93
  Symbol RC522_PICC_ANTICOLL_CL2  = 0x95
  Symbol RC522_PICC_ANTICOLL_CL3  = 0x97

  Symbol RC522_PICC_SELECTTAG_CL1 = 0x93
  Symbol RC522_PICC_SELECTTAG_CL2 = 0x95
  Symbol RC522_PICC_SELECTTAG_CL3 = 0x97
  Symbol RC522_PICC_AUTHENT1A = 0x60
  Symbol RC522_PICC_AUTHENT1B = 0x61
  Symbol RC522_PICC_READ      = 0x30
  Symbol RC522_PICC_WRITE     = 0xA0
  Symbol RC522_PICC_DECREMENT = 0xC0
  Symbol RC522_PICC_INCREMENT = 0xC1
  Symbol RC522_PICC_RESTORE   = 0xC2
  Symbol RC522_PICC_TRANSFER  = 0xB0
  Symbol RC522_PICC_HALT      = 0x50  
  
  Symbol RC522_MI_OK          = 0
  Symbol RC522_MI_NOTAGERR    = 1
  Symbol RC522_MI_ERR         = 2

  Symbol RC522_Reg_Reserved00     = 0x00
  Symbol RC522_Reg_CommandReg     = 0x01
  Symbol RC522_Reg_ComIEnReg     = 0x02
  Symbol RC522_Reg_DivlEnReg      = 0x03
  Symbol RC522_Reg_ComIrqReg     = 0x04
  Symbol RC522_Reg_DivIrqReg      = 0x05
  Symbol RC522_Reg_ErrorReg       = 0x06
  Symbol RC522_Reg_Status1Reg     = 0x07
  Symbol RC522_Reg_Status2Reg     = 0x08
  Symbol RC522_Reg_FIFODataReg    = 0x09
  Symbol RC522_Reg_FIFOLevelReg   = 0x0A
  Symbol RC522_Reg_WaterLevelReg  = 0x0B
  Symbol RC522_Reg_ControlReg     = 0x0C
  Symbol RC522_Reg_BitFramingReg  = 0x0D
  Symbol RC522_Reg_CollReg        = 0x0E
  Symbol RC522_Reg_Reserved01     = 0x0F
  
  Symbol RC522_Reg_Reserved10     = 0x10
  Symbol RC522_Reg_ModeReg        = 0x11
  Symbol RC522_Reg_TxModeReg      = 0x12
  Symbol RC522_Reg_RxModeReg      = 0x13
  Symbol RC522_Reg_TxControlReg   = 0x14
  Symbol RC522_Reg_TxAutoReg      = 0x15
  Symbol RC522_Reg_TxSelReg       = 0x16
  Symbol RC522_Reg_RxSelReg       = 0x17
  Symbol RC522_Reg_RxThresholdReg = 0x18
  Symbol RC522_Reg_DemodReg       = 0x19
  Symbol RC522_Reg_Reserved11     = 0x1A
  Symbol RC522_Reg_Reserved12     = 0x1B
  Symbol RC522_Reg_MifareReg      = 0x1C
  Symbol RC522_Reg_Reserved13     = 0x1D
  Symbol RC522_Reg_Reserved14     = 0x1E
  Symbol RC522_Reg_SerialSpeedReg = 0x1F
  
  Symbol RC522_Reg_Reserved20        = 0x20  
  Symbol RC522_Reg_CRCResultRegM     = 0x21
  Symbol RC522_Reg_CRCResultRegL     = 0x22
  Symbol RC522_Reg_Reserved21        = 0x23
  Symbol RC522_Reg_ModWidthReg       = 0x24
  Symbol RC522_Reg_Reserved22        = 0x25
  Symbol RC522_Reg_RFCfgReg          = 0x26
  Symbol RC522_Reg_GsNReg            = 0x27
  Symbol RC522_Reg_CWGsPReg          = 0x28
  Symbol RC522_Reg_ModGsPReg         = 0x29
  Symbol RC522_Reg_TModeReg          = 0x2A
  Symbol RC522_Reg_TPrescalerReg     = 0x2B
  Symbol RC522_Reg_TReloadRegH       = 0x2C
  Symbol RC522_Reg_TReloadRegL       = 0x2D
  Symbol RC522_Reg_TCounterValueRegH = 0x2E
  Symbol RC522_Reg_TCounterValueRegL = 0x2F
  
  Symbol RC522_Reg_Reserved30      = 0x30
  Symbol RC522_Reg_TestSel1Reg     = 0x31
  Symbol RC522_Reg_TestSel2Reg     = 0x32
  Symbol RC522_Reg_TestPinEnReg    = 0x33
  Symbol RC522_Reg_TestPinValueReg = 0x34
  Symbol RC522_Reg_TestBusReg      = 0x35
  Symbol RC522_Reg_AutoTestReg     = 0x36
  Symbol RC522_Reg_VersionReg      = 0x37
  Symbol RC522_Reg_AnalogTestReg   = 0x38
  Symbol RC522_Reg_TestDAC1Reg     = 0x39
  Symbol RC522_Reg_TestDAC2Reg     = 0x3A
  Symbol RC522_Reg_TestADCReg      = 0x3B
  Symbol RC522_Reg_Reserved31      = 0x3C
  Symbol RC522_Reg_Reserved32      = 0x3D
  Symbol RC522_Reg_Reserved33      = 0x3E
  Symbol RC522_Reg_Reserved34      = 0x3F
    
  Symbol RC522_MaxLen = 100 ' was 20

  Symbol PICFirmwareVersion=18

'  Symbol CentreIdleHue=968 ' blue

  Dim RC522_Temp As Byte

  Dim RC522_Address As Byte
  Dim RC522_Value As Byte
  Dim RC522_BitMask As Byte

  Dim RC522_backLen As Byte
  Dim RC522_bitLen As Byte
  Dim RC522_backData[100] As Byte
  Dim RC522_sendLen As Byte
  Dim RC522_sendData[50] As Byte
  Dim RC522_Status As Byte

  Dim RC522_irqEn As Byte
  Dim RC522_waitIRq As Byte
  Dim RC522_lastBits As Byte
  Dim n As Byte
  Dim i As Word
  Dim RC522_Command As Byte
  Dim RC522_serNumCheck As Byte
  Dim RC522_BlockAddress As Byte
  Dim RC522_RequestMode As Byte
  Dim RC522_Level As Byte

  Dim RC522_ATQA[2] As Byte
  Dim RC522_Token[10] As Byte
  Dim RC522_TokenLen As Byte
  Dim RC522_SAK As Byte

  Dim RC522_TokenSaved[10] As Byte
  Dim RC522_TokenLenSaved As Byte
  
  Dim MaxRFIDWaitTime As Word
  Dim PaymentCardType As Byte

  Dim RC522ReaderPresent As Bit  ' Set if RC522 present during detection stage
  Dim RFIDLoopCount As Byte

  Dim BatteryVoltage As Word
  Dim PeriodicDiags As Byte
  Symbol DiagInterval=50 ' About every 5 hours

  Dim DiagTempW As Word
  Symbol RX1BufLen=100
  Symbol RX2BufLen=10
  Dim RX1BufferActive As String * RX1BufLen
  Dim RX1Buffer As String * RX1BufLen
  Dim RX2Buffer[RX2BufLen] As Byte
  Dim RX2BufferTemp As Byte
  Dim RX1BufPos As Byte
  Dim RX2BufPos As Byte
  Dim RX1BufOverflow As Bit
  Dim RX2BufOverflow As Bit
  Dim RX1CommandReceived As Bit
  Dim RX2CommandReceived As Bit
  

  Dim discs_OwnerToken[11] As Byte
  Dim discs_OwnerTeam As Byte
  Dim discs_LastToken[11] As Byte
  Dim TeamColourOverride As Byte

  Dim discs_NewTeam As Byte
  Dim LastMatched As Bit
  Dim OwnerMatched As Bit
  Dim CommandMatched As Bit
  Dim CommandMatched2 As Bit
  'Dim wifi_cmd As String * 100
  Dim wifi_tmp As String * 100
  Dim wifi_txt As String * 8
  Dim tmpstr As String * 4
  Dim RecentCapture As Byte
  Dim DetectResult As Byte
  Dim vstemp As Byte
  Dim msgCount As Byte
  Dim GameStatus As Byte
  Dim WinningTeam As Byte
  Dim comma1 As Byte
  Dim comma2 As Byte
  Dim commalen As Byte
  Dim SoundLevel As Byte
  Dim NextPoll As Word
  Dim SelectedTeam As Byte
  Dim PickerCount As Byte
  Dim DetectCount As Byte
  Dim TeamID As Word
  Dim DiscCurrentStatus As Byte
  
  Dim WiFiConnected As Bit
  Dim WiFiMQTTFailed As Bit
  Dim WiFiTimeFailed As Bit
  Dim WifiInitSuccess As Bit
  Dim WifiInitSent As Bit
  Dim WifiInitNoKeys As Bit
  Dim WiFiUpdateInProgress As Bit
  Dim WifiConfigValid As Bit
  Dim WifiConfigBad As Bit
  Dim AliveAcknowledged As Bit
  Dim WiFiCMD As String * 120
  Dim WiFiCMDActive As String * 120
  Dim WiFiTXPos As Byte
  Dim TXInProgress As Bit
  Dim WiFiPowerDownRequested As Bit
  Dim TXtmp As Byte
  Dim WiFiPowerOnTimeout As Word
  Dim TXGapTimer As Byte
  Dim RX1Timeout As Byte
  Dim WiFiOnSent As Bit
  Dim WiFiPingPong As Bit
  Dim WiFiHasKeys As Bit
  Dim WiFiNoKeys As Bit
  Dim WiFiFailedToJoinSSID As Bit
  Dim WiFiEncryptionKeysWiped As Bit
  Dim OwnerStatusReceived As Bit
  Dim ReceivedGameStatus As Bit
  Dim DiscSwapCompleted As Bit
  Dim DiscSwapFailed As Bit
  Dim TamperLatch As Bit

  Dim WiFiUnresponsive As Byte

  Dim SoundSTR[3] As Byte

  Symbol SoundQueueLength = 10
  Dim SoundQueue[SoundQueueLength] As Byte '
  Dim SQNext As Byte '
  Dim SQTail As Byte '
  Dim NextSoundNow As Bit
  Dim SoundStartDelay As Byte
  Dim SoundTemp As Byte
  Dim SoundPowerOnTimeout As Byte
  Dim SoundTimeout As Word
  Dim SoundMinimumRun As Byte
  
  Dim cmd As Byte
  Dim cmdp1 As Byte
  Dim cmdp2 As Byte
  Dim SoundTempW As SWord
  Symbol  SoundCmdBufferLength = 10
  Dim SoundCmd[SoundCmdBufferLength] As Byte
  Dim SoundCmdPos As Byte
  Dim NewPlayerSound As Byte
  Dim PostRegSound As Byte
  
Dim tpWiFiStep As Byte
Dim EndWaitTime As Byte
Dim TeamPickerCount As Byte
Dim TeamPickerTime As Word
Dim TeamPickerCycles As Byte
Symbol TeamPickerMaxCycles = 12
Dim SoundQueuedTimer As Byte
Dim SoundPlaying As Bit

Dim LED1Data[60] As Byte
Dim LED2Data[60] As Byte
'Dim LED1Data[51] As Byte
'Dim LED2Data[37] As Byte
Dim LEDIdleLocation As Byte
Dim ReadData As Byte
Dim LED1ByteCount As Byte
Dim LED2ByteCount As Byte
Dim ClockCount As Byte

Dim WiFiReceivedSomething As Bit

Dim GeneralTimer As Word
Dim CaptureTimer As Word
Dim DividerTimer As Byte
Dim FastTimer As Byte

Dim TotalTeams As Byte
Dim TeamColourHue[10] As Word
Dim TeamSoundOffset[10] As Byte
Dim LEDFrame As Word
Dim LEDLastFrame As Word

Dim FillAllFlagged As Bit
Dim LEDActiveAnimation As Byte

Dim RX2Timeout As Byte
Symbol RX2TimeoutValue = 5

Dim ResetCount As Byte
' 0 = Idle, not owned


Dim MJTToken As Flash8 = 0x00,0x00,0x0,0x00,0x00,0x00,0x00,0x00,0x00,0x00
Dim MJTToken2 As Flash8 = 0x00,0x00,0x0,0x00,0x00,0x00,0x00,0x00,0x00,0x00

Dim DisableTamperDetection As Bit


  DelayMS 2
  Clear
  ' Set DisableTamperDetection ' ### should only be needed if tamper dectection isn't needed.
  GoTo Main

  ISR_Handler:
  Context Save
  If RCSTA1.1 = 1 Or RCSTA1.2 = 1 Then                ' If USART error then clear the error flag
     RCSTA1.4 = 0
     RCSTA1.4 = 1
  EndIf
  If RCSTA2.1 = 1 Or RCSTA2.2 = 1 Then                ' If USART error then clear the error flag
     RCSTA2.4 = 0
     RCSTA2.4 = 1
  EndIf
  While PIR3.5=1 ' Received from WiFi
    RX1BufferActive[RX1BufPos]=RC1REG
    If RX1BufferActive[RX1BufPos]=13 Then
      ' end of command
      'Inc RX1BufPos
      Clear RX1BufferActive[RX1BufPos]
      RX1Buffer=RX1BufferActive
      Set RX1CommandReceived
      Clear RX1BufPos
      Clear RX1Timeout
    Else
      Inc RX1BufPos
      RX1Timeout=8
      If RX1BufLen=RX1BufPos Then 
          Dec RX1BufPos
          Set RX1BufOverflow
      End If
    End If
  Wend
  
  While PIR3.7=1 ' Received from audio module
    RX2Timeout=RX2TimeoutValue
    If RX2BufPos=0 Then
      ' no data in the buffer yet.  Must be one of type bytes to start an RX
      RX2BufferTemp=RC2REG
      If RX2BufferTemp=0x7E Then
        RX2Buffer[0]=RX2BufferTemp
        Inc RX2BufPos
      EndIf
    Else
      RX2Buffer[RX2BufPos]=RC2REG
      Inc RX2BufPos
      If RX2BufLen=RX2BufPos Then
        Set RX2CommandReceived
        Clear RX2BufPos
      End If
    EndIf
  Wend

  'While PIR3.4=1 And TXInProgress=1 And TXLimitCount>0 ' Actively sending to WiFi module
  While PIR3.4=1 And TXInProgress=1 ' Actively sending To WiFi module
    TXtmp=WiFiCMDActive[WiFiTXPos]
    'TXtmp=WiFiCMD[WiFiTXPos]
    If TXtmp>0 Then
      TX1REG=TXtmp
      Inc WiFiTXPos
      'Dec TXLimitCount
      'If TXLimitCount=0 Then
      '  Clear PIE3.4
      'EndIf
    Else
      TX1REG=10
      TXGapTimer=75 ' Wait at least 1.5 seconds between messages.  Cleared if an ACK received
      Clear TXInProgress
      Clear PIE3.4 ' TX1 Interrupts
      'Clear PIR3.4
      If WiFiPowerDownRequested=1 Then
        Clear WiFiPowerDownRequested
        DelayUS 500
        'DelayMS 2 ' Testing to see if this helps the WiFi sleep
        Input SerialOutWiFi
        Clear PIE3.5  ' RX1 interrupt
        'Clear CLC2CON.7   ' v0-02 workaround
        'Clear CLC3CON.7  ' v0-02 workaround
        Clear RC1STA ' Turn off serial
        Clear TX1STA
      EndIf
    End If
  Wend
  
  If PIR3.4=1 And TXInProgress=0 Then
     PIE3.4=0 ' If Interrupt flagged but no TX in progress then turn off
     'Clear PIR3.4
  EndIf

  If PIR3.6=1 Then
    If SoundCmdPos<SoundCmdBufferLength Then ' While sending to the sound module
      TX2REG=SoundCmd[SoundCmdPos]
      Inc SoundCmdPos
      If SoundCmdPos=SoundCmdBufferLength Then
        ' Command has finished being sent
        Clear PIE3.6 ' Turn off TX interrupts
        'SoundStartDelay=50
      EndIf
    EndIf
  EndIf

  If PIR0.5=1 Then  ' Happens ~200 times per second
    Clear PIR0.5
    If LEDFrame>0 Then Dec LEDFrame
    If FastTimer>0 Then Dec FastTimer
    If DividerTimer>0 Then
      Dec DividerTimer
    Else ' Happens ~40 times per second
      DividerTimer=5
      If WiFiPowerOnTimeout>0 Then Dec WiFiPowerOnTimeout
      If SoundTimeout >0 Then Dec SoundTimeout
      If SoundPowerOnTimeout>0 Then Dec SoundPowerOnTimeout
      If GeneralTimer>0 Then Dec GeneralTimer
      If TXGapTimer>0 Then Dec TXGapTimer
      If EndWaitTime>0 Then Dec EndWaitTime
      If TeamPickerTime>0 Then Dec TeamPickerTime
      If SoundStartDelay>0 Then Dec SoundStartDelay
      If CaptureTimer>0 Then Dec CaptureTimer
      If SoundMinimumRun>0 Then
        Dec SoundMinimumRun
        If SoundMinimumRun=0 Then
          Set NextSoundNow
        EndIf
      EndIf
      If RX1Timeout>0 Then 
        Dec RX1Timeout
        If RX1Timeout=0 Then
          If RX1BufPos>0 Then
            RX1BufferActive[RX1BufPos]=0
            Clear RX1BufPos
            RX1Buffer=RX1BufferActive
            Set RX1CommandReceived
          EndIf
        EndIf
      EndIf
      If RX2Timeout>0 Then
        Dec RX2Timeout
        If RX2Timeout=0 Then
          If RX2BufPos>0 Then
            Clear RX2BufPos
            Set RX2CommandReceived
          EndIf
        EndIf
      EndIf
    EndIf
  EndIf
  
  If PIR3.2=1 Then  ' SPI2 interrupt for Neopixels
    If ClockCount>0 Then
      Clear PIR3.2
      Dec ClockCount
      If LEDActiveBuffer=0 Then ' 0 = LED1, 1 = LED2
         SSP2BUF=LED1Data[ClockCount] 
      Else
         SSP2BUF=LED2Data[ClockCount]
      EndIf
      Clear SSP2STAT.0 ' Clear buffer full
    Else
      If LED1ByteCount>0 Then ' If data is waiting for LED1 then transmit that
        ClockCount=LED1ByteCount
        Clear LED1ByteCount
        Clear LEDActiveBuffer

        If RA6PPS=1 Then 
          While SSP2STAT.0=0
          Wend
        EndIf
        
        RA2PPS=1 ' CLC1
        RA6PPS=0
        Set PIR3.2  ' ### Shouldn't be needed as isn't cleared
      ElseIf LED2ByteCount>0 Then ' If it is waiting for LED2 then send that
        ClockCount=LED2ByteCount
        Clear LED2ByteCount
        Set LEDActiveBuffer
        If RA2PPS=1 Then
          While SSP2STAT.0=0
          Wend
        EndIf
        RA2PPS=0
        RA6PPS=1 ' CLC1
        Set PIR3.2  ' ### Shouldn't be needed as isn't cleared
      Else
        Clear PIR3.2 ' Clear is nothing more to send.  Otherwise this will get called again
        Clear PIE3.2 ' Turn off this interrupt
        RA2PPS=0
        RA6PPS=0
      EndIf
    EndIf
  EndIf

  ' Clear buffer overrun errors
  If RC1STA.1=1 Then 
     Clear RC1STA.4
     Set RC1STA.4
  EndIf
  If RC2STA.1=1 Then 
    Clear RC2STA.4
    Set RC2STA.4
 EndIf
 
  
  ' Detect the tamper switch state change
  If IOCAF.0=1 Then
    Clear IOCAF.0
    If DisableTamperDetection=0 Then
      Set TamperLatch
    EndIf
  EndIf
  Context Restore
  Return
    
  Main:

  'Seed $0479
  
  ' Setup SPI port assignments
  SSP1DATPPS=0x14
  SSP1CLKPPS=0x12
  RC2PPS=0x15 ' Sync Clock Out
  RC3PPS=0x16 ' Sync Serial Out
  
  ' Two way comms with audio module
  RB5PPS=0x11 ' TX2
  RX2DTPPS=0x0C  ' B4

  ' ### Set up the IO pins
  PinSet PowerControl ' Must be on or we could have issues with power!  We don't want to drive to logic 0 when power button is pressed.
  
  ' TRIS 0 = output    1 = input
  
  ' PortC
  ' 7 - SerialIn Wifi
  ' 6 - SerialOut Wifi (Leave as input while WiFi is in reset state)
  ' 5 - RFID Shutdown
  ' 4 - SPI In
  ' 3 - SPI Out
  ' 2 - SPI Clock
  ' 1 - SPI Select
  ' 0 - Voltage Sensor
  TRISC=%11010001
  
  ' PortB
  ' 7 - SerialIn Diag
  ' 6 - SerialOut Diag
  ' 5 - SerialOut DFR (Leave as input while DFR is turned off)
  ' 4 - SerialIn DFR
  ' 3 - DFR Power
  ' 2 - DFR Busy
  ' 1 - Power Control
  ' 0 - ??
  TRISB=%10110101
    
  ' PortA
  ' 7 - NeoPixel 2 Power (Leave as input while powered off)
  ' 6 - NeoPixel 2 Output
  ' 5 - ??
  ' 4 - ??
  ' 3 - WiFiReset
  ' 2 - NeoPixel 1 Output (Leave as input while powered off)
  ' 1 - NeoPixel 1 Power
  ' 0 - Tamper Switch
  
  TRISA=%01110101
  
  ' Configure SPI port directions
  '###Input SPIIn
  '###Output SPIClk
  '###Output SPIOut
  '###Output SPIRFIDSelect
  '###Output RFIDShutdown
  
  ' Setup diag comms
  '###Output SerialOutDiag
  '###Input SerialInDiag
   
  ' Configure WiFi comms
  '###Output WIFIReset
  Clear WIFIReset ' Place wifi in to reset state
  '###Input SerialOutWiFi
  '###Input SerialInWiFi

  ' Configure audio.  Ensure it is turned off by default.
  '###Output DFRPower
  Clear DFRPower
  '###Input SerialOutDFR
  '###Input SerialInDFR
  '###Input DFRBusy
  '###Input TamperSwitch
  
  ' Setup Neopixels to be input.  If we drive them while powered off it could draw power from PIC
  '###Input NeoPixelOut1
  '###Input NeoPixelOut2
  '###Output NeoPixelPower1
  '###Output NeoPixelPower2
  Clear NeoPixelPower1
  Clear NeoPixelPower2
  
  '###Input VoltageSensor  
  
  ' Make sure we are turning on our power supply that'll keep us powered up
  '###Set PowerControl
  '###Output PowerControl
  '###Set PowerControl
  
  ' MCH 2022
  
'  MJTToken[0]=0x04
'  MJTToken[1]=0x5A
'  MJTToken[2]=0x1e
'  MJTToken[3]=0x26
'  MJTToken[4]=0x7a
'  MJTToken[5]=0x74
'  MJTToken[6]=0x80

'  MJTToken2[0]=0x04
'  MJTToken2[1]=0xd4
'  MJTToken2[2]=0x1E
'  MJTToken2[3]=0x7f
'  MJTToken2[4]=0x6a
'  MJTToken2[5]=0x74
'  MJTToken2[6]=0x80

  ' EMF 2022
  
  'MJTToken[0]=0x04
  'MJTToken[1]=0x41
  'MJTToken[2]=0x1e
  'MJTToken[3]=0xe2
  'MJTToken[4]=0xba
  'MJTToken[5]=0x74
  'MJTToken[6]=0x80

'  MJTToken2[0]=0x04
'  MJTToken2[1]=0x2C
'  MJTToken2[2]=0x1E
'  MJTToken2[3]=0x44
'  MJTToken2[4]=0x7A
'  MJTToken2[5]=0x74
'  MJTToken2[6]=0x80

  
  ' Configure SPI
  Clear RFIDShutdown
  SSP1CON1=%00000001 ' Configure SPI Master    Fosc/16
  SSP1STAT.7=0 ' SMP
  SSP1STAT.6=1 ' CKE 
  SSP1CON1.4=0 ' CKP 0 = clock idles low
  Set SPIRFIDSelect
  Clear SSP1BUF
  Set SSP1CON1.5 ' Enable SPI

  SoundLevel=12 ' Max volume is 30

  SoundCmdPos=10 ' end of buffer so we don't send junk to start with


  Clear TMR0L
  Clear PIR0.5 ' Clear interrupt flag for this timer
  Set PIE0.5
  TMR0H=156
  T0CON1=%01001000 ' Fosc/4 with 1:256 prescaler
  T0CON0=%10000000     ' 8 bit with post scaler to 1:1 - and start timer
  Symbol CritialBatteryThreshold = 510
  Symbol LowBatteryThreshold = 561

  'TeamColourHue[1]=1310  ' Magenta
  TeamColourHue[1]=40   ' Orange
  TeamColourHue[2]=300   ' Yellow
  'TeamColourHue[2]=256   ' Yellow
  TeamColourHue[3]=798   ' Cyan
  TeamColourHue[4]=480   ' Emerald
  TotalTeams=4
  HSVs=255
  
  Dim IdleRFIDGap As Byte
  Dim IdleAnimationDelay As Byte
  Dim IdleDiagInterval As Word
  Dim IdleAliveInterval As Word
  IdleRFIDGap=5 ' 1 second
  IdleAnimationDelay=4
  IdleDiagInterval=50
  IdleAliveInterval=120

  ' Tamper detect switch
  Set PIE0.4  'IOCIE
  Set IOCAN.0

  ' Turn on global interrupts
  Set INTCON.7
  Set INTCON.6

  If TamperLatch=1 Then GoSub TamperDetected
  'Set DiagSilent
  'GoSub SelfTest
  'DelayMS 2000

  GoSub PowerOnWiFi
  GoSub PowerOnSound
  
  Dim BootWiFiRetry As Byte
  BootWiFiRetry=2
  
  RetryPowerOnWifi:
  While WiFiPowerOnTimeout>0
    If RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
    GoSub UpdateSound
    If WiFiConnected=1 Then Break
    If WifiConfigBad=1 Then Break
    If TamperLatch=1 Then GoSub TamperDetected
  Wend

  GoSub GetBatteryVoltage
  If BatteryVoltage<CritialBatteryThreshold Then
    GoSub SayBatteryVoltage
    GoSub WaitForSound
    GoSub FlatBattery
  EndIf
  
  If WiFiConnected=0 And WifiConfigBad=0 Then
    GoSub PowerOffWiFi
    DelayMS 500
    If RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
    GoSub PowerOnWiFi
    Dec BootWiFiRetry
    If BootWiFiRetry>0 Then 
       GoTo RetryPowerOnWifi
    Else
      SoundTemp=18
      GoSub QueueSound
      GoSub UpdateSound
    EndIf
  EndIf

  PeriodicDiags=DiagInterval

  RecentCapture=RecentCaptureValue
  
  If WiFiConnected=1 Then
    ' Report we are alive
    GoSub DoAlivePoll
    GeneralTimer=200
    While TXInProgress=1 And GeneralTimer>0
     GoSub UpdateSound
    Wend

    GeneralTimer=50
    While GeneralTimer>0 And AliveAcknowledged=0
      If RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
      GoSub UpdateSound
      Wend
  
    GameStatus=2 ' Set the default to game running
    ' Request game details
    GoSub DoGameStatusQuery
  
    GeneralTimer=200 ' 4 seconds
    While GeneralTimer>0
      If RX1CommandReceived=1 Then 
        GoSub ProcessWiFiMessage
        If ReceivedGameStatus=1 Then Break
      EndIf
    Wend

    GoSub DoOwnerStatusQuery

    GeneralTimer=200
    While GeneralTimer>0
      If RX1CommandReceived=1 Then 
        GoSub ProcessWiFiMessage
        Break
      EndIf
    Wend

    If DiscCurrentStatus<4 Then
      SoundTemp=42 ' N
    ElseIf DiscCurrentStatus=6 Then
      SoundTemp=028 ' N
    Else
      SoundTemp=030 ' N Disc offline status number
      GoSub QueueSound
      SoundTemp=DiscCurrentStatus
    EndIf
    GoSub QueueSound
  Else
    If WifiConfigBad=1 Then
      SoundTemp=035 ' N
      GoSub QueueSound
    EndIf
    If WifiConfigValid=1 Then
      SoundTemp=038 ' N
      GoSub QueueSound
    EndIf
    If WiFiFailedToJoinSSID=1 Then
      SoundTemp=029 ' N
      GoSub QueueSound
    EndIf
    If  WiFiMQTTFailed=1 Then
      SoundTemp=26
      GoSub QueueSound
    EndIf
    If WiFiTimeFailed=1 Then
      SoundTemp=25
      GoSub QueueSound
    EndIf
    GeneralTimer=50
    While GeneralTimer>0
      GoSub UpdateSound
    Wend
  EndIf

  ' Power down the WiFi module
  GoSub PowerOffWiFi
  GoSub WaitForSound
  'GoSub UpdateSound    ' ]]]
  'GoSub IsSoundPlaying
  'GeneralTimer=600
  'While SoundPlaying=1 And GeneralTimer>0
  '  GoSub UpdateSound
  '  GoSub IsSoundPlaying
  'Wend 
  GoSub PowerOffSound
  
  Clear NextPoll
  GoSub IdleCentreUpdate
' ************* MAIN PROGRAM LOOP **************
  Dim AnimationCycles As Byte
  Symbol RFIDChecksPerAnimation=4

  PeriodicDiags=IdleDiagInterval
  NextPoll=IdleAliveInterval

  DetectionLoop:
  Clear PaymentCardType
  GoSub DetectRFID
  If CommandMatched=1 Then
    ' This is command mode
    GoSub CommandMode
    Clear CommandMatched
  ElseIf DiscCurrentStatus=6 Then
    If DetectResult=1 Then
      GoSub PowerOnSoundAndWait
      'GeneralTimer=600
      'While SoundStartDelay<4 And GeneralTimer>0
      '  GoSub UpdateSound
      'Wend
      SoundTemp=028 ' N
      GoSub QueueSound
      GoSub WaitForSound
      GoSub PowerOffSound
    EndIf
  Else
    Select GameStatus
      Case 1
        If DetectResult=1 Then
          GoSub PowerOnSound
          GeneralTimer=600
          While SoundStatus<4 And GeneralTimer>0
            GoSub UpdateSound
          Wend
          SoundTemp=125 ' NC
          GoSub QueueSound
          GoSub WaitForSound
          GoSub PowerOffSound
        EndIf
      Case 2
        If DetectResult=1 Then
          GoSub TokenPresented
          GoSub IdleCentreUpdate
        EndIf
        If AnimationCycles>0 Then
          Dec AnimationCycles
        Else
          AnimationCycles=IdleAnimationDelay
          GoSub PlayOwnerAnimation
        EndIf
      Case 3
        If DetectResult=1 Then
          GoSub PowerOnSound
          GeneralTimer=600
          While SoundStatus<4 And GeneralTimer>0
            GoSub UpdateSound
          Wend
          SoundTemp=126 ' NC
          GoSub QueueSound
          GoSub UpdateSound
          SoundTemp=100+WinningTeam+TeamSoundOffset[WinningTeam] ' N
          GoSub QueueSound
          GoSub WaitForSound
          GoSub PowerOffSound         
        EndIf
        RecentCapture=RecentCaptureValue
        GoSub PlayWinnerAnimation
    EndSelect
  EndIf
  
  If GameStatus<3 Then
    Select IdleRFIDGap
      Case 1
        GoSub Snooze128ms
      Case 2
        GoSub Snooze256ms
      Case 3
        GoSub Snooze512ms
      Case 4
        GoSub Snooze512ms
        GoSub Snooze256ms
      Case 5
        GoSub Snooze1s
      Case 6
        GoSub Snooze1s
        GoSub Snooze256ms
      Case 7
        GoSub Snooze1s
        GoSub Snooze512ms
      Case 8
        GoSub Snooze1s
        GoSub Snooze512ms
        GoSub Snooze256ms
      Case 9
        GoSub Snooze2s
    EndSelect
    'GoSub Snooze2s
  EndIf
  If TamperLatch=1 Then GoSub TamperDetected
  
  If RecentCapture>0 Then
    Dec RecentCapture
  EndIf

  If EarlyCheckin>0 Then
    Dec EarlyCheckin
    If EarlyCheckin=0 Then
      Clear NextPoll
    EndIf
  EndIf
  If NextPoll=0 And WifiConfigBad=0 Then
    If PeriodicDiags=0 Then 
      Set DiagSilent
      GoSub SelfTest
      PeriodicDiags=IdleDiagInterval
    Else
      Dec PeriodicDiags
    EndIf
    NextPoll=IdleAliveInterval ' about every 6 minutes
    'NextPoll=15
    GoSub PowerOnWiFi
    While WiFiPowerOnTimeout>0 And WiFiConnected=0
      If RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
    Wend
    If WiFiConnected=1 Then
      Clear ReceivedGameStatus
      Clear AliveAcknowledged
      GeneralTimer=200
      If OwnerStatusReceived=0 Then GoSub DoOwnerStatusQuery
      'GoSub DoGameStatusQuery
      GoSub DoAlivePoll
      While GeneralTimer>0
        If RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
        If ReceivedGameStatus=1 Or AliveAcknowledged=1 Then Break
      Wend
    EndIf
    GoSub PowerOffWiFi
  Else
    Dec NextPoll
  EndIf
  GoSub IdleCentreUpdate
  GoTo DetectionLoop

DoGameStatusQuery:  
  WiFiCMD[1]="s"
  GoTo GeneralStatusQuery

DoOwnerStatusQuery:
  ' Request game details
  WiFiCMD[1]="o"

GeneralStatusQuery:
  WiFiCMD[0]="Q"
  WiFiCMD[2]=0
  GoSub SendWiFiCMD
  GeneralTimer=100
  While TXInProgress=1 And GeneralTimer>0
  Wend
Return

IdleCentreUpdate:
  GoSub LED2PowerOn
  'HSVh=CentreIdleHue
  HSVv=80
  HSVs=255
  Select GameStatus
  Case 1 ' Not started yet
    Clear HSVs
    'HSVh=CentreIdleHue
  Case 2 ' Running
    If discs_OwnerTeam>0 Then
      HSVh=TeamColourHue[discs_OwnerTeam]
    Else
      Clear HSVs
      'HSVh=CentreIdleHue
    EndIf
  Case 3
    If WinningTeam>0 Then
      HSVh=TeamColourHue[WinningTeam]
    Else
      'HSVh=CentreIdleHue
      Clear HSVs
    EndIf
  Case Else
    Clear HSVs
    'HSVh=CentreIdleHue
  EndSelect

  GoSub HSV2RGB
  GoSub BlankAllLED2s
  Inc LEDIdleLocation
  If LEDIdleLocation>11 Then Clear LEDIdleLocation
  C=LEDIdleLocation*3
  LED2Data[C]=OutB
  Inc C
  LED2Data[C]=OutR
  Inc C
  LED2Data[C]=OutG
  LED2ByteCount=36
  GoSub SendLEDData
  IdleCentreWait:
  If LED2ByteCount>0 Then GoTo IdleCentreWait
  If ClockCount>0 Then GoTo IdleCentreWait
  DelayMS 1
  GoSub LEDTurnOffHardware
Return

GetBatteryVoltage:
  Input VoltageSensor
  Set ANSELC.0 '  Set To analog
  FVRCON=%10000010 ' Enable 2v voltage ref for ADC
  WaitForFVR:
  If FVRCON.6=0 Then GoTo WaitForFVR
    
  'ADCON1=%11100000 ' Right justified result. Fosc/64 clock used.  vRef is Vdd
  ADCON1=%11100011 ' Right justified result. Fosc/64 clock used.  vRef is FVR (2v)
  ADCON0=%01000001 ' Set source at port C0 and turn on ADC
  DelayMS 2
  Set ADCON0.1  ' Start the conversion
  WaitForBatteryRead:
  If ADCON0.1=1 Then GoTo WaitForBatteryRead
  Nop
  BatteryVoltage.LowByte=ADRESL
  BatteryVoltage.HighByte=ADRESH
  Clear ADCON0
  Clear ANSELC.0
  Clear FVRCON ' Turn of fixed voltage reference  
  Return
  

Dim SavedSoundLevel As Byte
Dim cmdMenu As Byte
CommandMode:
  Clear cmdMenu
  SavedSoundLevel=SoundLevel
  SoundLevel=25
  GoSub PowerOnSound
  GoSub PowerOnWiFi
  GoSub LED1PowerOn
  GoSub LED2PowerOn
  
  CaptureTimer=600 ' 15 seconds 
  While CaptureTimer>0 And SoundStatus<3
    GoSub UpdateSound   
    'GoSub UpdateAnimation
  Wend
  LEDActiveAnimation=8
  GoSub PlayAnimation
  
  SoundTemp=79 ' Command mode
  GoSub QueueSound
  GoSub UpdateSound   

  'GeneralTimer=500 ' 10 seconds
  cmdMenu=5
  Dim InhibitCommand As Bit
  Set InhibitCommand
  CaptureTimer=150
  
CMLoop: 
  If CaptureTimer=0 And cmdMenu<90 Then
    If cmdMenu>=11 Then Clear cmdMenu
    Inc cmdMenu
    Clear InhibitCommand
    SoundTemp=cmdMenu + 80
    GoSub QueueSound
    CaptureTimer=125 ' 2.5 seconds
  EndIf  

  'If cmdMenu=98 Then
  '  Inc cmdMenu
  '  CaptureTimer=400 ' 10 seconds 
  'EndIf

  'If cmdMenu=99 Then
  '    GoSub IsSoundPlaying
  '    If SoundPlaying=0 Or CaptureTimer=0 Then cmdMenu=100
  'End If

  'If cmdMenu=100 Then
  '  GoSub PowerOffWiFi
  '  GoSub LED1PowerOff
  '  GoSub PowerOffSound
  '  DelayMS 2000 ' to avoid a double tap the command RFID card
  '  Clear cmdMenu
  '  SoundLevel=SavedSoundLevel
  '  Return
  'EndIf

  If cmdMenu<90 And InhibitCommand=0 Then
    Clear CommandMatched
    GoSub DetectRFID
    If ReqSetLocation=1 Then
      cmdMenu=8
      Set CommandMatched
      Clear ReqSetLocation
    EndIf
    If ReqPowerOff=1 Then
      cmdMenu=7
      Set CommandMatched
      Clear ReqPowerOff
    EndIf
    If ReqExitCMD=1 Then
      cmdMenu=1
      Set CommandMatched
      Clear ReqExitCMD
    EndIf
    If ReqDiags=1 Then
      cmdMenu=2
      Set CommandMatched
      Clear ReqDiags
    EndIf
    If JumpCMDFound=1 Then
      SoundTemp=cmdMenu + 80
      GoSub QueueSound
      GoSub UpdateSound
      GoSub WaitForSound
      Clear JumpCMDFound
    EndIf
    If CommandMatched=1 Then
      Select cmdMenu
      Case 1 ' Exit command mode
        GoSub PowerOffWiFi
        GoSub LED1PowerOff
        GoSub LED2PowerOff
        GoSub PowerOffSound
        DelayMS 2000 ' to avoid a double tap the command RFID card
        Clear cmdMenu
        SoundLevel=SavedSoundLevel
        Return
        'SoundTemp=092
        'GoSub QueueSound
        'cmdMenu=99
      Case 2 ' Diagnostics
        GoSub PowerOffWiFi
        Clear DiagSilent
        GoSub SelfTest
      Case 3 ' Take offline
        SoundTemp=092
        GoSub QueueSound
        GoSub UpdateSound
        While WiFiPowerOnTimeout>0 And WiFiConnected=0
          GoSub IdleTasks
        Wend
        If WiFiConnected=0 Then
          SoundTemp=069 ' N
          GoSub QueueSound
        Else
          WiFiCMD[0]="O"
          Clear WiFiCMD[1]
          GoSub SendWiFiCMD
          SoundTemp=070 ' N
          GoSub QueueSound
          CaptureTimer=500
          While CaptureTimer>0
            GoSub UpdateSound
          Wend
          GoTo PowerOff
        EndIf
      Case 4 ' Disable tampter detection
        Set DisableTamperDetection
        SoundTemp=092
        GoSub QueueSound
      Case 5 ' Wipe keys
        SoundTemp=092
        GoSub QueueSound
        GoSub UpdateSound
        While WiFiPowerOnTimeout>0 And WiFiConnected=0
          GoSub IdleTasks
        Wend
        Clear WiFiEncryptionKeysWiped  
        WiFiCMD[0]="W"
        WiFiCMD[1]="0"
        WiFiCMD[2]=0
        GoSub SendWiFiCMD
      
        'SoundTemp=66
        ;GoSub QueueSound
        CaptureTimer=250
        While CaptureTimer>0
          GoSub IdleTasks
          If WiFiEncryptionKeysWiped=1 Then Break
        Wend
        If WiFiEncryptionKeysWiped=1 Then
          SoundTemp=66
          GoSub QueueSound
        EndIf
      Case 6 ' Battery Voltage
        GoSub GetBatteryVoltage
        GoSub SayBatteryVoltage
      Case 7 ' Turn off
        GoTo PowerOff
      Case 8 ' Report location
        SoundTemp=092 ' NC
        GoSub QueueSound
        GoSub UpdateSound
        While WiFiPowerOnTimeout>0 And WiFiConnected=0
          GoSub IdleTasks
        Wend
        If WiFiConnected=0 Then
          SoundTemp=069 ' N
          GoSub QueueSound
        Else
          WiFiCMD[0]="L"
          Clear WiFiCMD[1]
          GoSub SendWiFiCMD
          SoundTemp=070 ' N
          GoSub QueueSound
          CaptureTimer=100
          While CaptureTimer>0
            GoSub UpdateSound
          Wend
        EndIf
      Case 9 ' In place swap
        SoundTemp=092 ' NC
        GoSub QueueSound
        GoSub UpdateSound
        While WiFiPowerOnTimeout>0 And WiFiConnected=0
          GoSub IdleTasks
        Wend
        If WiFiConnected=0 Then
          SoundTemp=069 ' N
          GoSub QueueSound
        Else
          Clear DiscSwapCompleted
          Clear DiscSwapFailed
          WiFiCMD[0]="S"
          Clear WiFiCMD[1]
          GoSub SendWiFiCMD
          CaptureTimer=100
          While CaptureTimer>0
            GoSub IdleTasks
            If DiscSwapCompleted=1 Then
              SoundTemp=031 ' N
              GoSub QueueSound
              Break
            EndIf
            If DiscSwapFailed=1 Then
              SoundTemp=032 ' N
              GoSub QueueSound
              Break
            EndIf
          Wend
          GoSub UpdateSound
        EndIf
      Case 10 ' Put online  
        SoundTemp=092 ' NC
        GoSub QueueSound
        GoSub UpdateSound
        While WiFiPowerOnTimeout>0 And WiFiConnected=0
          GoSub IdleTasks
        Wend
        If WiFiConnected=0 Then
          SoundTemp=069 ' N
          GoSub QueueSound
        Else
          WiFiCMD[0]="X"
          Clear WiFiCMD[1]
          GoSub SendWiFiCMD
          SoundTemp=070 ' N
          GoSub QueueSound
          CaptureTimer=500
          While CaptureTimer>0
            GoSub UpdateSound
          Wend
          GoTo PowerOff
        EndIf
      Case 11 ' Deplete BatteryVoltage
        SoundTemp=092 ' NC
        GoSub QueueSound
        GoSub UpdateSound
        GoSub DepleteBattery
      EndSelect
      GoSub WaitForSound
      CaptureTimer=100
    EndIf
  EndIf
  GoSub IdleTasks
  GoTo CMLoop



  SelfTest:
  Dim DiagResult As Word
  Dim DiagSilent As Bit
  Dim SoundOnAlready As Bit

  ' Result Bits
  '  0 - RFID Reader Present
  '  1 - RFID Reader Power Management Worked
  '  2 - Low Battery
  '  3 - Battery Critical
  '  4 - Battery OK
  '  5 - DFR Module Online 
  '  6 - DFR Module Ready
  '  7 - WiFi Connected
  '  8 - WiFi Time Failed
  '  9 - WiFi MQTT Failed
  ' 10 - WiFi PingPong Test
  ' 11 - WiFi Powerdown Test
  ' 12 - Tamper switch not pressed
  ' 13 - Tamper switch toggle detected when asked
  ' 14 - WiFi has encrypton keys
  ' 15 - WiFi failed to join SSID network
  
  SavedSoundLevel=SoundLevel
  SoundLevel=12
  Clear DiagResult
  Set DisableTamperDetection
  If DFRPower=1 Then Set SoundOnAlready
  GoSub PowerOnSound

  While SoundStatus<4
    GoSub UpdateSound
  Wend
  
  'DiagResult.5=DFROnline
  'DiagResult.6=DFRReady

  If DiagSilent=0 Then
    SoundTemp=13
    GoSub QueueSound
    GoSub UpdateSound

  EndIf
  
  GoSub RC522_DetectReader
  DiagResult.0 = RC522ReaderPresent  ' Set to 1 if the reader is present
  If RC522ReaderPresent=1 Then
    SoundTemp=15
  Else
    SoundTemp=14
  End If
  If DiagSilent=0 Then
    GoSub QueueSound
    GoSub UpdateSound
  EndIf

  If RC522ReaderPresent=1 Then
    GoSub RC522_DetectPowerDown
    DiagResult.1 = RC522ReaderPresent  ' Set to 1 if the reader doesn't respond while in a reset state
    If DiagSilent=0 Then
      If RC522ReaderPresent=1 Then
        SoundTemp=17
      Else
        SoundTemp=16
      End If
      GoSub QueueSound
    EndIf
  End If
  GoSub UpdateSound
  
  GoSub GetBatteryVoltage
  If BatteryVoltage<LowBatteryThreshold Then Set DiagResult.2 ' Low battery
  If BatteryVoltage<CritialBatteryThreshold Then Set DiagResult.3 ' Battery below critical
  If BatteryVoltage>=LowBatteryThreshold Then Set DiagResult.4 ' Battery above safe voltage
  If DiagSilent=0 Then
    GoSub WaitForSound
    GoSub SayBatteryVoltage
    GoSub WaitForSound
    
    SoundTemp=50
    GoSub QueueSound
    GoSub UpdateSound
    DelayMS 100
  EndIf
  
  GoSub PowerOnWiFi
  Clear WiFiOnSent
  While WiFiPowerOnTimeout>0
    GoSub UpdateSound
    If RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
    If WiFiPoweredOnOK=1 And WiFiOnSent=0 Then
      If DiagSilent=0 Then
        SoundTemp=51 ' 
        GoSub QueueSound
      EndIf
      Set WiFiOnSent
    EndIf
    If WiFiConnected=1 Then Break
  Wend
  DiagResult.7=WiFiConnected
  DiagResult.8=WiFiTimeFailed
  DiagResult.9=WiFiMQTTFailed
  DiagResult.15=WiFiFailedToJoinSSID
  
  If DiagSilent=0 Then
    If WiFiFailedToJoinSSID=1 Then
      SoundTemp=65 ' NC
      GoSub QueueSound
    EndIf
    If WiFiTimeFailed=1 Then
      SoundTemp=25 ' NC
      GoSub QueueSound
    End If
    If WiFiMQTTFailed=1 Then
      SoundTemp=26 ' NC
      GoSub QueueSound
    End If
    If WiFiConnected=1 Then
      SoundTemp=19 ' NC
      GoSub QueueSound
    Else
      SoundTemp=18 ' NC
      GoSub QueueSound
    End If
    GoSub UpdateSound
  EndIf
  Clear WiFiPingPong
  WiFiCMD[0]="B"
  WiFiCMD[1]=0
  GoSub SendWiFiCMD
  GeneralTimer=50
  While GeneralTimer>0
    If RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
    If WiFiPingPong=1 Then Break
  Wend
  If WiFiPingPong=1 Then
    SoundTemp=52
    Set DiagResult.10
  Else
    SoundTemp=53
    Clear DiagResult.10
  End If
  If DiagSilent=0 Then
    GoSub QueueSound
    GoSub UpdateSound
  EndIf

  Clear WiFiHasKeys
  Clear WiFiNoKeys
  If WiFiPingPong=1 Then
    WiFiCMD[0]="E"
    WiFiCMD[1]=0
    GoSub SendWiFiCMD
    GeneralTimer=50
    While GeneralTimer>0
      If RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
      If WiFiHasKeys=1 Then Break
      If WiFiNoKeys=1 Then Break
    Wend
    If WiFiHasKeys=1 Then
      SoundTemp=63
      Set DiagResult.14
    Else
      SoundTemp=64
    EndIf
    If DiagSilent=0 Then
      GoSub QueueSound
      GoSub UpdateSound
    EndIf
  EndIf

  GoSub PowerOffWiFi
  GeneralTimer=100
  While GeneralTimer>0
    GoSub UpdateSound
    If RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
  Wend

  If WiFiPingPong=1 Then
    Clear WiFiPingPong
    WiFiCMD[0]="B"
    WiFiCMD[1]=0
    GoSub SendWiFiCMD
    GeneralTimer=50
    While GeneralTimer>0
      If RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
      If WiFiPingPong=1 Then Break
    Wend
    If WiFiPingPong=1 Then
      ' Shouldn't happen - WiFi should be powered off now
      SoundTemp=54
      Clear DiagResult.11
    Else
      SoundTemp=55
      Set DiagResult.11
    End If
    If DiagSilent=0 Then
      GoSub QueueSound
      GoSub UpdateSound
    EndIf
  EndIf
  
  If DiagResult.7=1 Then
    GoSub PowerOnWiFi
    While WiFiPowerOnTimeout>0
      GoSub UpdateSound
      If RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
      If WiFiConnected=1 Then Break
    Wend
    
  EndIf
  
  DiagResult.12=TamperSwitch
  If DiagSilent=0 Then
    If TamperSwitch=1 Then
      ' Tamper switch pressed
      SoundTemp=56
    Else
      SoundTemp=57
    EndIf
    GoSub QueueSound
    GoSub WaitForSound
    If TamperSwitch=0 Then
      SoundTemp=58
      GoSub QueueSound
      GeneralTimer=250
      Clear DiagTempW
      While GeneralTimer>0
        GoSub UpdateSound
        If TamperSwitch=1 Then Inc DiagTempW
        If DiagTempW>30 Then Break
      Wend
      If DiagTempW>30 Then
        SoundTemp=59
        GoSub QueueSound
        GoSub UpdateSound
        Set DiagResult.13
      Else
        SoundTemp=60
        GoSub QueueSound
        GoSub UpdateSound
      EndIf
    EndIf
  EndIf
  If WiFiPoweredOnOK=1 Then 
    GoSub PowerOffWiFi
    GeneralTimer=100
    While GeneralTimer>0
      GoSub UpdateSound
      If RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
    Wend
  EndIf    

  If DiagSilent=0 Then
    SoundTemp=22  
    GoSub QueueSound
    GoSub WaitForSound
  EndIf
  
  If SoundOnAlready=0 Then
    GoSub PowerOffSound
  EndIf

  SoundLevel=SavedSoundLevel
  'Clear DisableTamperDetection
Return



SayBatteryVoltage:
  SoundTemp=12
  GoSub QueueSound
  SoundTemp=(BatteryVoltage / 167) ' SoundTemp=BatteryVoltage / 156
  'SoundTemp=160 + (BatteryVoltage / 167) ' SoundTemp=BatteryVoltage / 156
  GoSub QueueSound
  SoundTemp=10
  GoSub QueueSound
  DiagTempW.LowByte=BatteryVoltage // 167
  SoundTemp=(DiagTempW.LowByte / 16.7)
  'SoundTemp=160 + (DiagTempW.LowByte / 16.7)
  GoSub QueueSound
  DiagTempW.HighByte=DiagTempW.LowByte // 16.7
  SoundTemp=(DiagTempW.HighByte / 1.67)
  'SoundTemp=160+ (DiagTempW.HighByte / 1.67)
  GoSub QueueSound
  SoundTemp=11 
  GoSub QueueSound
  Return

  
DepleteBattery:
  GoSub PowerOnSoundAndWait

  SoundTemp=039 ' N
  GoSub QueueSound
  GoSub GetBatteryVoltage
  GoSub SayBatteryVoltage
  GoSub LED1PowerOn
  GoSub LED2PowerOn
  LEDActiveAnimation=10
  GoSub SendLEDData
  GeneralTimer=500
  While GeneralTimer>0
    GoSub UpdateSound
  Wend
  Clear CommandMatched
  GeneralTimer=5000
DepleteLoop:
  GoSub UpdateSound
  GoSub DetectRFID
  If CommandMatched=1 Then Return
'    GoSub GetBatteryVoltage
'    GoSub SayBatteryVoltage
'    GoSub UpdateSound
'    LEDActiveAnimation=8
'    Return
'  EndIf
  If GeneralTimer=0 Then
    GoSub GetBatteryVoltage
    GoSub PowerOnWiFi
    While WiFiPowerOnTimeout>0 And WiFiConnected=0
      If RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
    Wend
    If WiFiConnected=1 Then
      Clear ReceivedGameStatus
      Clear AliveAcknowledged
      GeneralTimer=200
      GoSub DoAlivePoll
      While GeneralTimer>0
        If RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
        If ReceivedGameStatus=1 Or AliveAcknowledged=1 Then Break
      Wend
    EndIf
    GoSub PowerOffWiFi
    If BatteryVoltage<LowBatteryThreshold Then
      ' Battery now at depleted state
      GoTo PowerOff
  EndIf
    GeneralTimer=10000
  EndIf
  GoTo DepleteLoop

' RFID Reader Code
RC522_DetectReader:
  Clear RC522ReaderPresent
  For vstemp=1 To 5
    Set RFIDShutdown
    DelayMS 1
    GoSub RC522_Reset
    DelayMS 1
    Clear RC522_Value
    RC522_Address=RC522_Reg_VersionReg
    GoSub RC522_Read
    Clear RFIDShutdown
    If RC522_Value=0 Then Return
    If RC522_Value=255 Then Return
    If vstemp=1 Then
      RC522_TokenLen=RC522_Value
    Else
      If RC522_TokenLen<>RC522_Value Then Return
    End If
    DelayMS 20
  Next
  Set RC522ReaderPresent
  Return

  RC522_DetectPowerDown:
  Set RC522ReaderPresent
  Clear RFIDShutdown
  DelayMS 1
  GoSub RC522_Reset
  DelayMS 1
  Clear RC522_Value
  RC522_Address=RC522_Reg_VersionReg
  GoSub RC522_Read
  If RC522_Value=0 Then Return
  If RC522_Value=255 Then Return
  Clear RC522ReaderPresent
  Return

IdleTasks:
  If RX1CommandReceived=1 Then GoSub ProcessWiFiMessage 
  If TamperLatch=1 Then GoSub TamperDetected
  GoSub UpdateSound
  GoSub UpdateAnimation
Return

WaitForSound:
  SoundTimeout=800 ' 20 seconds 
  GoSub IsSoundPlaying
  While SoundPlaying=1 Or SoundTimeout=0
    GoSub IdleTasks
    GoSub IsSoundPlaying
  Wend
Return

Symbol Start_Byte = $7E
Symbol Version_Byte = $FF
Symbol Command_Length = $06
Symbol End_Byte = $EF
Symbol Acknowledge = $01
'Symbol Acknowledge = $00


IsSoundPlaying:
  Set SoundPlaying
  If SoundStatus<2 Then Clear SoundPlaying
  If SoundStatus=4 Then
    If SQNext=SQTail Then Clear SoundPlaying
  EndIf
Return

QueueSound:
  SoundQueue[SQNext]=SoundTemp
  Inc SQNext
  If SQNext=SoundQueueLength Then Clear SQNext
Return

Dim SoundRspRetryCount As Byte

PowerOnSoundAndWait:
  GoSub PowerOnSound
  GeneralTimer=600
  While SoundStartDelay<4 And GeneralTimer>0
     GoSub UpdateSound
  Wend
  Return
  
PowerOnSound:
  If DFRPower=1 Then
    ' Should never happen.  We should only call this if the module is off.  Turn off sound for 1 second if this happens.
    Clear DFRPower
    SoundPowerOnTimeout=50
    While SoundPowerOnTimeout>0
      If RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
      If TamperLatch=1 Then GoSub TamperDetected
    Wend
  EndIf
  
  Set DFRPower
  GoSub ClearSoundFlags
  SoundStatus=1
  Clear RX2BufPos
  Clear RX2CommandReceived
  SoundCmdPos=SoundCmdBufferLength
  ' Configure serial ports for 9600bps
  BAUD2CON=%00001000 ' TX idles high.  16bit baud rate
  SP2BRGL=64
  SP2BRGH=3
  TX2STA=%00100110    
  RC2STA=%10010000
  Set PIE3.7  ' RX2 Interrupt

  SoundPowerOnTimeout=120 ' 3 seconds
  Clear SQNext
  Clear SQTail
  Input SerialInDFR
  Output SerialOutDFR
  Return

ClearSoundFlags:
  Clear SoundRspError
  Clear SoundRspCardInsert
  Clear SoundRspCardRemove 
  Clear SoundCmdAck 
  Clear SoundFinishedPlaying 
  Clear SoundPoweredOn
Return

Dim SoundVolumeSetRequested As Bit

UpdateSound:

  If RX2CommandReceived=1 Then
    Clear RX2CommandReceived
    If RX2Buffer[0]=0x7E And RX2Buffer[1]=0xFF And RX2Buffer[2]=0x06 And RX2Buffer[9]=0xEF Then
      ' We have a command in the buffer
      Select RX2Buffer[3]
        Case 0x41 ' Command Received
          Set SoundCmdAck
        Case 0x40 ' Module returned $error
          Set SoundRspError
        Case 0x3A ' Card inserted
          Set SoundRspCardInsert
        Case 0x3B ' Card removed
          Set SoundRspCardRemove  
        Case 0x3D ' Finished playing track from TF card
          Set SoundFinishedPlaying
        'Case 0x3E ' Finished SoundPlaying
        Case 0x3F ' Powered on
          If SoundStatus=1 Then Set SoundPoweredOn
      EndSelect
    EndIf
    Clear RX2Buffer
  EndIf

  ' Retry last command a few times if we get a negative response
  If SoundRspError=1 Then
    Clear SoundRspError
    Inc SoundRspRetryCount
    If SoundRspRetryCount<4 Then
      SoundCmdPos=1
      TX2REG=Start_Byte
      Set PIE3.6
      SoundStartDelay=60
    EndIf
  EndIf

  Select SoundStatus
    Case 1
      ' Module power enabled, so wait for an awake response or the power on timeout
      If SoundPowerOnTimeout=0 Then Set SoundPoweredOn
      If SoundPoweredOn=1 Then
        Inc SoundStatus
        SoundStartDelay=5 ' Just over 100ms
      EndIf
    Case 2
      ' Module powered on, so once ready set the volume
      If SoundStartDelay=0 Then
        Clear SoundCmdAck
        Inc SoundStatus
        cmd=$06
        cmdp1=0
        cmdp2=SoundLevel
        If TamperLatch=1 Then cmdp2=30
        GoSub SendSoundCmd
        SoundStartDelay=20 ' 500ms Wait
      EndIf
    Case 3
      ' Waiting on command to be acknowledged (not playing audio)
      If SoundStartDelay=0 Then Set SoundCmdAck ' If it times out then proceed anyway 
      If SoundCmdAck=1 Then
        SoundStartDelay=5
        Inc SoundStatus
      EndIf
    Case 4
      ' Ready to play audio if available 
      If SoundVolumeSetRequested=1 Then
        Clear SoundVolumeSetRequested
        SoundStatus=2
      ElseIf SQNext<>SQTail Then
        cmdp2=SoundQueue[SQTail]
        Inc SQTail
        If SQTail=SoundQueueLength Then Clear SQTail
        cmd=$03
        cmdp1=0
        GoSub SendSoundCmd
        GoSub ClearSoundFlags
        Clear SoundRspRetryCount
        Inc SoundStatus
        SoundStartDelay=60 ' 1.5 seconds, the sound takes 1 second to start.
        Clear NextSoundNow
      EndIf
    Case 5
      ' Audio has been started
      If SoundStartDelay=0 Then  ' only interested if this timer has finished
        If DFRBusy=1 Then Set SoundFinishedPlaying
        If NextSoundNow=1 Then
          Clear NextSoundNow
          SoundStatus=4
        EndIf
        If SoundFinishedPlaying=1 Then
          SoundStatus=4
        EndIf
      EndIf
  EndSelect
Return
 
Dim SoundRspError As Bit
Dim SoundRspCardInsert As Bit
Dim SoundRspCardRemove As Bit
Dim SoundCmdAck As Bit
Dim SoundFinishedPlaying As Bit
Dim SoundPoweredOn As Bit
Dim SoundStatus As Byte

PowerOffSound:
  Input SerialOutDFR
  Clear PIE3.7  ' RX2 Interrupt
  Clear PIE3.6 ' TX2 Interrupt 
  ' Power down serial port
  Clear TX2STA
  Clear RC2STA
  Clear DFRPower
  Clear SoundStatus
  Return


SendSoundCmd:
  Clear SoundCmdAck
  Clear SoundRspError
  SoundTempW=-(Version_Byte + Command_Length + cmd + Acknowledge + cmdp1 + cmdp2)
  'SoundCmd[0]=Start_Byte ' Don't need this we send it manually
  SoundCmd[1]=Version_Byte
  SoundCmd[2]=Command_Length
  SoundCmd[3]=cmd
  SoundCmd[4]=Acknowledge
  SoundCmd[5]=cmdp1
  SoundCmd[6]=cmdp2
  SoundCmd[7]=SoundTempW.HighByte
  SoundCmd[8]=SoundTempW.LowByte
  SoundCmd[9]=End_Byte
  SoundCmdPos=1
  TX2REG=Start_Byte
  Set PIE3.6
  Return

Dim CycleCount As Byte
Dim InTamperState As Bit
Dim VolumeReset As Bit
TamperDetected:
  Clear CycleCount
  If InTamperState=1 Then Return  
  Set InTamperState
  Set SoundVolumeSetRequested
  GoSub PowerOnWiFi
  If DFRPower=0 Then GoSub PowerOnSound
  GoSub LED1PowerOn
  GoSub LED2PowerOn
  LEDActiveAnimation=9
  GoSub PlayAnimation
  SoundTemp=033 ' N
  GoSub QueueSound
  SoundTemp=034 ' N
  GoSub QueueSound
  'SoundTemp=033 ' N
  'GoSub QueueSound
  'SoundTemp=034 ' N
  'GoSub QueueSound
  While WiFiPowerOnTimeout>0 And WiFiConnected=0
    If RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
    GoSub UpdateSound
    GoSub UpdateAnimation
  Wend
  WiFiCMD="Hswitch"
  GoSub SendWiFiCMD
  GeneralTimer=50
  While GeneralTimer>0
    If RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
    GoSub UpdateSound
    GoSub UpdateAnimation
  Wend
  GeneralTimer=500
  TamperDetectedLoop:

  GoSub UpdateAnimation
  GoSub UpdateSound
  If SQTail=SQNext Then
    If CycleCount<10 Then
      SoundTemp=033 ' N
      GoSub QueueSound
      SoundTemp=034 ' N
      GoSub QueueSound
      Inc CycleCount
    EndIf
  EndIf
  If GeneralTimer=0 Then
    Clear PaymentCardType
    GoSub DetectRFID
    If CommandMatched=1 Then
      ' This is command mode
      GoSub PowerOffSound
      GoSub PowerOffWiFi
      Clear TamperLatch
      Clear SQTail
      Clear SQNext
      GoSub LED1PowerOff
      DelayMS 1000
      GoSub CommandMode
      Clear CommandMatched
      Clear InTamperState
      Return
    EndIf
    GeneralTimer=100
  EndIf
  GoTo TamperDetectedLoop

Dim LEDHardwareReady As Bit
Dim LEDActiveBuffer As Bit

LEDConfigureHardware:
  CLC1GLS0  = 0x05
  CLC1GLS1  = 0x10
  CLC1GLS2  = 0x08
  CLC1GLS3  = 0x20
  CLC1SEL0  = 0x14
  CLC1SEL1  = 0x25
  CLC1SEL2  = 0x24
  CLC1SEL3  = 0x00
  CLC1POL   = 0x01
  CLC1CON   = 0x80
  
  T2CLKCON=%00000001 ' Fosc/4
  't2con=%10000001 ' Timer 2 on with 1:2 post scaler
  T2CON=%10000000 ' Timer 2 on with no post scaler
  T2HLT=0
  T2PR=0x4
  T2RST=0
  T2TMR=0
  
  PWM6CON=0x80
  PWM6DCH=2
  PWM6DCL=0x40
  
  SSP2ADD=1
  SSP2CON1=0x23
  SSP2CON2=0
  SSP2CON3=0
  SSP2MSK=0xFF
  SSP2STAT=0x40
  Set LEDHardwareReady
Return

LEDTurnOffHardware:
  Clear PWM6CON
  Clear T2CON
  Clear SSP2CON1
  Clear CLC1CON
  Clear LEDHardwareReady
  Clear LEDActiveAnimation
Return

LED1PowerOn:
  SetPin NeoPixelPower1
  If LEDHardwareReady=0 Then GoSub LEDConfigureHardware
  Output NeoPixelOut1
  ClearPin NeoPixelOut1
  Return

LED2PowerOn:
  SetPin NeoPixelPower2
  If LEDHardwareReady=0 Then GoSub LEDConfigureHardware
  Output NeoPixelOut2
  ClearPin NeoPixelOut2
  Return

LED1PowerOff:
  Input NeoPixelOut1
  ClearPin NeoPixelPower1
  If NeoPixelPower2=0 Then GoSub LEDTurnOffHardware
  Return 
  
LED2PowerOff:
  Input NeoPixelOut2
  Clear NeoPixelPower2
  If NeoPixelPower1=0 Then GoSub LEDTurnOffHardware
  Return 

SendLEDData:
  Set PIR3.2 ' Make sure we trigger an interrupt the moment it is enabled, no matter what.
  Set PIE3.2 ' enable MSSP2 (SPI) interrupts
  Return

Dim OwnerAnimationCount As Byte
Dim C As Byte
Dim FrameTemp As Word
Dim Ftemp As Byte

PlayWinnerAnimation:
  C=discs_OwnerTeam
  discs_OwnerTeam=WinningTeam
  GoSub PlayOwnerAnimation
  discs_OwnerTeam=C
  Return

PlayOwnerAnimation:
  GoSub LED1PowerOn
  Clear LEDFrame
  If OwnerAnimationCount>3 Then Clear OwnerAnimationCount
  If discs_OwnerTeam=0 Then
    OwnerAnimationCount=99
  Else
    HSVh=TeamColourHue[discs_OwnerTeam]
  EndIf
  HSVs=255
  POAnimLoop:
  Select OwnerAnimationCount
  Case 0
    GoSub OwnerFlash1
  Case 1
    GoSub OwnerFlash2
  Case 2,3
     GoSub OwnerLoop1
  Case 99
    GoSub UncapturedFlash
  EndSelect
  LED1ByteCount=51
  GoSub SendLEDData
  LEDLastFrame=LEDFrame
  While LEDLastFrame=LEDFrame
  Wend
  If LEDFrame>0 Then GoTo POAnimLoop
  If RecentCapture>0 Then GoSub PlayRecentCapture
  GoSub BlankAllLED1s
  LED1ByteCount=51
  GoSub SendLEDData
  While ClockCount>0
    GoSub IdleTasks
  Wend
  DelayMS 1
  GoSub LED1PowerOff
  Inc OwnerAnimationCount
Return

PlayRecentCapture:
  LEDFrame=20
  GoSub WhiteLED1Flash
  GoSub SendLEDData
  While LEDFrame>0
    GoSub IdleTasks
  Wend
Return

' 16009
WhiteLED1Flash: ' Flash a particular colour
  OutR=150
  OutB=150
  OutG=150
  GoSub LoadAllLED1s
  LED1ByteCount=51
Return

WhiteLED2Flash: ' Flash a particular colour
  OutR=150
  OutB=150
  OutG=150
  GoSub LoadAllLED2s
  LED2ByteCount=36
Return
                  
UncapturedFlash:
  If LEDFrame=0 Then LEDFrame=20
  HSVv=150
  FrameTemp.LowByte=TotalTeams
  For C=0 To 50 Step 3
    HSVh=TeamColourHue[FrameTemp.LowByte]
    GoSub HSV2RGB
    LED1Data[C]=OutB
    LED1Data[C+1]=OutR
    LED1Data[C+2]=OutG
    Dec FrameTemp.LowByte
    If FrameTemp.LowByte=0 Then FrameTemp.LowByte=TotalTeams
  Next
Return

OwnerFlash1: ' Flash a particular colour
  If LEDFrame=0 Then LEDFrame=20
  'HSVs=255
  HSVv=255
  GoSub HSV2RGB
  GoSub LoadAllLED1s
Return

OwnerFlash2: ' flash alternate LEDs back and forth
  If LEDFrame=0 Then LEDFrame=40
  GoSub BlankAllLED1s
  'HSVs=255
  HSVv=180
  GoSub HSV2RGB 
  If LEDFrame.3=1 Then
    For C=0 To 50 Step 6
      LED1Data[C]=OutB
      LED1Data[C+1]=OutR
      LED1Data[C+2]=OutG
    Next
  Else
    For C=3 To 50 Step 6
      LED1Data[C]=OutB
      LED1Data[C+1]=OutR
      LED1Data[C+2]=OutG
    Next
  EndIf
Return

OwnerLoop1: ' Spin the colour around the string
  If LEDFrame=0 Then LEDFrame=50
  GoSub BlankAllLED1s
  'HSVs=255
  HSVv=200
  GoSub HSV2RGB
  Ftemp=LEDFrame // 3
  FrameTemp = LEDFrame - Ftemp
  If OwnerAnimationCount=3 Then FrameTemp=51-FrameTemp
  LED1Data[FrameTemp]=OutB
  LED1Data[FrameTemp+1]=OutR
  LED1Data[FrameTemp+2]=OutG
  HSVv=80
  GoSub HSV2RGB
  If FrameTemp>2 Then
    LED1Data[FrameTemp-3]=OutB
    LED1Data[FrameTemp-2]=OutR
    LED1Data[FrameTemp-1]=OutG
  EndIf
  If FrameTemp<49 Then
    LED1Data[FrameTemp+3]=OutB
    LED1Data[FrameTemp+4]=OutR
    LED1Data[FrameTemp+5]=OutG
  EndIf
  HSVv=20
  GoSub HSV2RGB
  If FrameTemp>5 Then
    LED1Data[FrameTemp-6]=OutB
    LED1Data[FrameTemp-5]=OutR
    LED1Data[FrameTemp-4]=OutG
  EndIf
  If FrameTemp<46 Then
    LED1Data[FrameTemp+6]=OutB
    LED1Data[FrameTemp+7]=OutR
    LED1Data[FrameTemp+8]=OutG
  EndIf
Return

BlankAllLED1s:
  Clear LED1Data
  Return

BlankAllLED2s:
  Clear LED2Data
  Return

LoadAllLED1s:  ' Make all the LEDs the same colour
  For C=0 To 50 Step 3
    LED1Data[C]=OutB
    LED1Data[C+1]=OutR
    LED1Data[C+2]=OutG
  Next
Return

LoadAllLED2s:  ' Make all the LEDs the same colour
  For C=0 To 35 Step 3
    LED2Data[C]=OutB
    LED2Data[C+1]=OutR
    LED2Data[C+2]=OutG
  Next
Return


Dim PlayerUnknown As Bit
Dim PlayerKnown As Bit
Dim CaptureSucess As Bit
Dim CaptureFailed As Bit
Dim RegisterUserSuccess As Bit
Dim RegisterUserFailed As Bit
Dim WiFiPoweredOnOK As Bit
Dim WifiClockError As Bit
Dim EarlyCheckin As Byte

Dim emfcount As Byte
Dim mchcount As Byte
Dim CCCcount As Byte
Dim randomvalue As Word
Dim LangDelta As Word
Dim BoostResult As Byte
Dim CurrentBoostCount As Byte

ProcessWiFiMessage:
  Clear RX1CommandReceived
  'SoundTemp=len(RX1Buffer)
  'gosub QueueSound
  If Len(RX1Buffer)<5 Then Return
  wifi_tmp=Left$(RX1Buffer,5)
  If wifi_tmp="PWRON" Then Set WiFiPoweredOnOK
  If wifi_tmp="CLKER" Then 
    Set WifiClockError
    SoundTemp=40
    GoSub QueueSound
    GoSub UpdateSound
    GoSub WaitForSound
    GoSub PowerOff
  EndIf
  If wifi_tmp="CFGOK" Then Set WifiConfigValid
  If wifi_tmp="CFGBD" Then Set WifiConfigBad
  If wifi_tmp="TIMEF" Then Set WiFiTimeFailed
  If wifi_tmp="MQTTF" Then Set WiFiMQTTFailed
  If wifi_tmp="TAMPR" Then Set TamperLatch
  If wifi_tmp="ALIVE" Then Set AliveAcknowledged
  If wifi_tmp="AWAKE" Then
    Set WiFiConnected
    Clear WiFiMQTTFailed
    Clear WiFiTimeFailed
    Return
  End If
  
  If wifi_tmp="INITA" Then Set WifiInitSuccess
  If wifi_tmp="INITS" Then 
    Set WifiInitSent
    Clear TXGapTimer
  EndIf

  If wifi_tmp="INITN" Then 
    Set WifiInitNoKeys
    Clear TXGapTimer
  EndIf

  If wifi_tmp="PUNKN" Then
    Set PlayerUnknown
    wifi_tmp=""
    Clear msgCount
    RX1Buffer=RX1Buffer + ","
    For n=7 To Len(RX1Buffer)
      tmpstr=Mid$(RX1Buffer,n,1)
      If tmpstr="," Then
        ' end of segment
        Inc msgCount
        If msgCount=1 Then
          emfcount=Val(wifi_tmp,Dec)
        EndIf
        If msgCount=2 Then 
          mchcount=Val(wifi_tmp,Dec)
        EndIf
        If msgCount=3 Then 
          CCCcount=Val(wifi_tmp,Dec)
        EndIf
        If msgCount=4 Then 
          randomvalue=Val(wifi_tmp,Dec)
        EndIf
        wifi_tmp=""
      Else
        wifi_tmp=wifi_tmp +  tmpstr
      EndIf
    Next
  EndIf
  
  If wifi_tmp="PLAYR" Then
    ' We did get a successful result, so save the details
    wifi_tmp=""
    Clear msgCount
    Clear BoostResult
    RX1Buffer=RX1Buffer + ","
    For n=7 To Len(RX1Buffer)
      tmpstr=Mid$(RX1Buffer,n,1)
      If tmpstr="," Then
        ' end of segment
        Inc msgCount
        If msgCount=1 Then
          discs_NewTeam=Val(wifi_tmp,Dec)
          Set PlayerKnown
        EndIf
        If msgCount=3 Then 
          sTeam=Val(wifi_tmp,Dec)
          If sTeam>0 And sTeam<=TotalTeams Then
            discs_OwnerTeam=sTeam
          Else
            Clear discs_OwnerTeam
          EndIf
        EndIf
        If msgCount=4 Then 
          LangDelta=Val(wifi_tmp,Dec)
        EndIf
        If msgCount=5 Then
          BoostResult=Val(wifi_tmp,Dec)
        EndIf
        wifi_tmp=""
      'ElseIf tmpstr[0]=13 Then
      '  ' Team details
      '  Nop
      Else
        wifi_tmp=wifi_tmp +  tmpstr
      EndIf
    Next
  EndIf
  
  If wifi_tmp="PONGB" Then
    Set WiFiPingPong
    Clear TXGapTimer
  EndIf
  
  Dim sTeam As SByte
  If wifi_tmp="OWNER" Then
    Set OwnerStatusReceived
    comma1=7
    comma2=7
    While comma2<Len(RX1Buffer)
      Inc comma2
      wifi_tmp=Mid$(RX1Buffer,comma2,1)
      If wifi_tmp="," Then Break
    Wend
    commalen=(comma2-comma1)
    wifi_tmp=Mid$(RX1Buffer,comma1,commalen)
    
    sTeam=Val(wifi_tmp,Dec)
    If sTeam>0 And sTeam<=TotalTeams Then
      discs_OwnerTeam=sTeam
    Else
      Clear discs_OwnerTeam
    EndIf
      
    'n=Len(RX1Buffer)-comma2
    If comma2+4<Len(RX1Buffer) Then  ' Only run this code if we have a token.
      Clear C
      'For n=comma2+1 To Len(RX1Buffer)
      For n=comma2+1 To Len(RX1Buffer) Step 2
        wifi_tmp=Mid$(RX1Buffer,n,2)
        discs_OwnerToken[C]=Val(wifi_tmp,Hex)
        Inc C
      Next
    Else
      Clear discs_OwnerToken
    EndIf
    Clear wifi_tmp[0]
  End If
  
  If wifi_tmp="CAPOK" Then
    Set CaptureSucess
    Clear CurrentBoostCount
  End If

  If wifi_tmp="CAPFA" Then
    Set CaptureFailed
  End If

  If wifi_tmp="HAVKY" Then
    Set WiFiHasKeys
    Clear WiFiNoKeys
    Clear TXGapTimer
  EndIf
  If wifi_tmp="NOKEY" Then
    Set WiFiNoKeys
    Clear WiFiHasKeys
    Clear TXGapTimer
  EndIf

  If wifi_tmp="CONFIG" Then
  End If
  If wifi_tmp="UPDWF" Then
    Clear RX1BufPos
    SoundTemp=23
    GoSub QueueSound
    Set WiFiUpdateInProgress
    GoSub UpdateSound
  End If
  If wifi_tmp="UPDOK" Then
    SoundTemp=24
    GoSub QueueSound
    GeneralTimer=50
    While GeneralTimer>0
      GoSub IdleTasks
    Wend
    Clear WIFIReset
    DelayMS 16 ' GoSub Snooze16ms
    Set WIFIReset
    Clear WiFiUpdateInProgress
  End If
  'If wifi_tmp="UPDIC" Then
  'End If

    If wifi_tmp="GAMED" Then
    wifi_tmp=""
    RX1Buffer=RX1Buffer + ","
    Set ReceivedGameStatus
    Clear msgCount
    For n=7 To Len(RX1Buffer)
      tmpstr=Mid$(RX1Buffer,n,1)
      'If tmpstr="," Or tmpstr[0]=13 Then
      If tmpstr=","  Then
        ' end of segment
        Inc msgCount
        Select msgCount
        Case 1 ' Game status
          GameStatus=Val(wifi_tmp,Dec)
        Case 2 ' winning team
          WinningTeam=Val(wifi_tmp,Dec)
        Case 3 ' sound level
          SoundLevel=Val(wifi_tmp,Dec)
        Case 4  
          DiscCurrentStatus=Val(wifi_tmp,Dec)
        Case 5  
          EarlyCheckin=Val(wifi_tmp,Dec)
        Case 6
          If Len(wifi_tmp)>3 Then discs_OwnerToken=wifi_tmp
        Case 7
          sTeam=Val(wifi_tmp,Dec)
          If sTeam>0 And sTeam<=TotalTeams Then
            discs_OwnerTeam=sTeam
          Else
            Clear discs_OwnerTeam
          EndIf
        Case 8
          IdleRFIDGap=Val(wifi_tmp,Dec)
        Case 9
          IdleAnimationDelay=Val(wifi_tmp,Dec)
        Case 10
          IdleDiagInterval=Val(wifi_tmp,Dec)
        Case 11
          IdleAliveInterval=Val(wifi_tmp,Dec)
        Case 12
          CurrentBoostCount=Val(wifi_tmp,Dec)
        Case 13
          Clear TotalTeams
          Dim teamindex As Byte
          Dim teamdatalen As Byte
          Dim wifi_tmpw As Word

          
          teamindex=1
          teamdatalen=Len(wifi_tmp)
          While teamindex < teamdatalen
            Inc TotalTeams
            Dim wifiteamID As Byte
            wifi_txt=Mid$(wifi_tmp,teamindex,2)
            wifiteamID=Val(wifi_txt,Hex)
            'inc teamindex
            'Inc teamindex
            wifi_txt=Mid$(wifi_tmp,teamindex+2,4)
            wifi_tmpw=Val(wifi_txt,Hex)
            TeamColourHue[wifiteamID]=wifi_tmpw
            'Inc teamindex
            'Inc teamindex
            'Inc teamindex
            'Inc teamindex
            wifi_txt=Mid$(wifi_tmp,teamindex+6,2)
            wifi_tmpw.LowByte=Val(wifi_txt,Hex)
            TeamSoundOffset[wifiteamID]=wifi_tmpw.LowByte
            'Inc teamindex
            'Inc teamindex
            teamindex=teamindex+8
          Wend
        Case 14
          NewPlayerSound=Val(wifi_tmp,Hex)  
        Case 15
          PostRegSound=Val(wifi_tmp,Hex)  
        EndSelect

        wifi_tmp=""
      Else
        wifi_tmp=wifi_tmp +  tmpstr
      EndIf
    Next
    If GameStatus=1 Or GameStatus=3 Then
      Clear discs_OwnerTeam
      Clear discs_OwnerToken
      Clear discs_LastToken
    EndIf
    'WiFiCMD="DGM" + Str$(Hex2 GameStatus) + Str$(Hex2 WinningTeam) + Str$(Hex2 SoundLevel) + Str$(Hex2 DiscCurrentStatus) + Str$(Hex2 msgCount)
    'GoSub SendWiFiCMD
    Clear wifi_tmp[0]

  End If

  If wifi_tmp="WIFIF" Then Set WiFiFailedToJoinSSID
  If wifi_tmp="REGOK" Then Set RegisterUserSuccess
  If wifi_tmp="REGFA" Then Set RegisterUserFailed
  If wifi_tmp="WIPED" Then
    Set WiFiEncryptionKeysWiped
    Clear WiFiHasKeys
    Set WiFiNoKeys
    Clear TXGapTimer
  EndIf

  If wifi_tmp="SWPOK" Then Set DiscSwapCompleted
  If wifi_tmp="SWPFL" Then Set DiscSwapFailed

  If wifi_tmp="CMDAK" Then Clear TXGapTimer

  Return

HexToDec:
  Dim DecOut As Byte
  Dim HexIn As Byte
  

PowerOnWiFi:
  Clear RX1BufPos
  Clear RX1CommandReceived
  Clear WiFiMQTTFailed
  Clear WiFiTimeFailed
  Clear WiFiConnected
  Clear WiFiPoweredOnOK
  Clear WifiClockError
  Clear WiFiReceivedSomething
  Clear WiFiFailedToJoinSSID  
  Clear WifiConfigValid
  Clear WifiConfigBad
  Clear WiFiPowerDownRequested
  Inc WiFiUnresponsive

  ' CLC1 = RX
  ' CLC2 = TX
  ' CRC Input EUSART1 TX = 31
  ' CLCIN1PPS = 1
  ' CLCIN2PPS = 2

  ' Turn off CLCs

  'Clear CLC2CON  ' v0-02 workaround
  'Clear CLC3CON  ' v0-02 workaround

  
  'CLCIN1PPS=0x04 ' RA4 for receive   ' v0-02 workaround
  'CLC3SEL0=1 ' Input CLCIN1PPS  ' v0-02 workaround
  'CLC3SEL1=1 ' Input CLCIN1PPS  ' v0-02 workaround
  'CLC3SEL2=1 ' Input CLCIN1PPS  ' v0-02 workaround
  'CLC3SEL3=1 ' Input CLCIN1PPS  ' v0-02 workaround
  'CLC3GLS0=0xAA  ' v0-02 workaround
  'CLC3GLS1=0xAA  ' v0-02 workaround
  'CLC3GLS2=0xAA  ' v0-02 workaround
  'CLC3GLS3=0xAA  ' v0-02 workaround
  'Clear CLC3POL  ' v0-02 workaround
  ''RX1PPS=0x16 ' RC6 receive RX
  'RC7PPS=3 ' CLC3 output  ' v0-02 workaround
  RX1PPS=0x17 ' RC7 receive RX
  'Intput PORTC.6
  
  
  'CLC2SEL0=31 ' EUSART1 TX  ' v0-02 workaround
  'CLC2SEL1=31 ' EUSART1 TX  ' v0-02 workaround
  'CLC2SEL2=31 ' EUSART1 TX  ' v0-02 workaround
  'CLC2SEL3=31 ' EUSART1 TX  ' v0-02 workaround
  'RA5PPS=2 ' CLC2 Output  ' v0-02 workaround
  'RA5PPS=0x0F ' TX1
  RC6PPS=0x0F
  'Output PORTC.6
  'RX1PPS=0x04  ' A4
  'CLC2GLS0=0xAA  ' v0-02 workaround
  'CLC2GLS1=0xAA  ' v0-02 workaround
  'CLC2GLS2=0xAA  ' v0-02 workaround
  'CLC2GLS3=0xAA  ' v0-02 workaround
  'Clear CLC2POL  ' v0-02 workaround
  'Output PORTA.5  ' v0-02 workaround
   
  ' Turn on CLCs
  'CLC2CON=%10000000  ' v0-02 workaround
  'CLC3CON=%10000000  ' v0-02 workaround

  BAUD1CON=%00001000 ' TX idles high.  16bit baud rate
  ' 9600bps
  'SP1BRGL=64
  'SP1BRGH=3
  ' 115200
  SP1BRGL=68
  SP1BRGH=0
  TX1STA=%00100110  ' TXEN, Async, High baud rate, 
  RC1STA=%10010000  ' SPEN, CREN set


  'RA5PPS=0x0F ' TX1
  'RX1DTPPS=0x04  ' A4
  Clear WIFIReset
  FastTimer=5
  While FastTimer>0
    GoSub UpdateAnimation
  Wend
  Set WIFIReset
  Output SerialOutWiFi
  Set PIE3.5  ' RX1 interrupt
  'Set PIE3.4 ' TX1 Interrupt

  WiFiPowerOnTimeout=750 ' 15 seconds

  Return

PowerOffWiFi:
  If WiFiUpdateInProgress=1 Then Return
  FastTimer=100
  While TXInProgress=1 And FastTimer>0
    GoSub IdleTasks
  Wend
  While TXGapTimer>0
    GoSub IdleTasks
  Wend
  Set WiFiPowerDownRequested
  WiFiCMD[0]="P"
  WiFiCMD[1]=0
  GoSub SendWiFiCMD
  Clear WiFiConnected
  Clear WiFiPoweredOnOK
  Clear WifiClockError
  Clear WiFiMQTTFailed 
  Clear WiFiTimeFailed
  Clear WiFiFailedToJoinSSID
  Clear WiFiHasKeys
  Clear WiFiNoKeys
  Return

SendWiFiCMD:
  'If WiFiUpdateInProgress=1 Then Return
  FastTimer=200 ' 1 second max
  While TXInProgress=1 And FastTimer>0
    GoSub IdleTasks
  Wend
  While TXGapTimer>0
    GoSub IdleTasks
  Wend
  Output SerialOutWiFi
  Clear WiFiTXPos
  'For C=0 To 249
  '  WiFiCMDActive[C]=WiFiCMD[C]
  'Next
  WiFiCMDActive=WiFiCMD
  TX1REG=WiFiCMDActive[0]
  'TX1REG=WiFiCMD[0]
  Inc WiFiTXPos
  Set TXInProgress
  Set PIE3.4
  Return

Symbol StoredAddr =7680

DoAlivePoll:
  Clear AliveAcknowledged
  GoSub GetBatteryVoltage
  WiFiCMD[0]= "A"
  WiFiCMD[1]=0
  WiFiCMD=WiFiCMD + Str$(Dec,PICFirmwareVersion) + "," + Str$(Dec,BatteryVoltage) + "," + Str$(Dec,DiagResult)
'  WiFiCMD=WiFiCMD + Str$(Dec,PICFirmwareVersion)
'  WiFiCMD=WiFiCMD + ","
'  WiFiCMD=WiFiCMD + Str$(Dec,BatteryVoltage) 
'  WiFiCMD=WiFiCMD + ","
'  WiFiCMD=WiFiCMD + Str$(Dec,DiagResult)
  GoSub SendWiFiCMD
  If BatteryVoltage<CritialBatteryThreshold Then GoTo FlatBattery
Return

FlatBattery:
  If TXInProgress=1 Then GoTo FlatBattery
  If TXGapTimer>0 Then GoTo FlatBattery
  WiFiCMD[0]="F"
  WiFiCMD[1]=0
  WiFiCMD=WiFiCMD + Str$(Dec,BatteryVoltage)   
  GoSub SendWiFiCMD
  SoundTemp=68
  GoSub QueueSound
  While TXInProgress=1
    GoSub IdleTasks
  Wend
  EndWaitTime=200
  While EndWaitTime>0
    GoSub IdleTasks
  Wend
  GoTo PowerOff
Return

TokenPresented:
  ' Power up WiFi
  Clear tpWiFiStep
  Clear PlayerUnknown
  Clear mchcount
  Clear emfcount
  Clear CCCcount
  Clear PlayerKnown
  GoSub PowerOnWiFi
  GoSub PowerOnSound
  Clear discs_NewTeam
  Clear SelectedTeam
  Clear CaptureSucess
  Clear CaptureFailed
  Clear RegisterUserSuccess
  Clear RegisterUserFailed
  
  
  GoSub LED1PowerOn
  LEDActiveAnimation=3
  GoSub PlayAnimation

  SoundTemp=127 ' N
  GoSub QueueSound


  tpLoop:
  GoSub IdleTasks
  If tpWiFiStep=0 And WiFiPowerOnTimeout=0 Then
    ' Connection to wifi never completed
    Set NextSoundNow
    SoundTemp=133 ' N
    GoSub QueueSound
    'GoSub PowerOffWiFi
    Clear EndWaitTime
    CaptureTimer=600 ' 15 seconds timeout
    tpWiFiStep=99
  EndIf
  If tpWiFiStep=0 And WiFiConnected=1 Then
    tpWiFiStep=40
    CaptureTimer=8
    GoSub DoAlivePoll
  EndIf

  If tpWiFiStep=40 And CaptureTimer=0 Then
    tpWiFiStep=1
    WiFiCMD[0]="T"
    WiFiCMD[1]=0
    For n=0 To 9
      WiFiCMD=WiFiCMD + Str$(Hex2, RC522_Token[n])
    Next
    GoSub SendWiFiCMD
    CaptureTimer=200 ' 4 seconds to respond
  End If
  If tpWiFiStep=1 And CaptureTimer=0 Then
    ' Never got a response to the token command
    SoundTemp=133 ' N
    Set NextSoundNow
    GoSub QueueSound
    tpWiFiStep=99
    CaptureTimer=600 ' 15 second timeout
  EndIf
  If tpWiFiStep=1 And PlayerUnknown=1 Then
    ' New player so lets start the team picker
    GoSub PowerOffWiFi
    LEDActiveAnimation=7
    GoSub PlayAnimation
    tpWiFiStep=19
    If emfcount>0 And mchcount>0 Then 
      SoundTemp=137 ' N Returning EMF and MCH player
      GoSub QueueSound
    EndIf
    If emfcount>0 And mchcount=0 Then 
      SoundTemp=135 ' N Returning EMF player
      GoSub QueueSound
    EndIf
    If emfcount=0 And mchcount>0 Then 
      SoundTemp=136 ' N Returning MCH player
      GoSub QueueSound
    EndIf
    Set NextSoundNow
    SoundTemp=116 ' N New polygen controller
    If NewPlayerSound>0 Then SoundTemp=NewPlayerSound
    GoSub QueueSound
    TeamPickerTime=160 ' 4 seconds
    RC522_TokenSaved=RC522_Token
    Clear TeamPickerCycles
    CaptureTimer=800 ' 20 second timeout
    'GoSub LED1PowerOn
  EndIf
  If tpWiFiStep=19 Then
    'If tpWiFiStep=2 Then Inc tpWiFiStep
    GoSub IsSoundPlaying
    If SoundPlaying=0 Or CaptureTimer=0 Then 
      Inc tpWiFiStep
      If TeamPickerCount=0 Then
        TeamPickerCount=RC522_Token[1] & 3
        Inc TeamPickerCount
      EndIf
      'SoundTemp=TeamPickerCount
      'GoSub QueueSound
    EndIf
  EndIf
  If tpWiFiStep=20 Then
    If TeamPickerTime=0 Then
      ' Team picker
      TeamPickerTime=200 ' 5 seconds
      Inc TeamPickerCount
      Inc TeamPickerCycles
      If TeamPickerCount>TotalTeams Then
        TeamPickerCount=1
      EndIf
      If TeamPickerCycles>TeamPickerMaxCycles Then
          ' Reached max cycles
          SoundTemp=110 ' N
          GoSub QueueSound
          tpWiFiStep=99
          EndWaitTime=100 ' 2 seconds
          CaptureTimer=600 ' 15 second timeout
          GoSub LED1PowerOff
      EndIf
      If tpWiFiStep<99 Then
        SoundTemp=TeamPickerCount+100+TeamSoundOffset[TeamPickerCount]
        GoSub QueueSound
        LEDActiveAnimation=1
        GoSub PlayAnimation
      EndIf
    ElseIf TeamPickerCount>0 Then
      'Clear DetectResult
      GoSub DetectRFID
      If DetectResult=1 Then
        ' Team has been selected
        For C=0 To 9
          If RC522_Token[C]<>RC522_TokenSaved[C] Then Clear DetectResult
        Next
        If DetectResult=1 Then
          GoSub PowerOnWiFi
          Inc tpWiFiStep
          TeamPickerTime=400 ' 10 seconds
          SoundTemp=112 ' N
          GoSub QueueSound
          Set NextSoundNow
          If PaymentCardType>0 Then
            SoundTemp=PaymentCardType
            GoSub QueueSound
          EndIf
          LEDActiveAnimation=2
          GoSub PlayAnimation
        Else
          GoTo TokenPresented
        EndIf
      EndIf
    EndIf
  EndIf
  If tpWiFiStep=21 And TeamPickerTime=0 Then
    ' WiFi connection timed out
    SoundTemp=113 ' N
    GoSub QueueSound
    tpWiFiStep=99
    EndWaitTime=100 ' 2 seconds
    CaptureTimer=600 ' 15 second timeout
    GoSub LED1PowerOff
  EndIf
  If tpWiFiStep=21 And WiFiConnected=1 Then
    WiFiCMD[0]="R"
    WiFiCMD[1]=0
    For n=0 To 9
      WiFiCMD=WiFiCMD + Str$(Hex2, RC522_Token[n])
    Next
    WiFiCMD=WiFiCMD + "," + Str$(Dec,TeamPickerCount) + "," + Str$(Dec,PaymentCardType)
'    WiFiCMD=WiFiCMD + ","
'    WiFiCMD=WiFiCMD + Str$(Dec,TeamPickerCount)
'    WiFiCMD=WiFiCMD + ","
'    WiFiCMD=WiFiCMD + Str$(Dec,PaymentCardType)
    GoSub SendWiFiCMD
    Inc tpWiFiStep
    TeamPickerTime=250 ' 5 seconds
  EndIf
  If tpWiFiStep=22 Then
    If RegisterUserFailed=1 Then
      GoSub PowerOffWiFi
      SoundTemp=114 ' N
      GoSub QueueSound
      tpWiFiStep=99
      EndWaitTime=100 ' 2 seconds
      CaptureTimer=600 ' 15 second timeout
      GoSub LED1PowerOff
    End If
    If RegisterUserSuccess=1 Then
      SoundTemp=115 ' N
      If PostRegSound>0 Then SoundTemp=PostRegSound
      GoSub QueueSound
      '
      'Clear LEDActiveAnimation
      'GoSub BlankAllLED1s
      'GoSub BlankAllLED2s
      'LED1ByteCount=51
      'LED1ByteCount=36
      'GoSub SendLEDData
      LEDActiveAnimation=3
      TeamColourOverride=TeamPickerCount
      GoSub PlayAnimation
      Inc tpWiFiStep
      Set PlayerKnown
      Clear PlayerUnknown
      EndWaitTime=100 ' 2 seconds
      CaptureTimer=600 ' 15 seconds (400 is 10 seconds)
    End If
    If TeamPickerTime=0 Then
      GoSub PowerOffWiFi
      SoundTemp=113 ' N
      GoSub QueueSound
      tpWiFiStep=99
      EndWaitTime=100 ' 2 seconds
      CaptureTimer=600 ' 15 second timeout
      Clear LEDActiveAnimation
      GoSub BlankAllLED1s
      LED1ByteCount=51
      GoSub BlankAllLED2s
      LED2ByteCount=36
      GoSub SendLEDData
    End If
  End If
  If tpWiFiStep=23 Then
    If EndWaitTime=0 Then
      GoSub IsSoundPlaying
      If SoundPlaying=0 Or CaptureTimer=0 Then 
        tpWiFiStep=1
        Clear TeamColourOverride
      EndIf
    EndIf
  EndIf
  If tpWiFiStep=1 And PlayerKnown=1 Then
    ' We know the player and have the team loaded
    Inc tpWiFiStep
    'GoSub PowerOffWiFi
    ' Make this the new last token accepted
    For n=0 To 9
      discs_LastToken[n]=RC522_Token[n]
    Next
    'If discs_OwnerTeam=0 Then Clear RecentCapture
    If discs_NewTeam=discs_OwnerTeam Then
    '  If RecentCapture>0 Or discs_NewTeam=discs_OwnerTeam Then
      GoSub PowerOffWiFi
      ' Boost results
      ' 0 = Shouldn't happen
      ' 1 = Already actively boosting
      ' 2 = Boosted successfully
      ' 3 = Running hot, can't boost yet.
      Select BoostResult
        Case 0,3
            SoundTemp=140 + LangDelta
        Case 1
            SoundTemp=128 + LangDelta
        Case 2
            Inc CurrentBoostCount
            If CurrentBoostCount>10 Then
                SoundTemp=139+LangDelta
            Else
                SoundTemp=140 + CurrentBoostCount + LangDelta
            EndIf
      EndSelect
      Set NextSoundNow
      GoSub QueueSound
      LEDActiveAnimation=4  ' Team colour pulse
      GoSub PlayAnimation
      tpWiFiStep=99
      EndWaitTime=50 ' 1 second
      CaptureTimer=600 ' 15 second timeout
    Else
      SoundTemp=150+ discs_NewTeam  + TeamSoundOffset[discs_NewTeam]
      Set NextSoundNow
      GoSub QueueSound
      'EndWaitTime=250 ' 5 seconds
      Inc tpWiFiStep ' Skip the wait
      LEDActiveAnimation=5 ' Capture in progress
      CaptureTimer=50
      GoSub PlayAnimation
    End If
  End If
  If tpWiFiStep=2 And EndWaitTime=0 Then
    'GoSub PowerOnWiFi
    Inc tpWiFiStep
    CaptureTimer=500
  EndIf
  If tpWiFiStep=3 And CaptureTimer=0 Then
    ' Timeout waiting for wifi
    SoundTemp=133 + LangDelta ' N
    GoSub QueueSound
    tpWiFiStep=99
    CaptureTimer=600 ' 15 second timeout
  EndIf
  If tpWiFiStep=3 And WiFiConnected=1 Then
    WiFiCMD[0]="C"
    WiFiCMD[1]=0
    For n=0 To 9
      WiFiCMD=WiFiCMD + Str$(Hex2, RC522_Token[n])
    Next
    GoSub SendWiFiCMD
    Inc tpWiFiStep
    EndWaitTime=250 ' 5 seconds
  EndIf
  If tpWiFiStep=4 Then
    GoSub IsSoundPlaying
    If SoundPlaying=0 Or EndWaitTime=0 Then
        If CaptureSucess=1 Then
          GoSub PowerOffWiFi
          discs_OwnerTeam=discs_NewTeam
          For n=0 To 9
              discs_OwnerToken[n]=discs_LastToken[n]
          Next
          SoundTemp=130 + LangDelta ' N
          GoSub QueueSound
          Inc tpWiFiStep
          LEDActiveAnimation=6 ' Capture completed
          GoSub PlayAnimation
          EndWaitTime=50
          CaptureTimer=500
        EndIf
        If CaptureFailed=1 Then
          Clear discs_LastToken
          GoSub PowerOffWiFi
          SoundTemp=132 + LangDelta ' N
          GoSub QueueSound
          tpWiFiStep=99
          EndWaitTime=50
          CaptureTimer=500
        EndIf
        If EndWaitTime=0 Then
          GoSub PowerOffWiFi
          SoundTemp=132 + LangDelta ' N
          GoSub QueueSound
          tpWiFiStep=99
          EndWaitTime=50
          CaptureTimer=500
        EndIf
    EndIf
  EndIf
  If tpWiFiStep=99 And EndWaitTime=0 Then
    If WiFiPoweredOnOK=1 Or WiFiConnected=1 Then GoSub PowerOffWiFi
    GoSub IsSoundPlaying
    If SoundPlaying=0 Or CaptureTimer=0 Then tpWiFiStep=100
  End If
  If tpWiFiStep=100 Then
    GoSub PowerOffSound
    GoSub LED1PowerOff
    Return
  EndIf
  If tpWiFiStep=5 Then
    ' Capture success animation
    tpWiFiStep=99
  EndIf
  GoTo tpLoop

Dim AnimationTempR As Byte
Dim AnimationTempG As Byte
Dim AnimationTempB As Byte

PlayAnimation:
Select LEDActiveAnimation
Case 1 ' Team picker
  LEDFrame=1000
  Clear HSVv
  HSVs=255
  HSVh=TeamColourHue[TeamPickerCount]
  Clear FrameTemp2
Case 2 ' While card is being registered
  LEDFrame=100
  'LEDFrame=63
  HSVs=255
  HSVv=200
  HSVh=TeamColourHue[TeamPickerCount]
  GoSub HSV2RGB
Case 3 ' Initial "checking card"
  LEDFrame=545
  'LEDFrame=511
  Clear FrameTemp2
Case 4
  LEDFrame=63
  HSVv=200
  'HSVs=255
  GoSub LoadOwnerColour
  'HSVh=TeamColourHue[discs_OwnerTeam]
  GoSub HSV2RGB
  LEDActiveAnimation=2 ' Animation is the same after this, only starting colour differs
Case 5 ' Capture in TXInProgress
  If LEDFrame=0 Then LEDFrame=511
  'LEDFrame=160
  'FrameTemp.LowByte=discs_LastToken[1]
  'FrameTemp.HighByte=discs_LastToken[4]
Case 6 ' Capture completed
  'LEDFrame=424
  LEDFrame=488
  HSVv=255
  'HSVs=255
  'HSVh=TeamColourHue[discs_OwnerTeam]
  GoSub LoadOwnerColour
  GoSub HSV2RGB
  AnimationTempR=OutR
  AnimationTempG=OutG
  AnimationTempB=OutB
Case 7 ' New polygen user animation
  FrameTemp=TotalTeams+1
  LEDFrame=FrameTemp<<5
  Dec LEDFrame
Case 8 ' Command mode
  LEDFrame=200
Case 9 ' Tamper TamperDetected
  LEDFrame=800
EndSelect
LEDLastFrame=LEDFrame
Return

Dim FrameTemp2 As Byte

UpdateAnimation:
If LEDActiveAnimation=0 Then Return
If LEDFrame>0 And LEDLastFrame=LEDFrame Then Return
  'If LED1LastFrame=LED1Frame Then Return
  LEDLastFrame=LEDFrame
  Select LEDActiveAnimation
    Case 1
      ' Team picker
      If LEDFrame>255 Then 
        If LEDFrame.1=1 And LEDFrame.0=0 And FrameTemp2<255 Then Inc FrameTemp2
      Else
        Dec FrameTemp2
      EndIf
      HSVv=FrameTemp2
      If FrameTemp2=0 Then Inc FrameTemp2
      If HSVv=0 Then
        Clear OutR
        Clear OutG
        Clear OutB
      Else
        GoSub HSV2RGB
      EndIf
      GoSub LoadAllLED2s
      
      If LEDFrame>255 Then 
        HSVv=255
      Else
        HSVv=LEDFrame.LowByte
      EndIf
      GoSub HSV2RGB
      Clear FrameTemp.LowByte
      FrameTemp.0=LEDFrame.3
      FrameTemp.1=LEDFrame.4
      Clear FrameTemp.HighByte
      For C=0 To 50 Step 3
        If FrameTemp.LowByte=FrameTemp.HighByte Then
          LED1Data[C]=OutB
          LED1Data[C+1]=OutR
          LED1Data[C+2]=OutG          
        Else
          Clear LED1Data[C]
          LED1Data[C+1]=0
          LED1Data[C+2]=0
        EndIf    
        Inc FrameTemp.HighByte
        If FrameTemp.HighByte>3 Then Clear FrameTemp.HighByte
      Next     
      If LEDFrame=0 Then Clear LEDActiveAnimation
      LED1ByteCount=51
      LED2ByteCount=36
    Case 2
      If LEDFrame>63 Then
        GoSub WhiteLED1Flash
        GoSub WhiteLED2Flash
      Else
      If LEDFrame=0 Then LEDFrame=63
'      HSVs=255
'      HSVv=200
'      HSVh=TeamColourHue[TeamPickerCount]
'      GoSub HSV2RGB
      Ftemp=LEDFrame.LowByte >> 4
      FrameTemp.LowByte=Ftemp
      For C=0 To 50 Step 3
          If FrameTemp.LowByte=0 Then
            LED1Data[C]=OutB
            LED1Data[C+1]=OutR
            LED1Data[C+2]=OutG
            FrameTemp=4
          Else
            Clear LED1Data[C]
            LED1Data[C+1]=0
            LED1Data[C+2]=0
          EndIf
          Dec FrameTemp
      Next
      FrameTemp=LEDFrame & 15
      If FrameTemp=0 Then
        For C=0 To 35 Step 3
          FrameTemp=Random & 3
          If FrameTemp=1 Then
            LED2Data[C]=OutB
            LED2Data[C+1]=OutR
            LED2Data[C+2]=OutG
          ElseIf FrameTemp=2 Then
            LED2Data[C]=200
            LED2Data[C+1]=200
            LED2Data[C+2]=200
          Else
            Clear LED2Data[C]
            LED2Data[C+1]=0
            LED2Data[C+2]=0
          EndIf
        Next
      EndIf
      LED1ByteCount=51
      LED2ByteCount=36
      EndIf
    Case 3 ' while checking the token presented
      If LEDFrame>512 Then
        GoSub WhiteLED1Flash
        GoSub WhiteLED2Flash
      Else
          If LEDFrame=0 Then LEDFrame=511
          GoSub LoadOwnerColour
          GoSub HSV2RGB
          'hsvs=255
          'If discs_OwnerTeam>0 Then
          '  HSVh=TeamColourHue[discs_OwnerTeam]
          'Else
          '  HSVh=CentreIdleHue
          '  clear hsvs
          'EndIf
          FrameTemp=LEDFrame & %1111
          If FrameTemp=0 Then
            'FrameTemp=LEDFrame & %01110000
            'Frametemp.lowbyte=FrameTemp.lowByte >> 4
            FrameTemp=LEDFrame & %01110000
            FrameTemp.LowByte=FrameTemp.LowByte >> 4
            If LEDFrame.7=1 Then
              FrameTemp.LowByte=7 - FrameTemp.LowByte
            EndIf
            GoSub LED1PulseEffect
          EndIf
    
          FrameTemp.LowByte=LEDFrame & %00111111
          
          If FrameTemp.LowByte=0 Then
            GoSub BlankAllLED2s
            HSVv=250
            GoSub HSV2RGB
            LED2Data[FrameTemp2]=OutB
            LED2Data[FrameTemp2+18]=OutB
            Inc FrameTemp2
            LED2Data[FrameTemp2]=OutR
            LED2Data[FrameTemp2+18]=OutR
            Inc FrameTemp2
            LED2Data[FrameTemp2]=OutG
            LED2Data[FrameTemp2+18]=OutG
            Inc FrameTemp2
            If FrameTemp2>=18 Then Clear FrameTemp2
            LED2ByteCount=36
          EndIf
      EndIf
    Case 5  ' Capture in progress
      'If LEDFrame=0 Then LEDFrame=150
      If LEDFrame=0 Then LEDFrame=511

      'If discs_OwnerTeam>0 Then
      '  HSVs=255
      '  HSVh=TeamColourHue[discs_OwnerTeam]
      'Else
      '  HSVh=CentreIdleHue
      '  Clear HSVs
      'EndIf
      FrameTemp=LEDFrame & %111
      If FrameTemp=0 Then
        'FrameTemp=LEDFrame & %01110000
        'Frametemp.lowbyte=FrameTemp.lowByte >> 4
        FrameTemp=LEDFrame & %00111000
        FrameTemp.LowByte=FrameTemp.LowByte >> 3
        If LEDFrame.6=1 Then
          FrameTemp.LowByte=7 - FrameTemp.LowByte
          HSVh=TeamColourHue[discs_NewTeam]
          HSVs=255
        Else
          GoSub LoadOwnerColour
        EndIf
        GoSub HSV2RGB
        GoSub LED1PulseEffect

        GoSub BlankAllLED2s
        FrameTemp=Random
        For C=0 To 35 Step 3
          If FrameTemp.0=1 Then
            GoSub LoadOwnerColour
          Else
            HSVh=TeamColourHue[discs_NewTeam]
            HSVs=255
          EndIf
          HSVv=Random
          GoSub HSV2RGB
          LED2Data[C]=OutB
          LED2Data[C+1]=OutR
          LED2Data[C+2]=OutG        
        Next
        LED2ByteCount=36
      EndIf
    
    Case 6 '  Capture completed
      Clear FillAllFlagged
      Select LEDFrame
      Case 65 To 128 ' Fade out
        If (LEDFrame & %00001111) = 0 Then 
          Set FillAllFlagged
        EndIf
      Case 129 To 192 ' Fade out
        If (LEDFrame & %00000111) =0  Then
          Set FillAllFlagged
        EndIf
      Case 193 To 322
        If (LEDFrame & %00000011) = 0 Then
          Set FillAllFlagged
        EndIf
      Case 321 To 488
        If LEDFrame.0=1 Then 
          Set FillAllFlagged
        EndIf
      Case Else ' Main animation over
        GoSub BlankAllLED1s
        LED1ByteCount=51
      EndSelect
      If FillAllFlagged=1 Then
        If HSVv<2 Then HSVv=2
        Dec HSVv
        Dec HSVv
        GoSub HSV2RGB
        GoSub LoadAllLED1s
        LED1ByteCount=51
      EndIf
      If (LEDFrame & %00000111)=0 Then
        LED2ByteCount=36
        FrameTemp=Random
        While FrameTemp.HighByte > 11
            FrameTemp.HighByte=FrameTemp.HighByte - 12
        Wend
        While FrameTemp.LowByte > 11
            FrameTemp.LowByte=FrameTemp.LowByte - 12
        Wend
        FrameTemp.LowByte=FrameTemp.LowByte * 3
        FrameTemp.HighByte=FrameTemp.HighByte * 3
        For C=0 To 35 Step 3
          If C=FrameTemp.HighByte Or C=FrameTemp.LowByte Then
            LED2Data[C]=255
            LED2Data[C+1]=255
            LED2Data[C+2]=255
          Else          
            LED2Data[C]=AnimationTempB
            LED2Data[C+1]=AnimationTempR
            LED2Data[C+2]=AnimationTempG
          EndIf
        Next
      EndIf
      If LEDFrame=0 Then LEDFrame=64
    Case 7 ' Multicolour all teams
      If LEDFrame=0 Then
        FrameTemp=TotalTeams  ' Removed +1 from here
        LEDFrame=FrameTemp<<5
        Dec LEDFrame
      EndIf
      FrameTemp=LEDFrame>>5
      Inc FrameTemp.LowByte
      HSVs=255
      HSVv=180
      If FrameTemp.LowByte>TotalTeams Then FrameTemp.LowByte=TotalTeams
      For C=0 To 50 Step 3
        HSVh=TeamColourHue[FrameTemp.LowByte]
        GoSub HSV2RGB
        LED1Data[C]=OutB
        LED1Data[C+1]=OutR
        LED1Data[C+2]=OutG
        If C<36 Then
          LED2Data[C]=OutB
          LED2Data[C+1]=OutR
          LED2Data[C+2]=OutG
        EndIf
        Dec FrameTemp.LowByte
        If FrameTemp.LowByte=0 Then FrameTemp.LowByte=TotalTeams
      Next
      LED1ByteCount=51
      LED2ByteCount=36
    Case 8 ' Command mode
      If LEDFrame=0 Then LEDFrame=200
      HSVv=LEDFrame.LowByte
      If NDEFStage>0 And NDEFStage<100 Then
        OutB=255
        Clear OutG
        Clear OutR
        GoSub LoadAllLED2s
        GoSub LoadAllLED1s ' ===
        If NDEFStage=10 Then
          Clear OutB
          OutG=255
          C=(ConfigEntryCount)*3
          While C>0
            Dec C
            LED2Data[C]=OutG
            LED1Data[C]=OutG
            Dec C
            LED2Data[C]=OutR
            LED1Data[C]=OutR
            Dec C
            LED2Data[C]=OutB
            LED1Data[C]=OutB
          Wend
        EndIf
      Else
        HSVh=cmdMenu << 6
        HSVs=255
        GoSub HSV2RGB
        GoSub BlankAllLED2s
        C=(cmdMenu+1) * 3
        While C>0
          Dec C
          LED2Data[C]=OutG
          LED1Data[C]=OutG
          Dec C
          LED2Data[C]=OutR
          LED1Data[C]=OutR
          Dec C
          LED2Data[C]=OutB
          LED1Data[C]=OutB
        Wend
      EndIf
      LED2ByteCount=36
      LED1ByteCount=51
    Case 9 ' tamper
      If LEDFrame=0 Then LEDFrame=800
      Select LEDFrame
      Case 400 To 800
        GoSub BlankAllLED1s
        GoSub BlankAllLED2s
        Clear OutG
        If LEDFrame.4=1  Then
          OutR=255
          Clear OutB
        Else
          OutB=255
          Clear OutR
        EndIf
        Dim flipflop As Bit
        flipflop= LEDFrame.3
        For C=0 To 51 Step 3
          If flipflop=1 Then
            Clear flipflop
          Else
            LED1Data[C]=OutG
            LED1Data[C+1]=OutR
            LED1Data[C+2]=OutB
            If C<36 Then
              LED2Data[C]=OutG
              LED2Data[C+1]=OutR
              LED2Data[C+2]=OutB
            EndIf
          EndIf
        Next
        Case 0 To 400
          If LEDFrame.3=1 Then
            If LEDFrame.5=1 Then
              OutR=255
              Clear OutB
            Else
              OutB=255
              Clear OutR
            EndIf
            Clear OutG
            GoSub LoadAllLED1s
            GoSub LoadAllLED2s
          Else
            GoSub BlankAllLED1s
            GoSub BlankAllLED2s
          EndIf
      EndSelect
      LED1ByteCount=51
      LED2ByteCount=36
    Case 10 ' Deplete Battery
      OutR=255
      OutB=255
      OutG=255
      GoSub LoadAllLED1s
      GoSub LoadAllLED2s
      LED1ByteCount=51
      LED2ByteCount=36
    Case Else
      Return
    EndSelect
    GoSub SendLEDData
Return

LoadOwnerColour:
    HSVs=255
    If TeamColourOverride>0 Then
      HSVh=TeamColourHue[TeamColourOverride]
    Else
      If discs_OwnerTeam>0 Then
        HSVh=TeamColourHue[discs_OwnerTeam]
      Else
        'HSVh=CentreIdleHue
        Clear HSVs
      EndIf
    EndIf
Return
         
LED1PulseEffect:
  ' Load FrameTemp lowbyte with a value 0 to 7 to position the LED focal point
        GoSub BlankAllLED1s
          
        For C=6 To 26 Step 3
          Clear OutB
          Clear OutR
          Clear OutG
          If FrameTemp.LowByte =FrameTemp.HighByte + 4 Or FrameTemp.LowByte=FrameTemp.HighByte Then
            HSVv=10
            GoSub HSV2RGB
          EndIf
          If FrameTemp.LowByte =FrameTemp.HighByte + 3 Or FrameTemp.LowByte =FrameTemp.HighByte + 1 Then
            HSVv=25
            GoSub HSV2RGB
          EndIf
          If FrameTemp.LowByte=FrameTemp.HighByte + 2 Then
            HSVv=200
            GoSub HSV2RGB
          EndIf
          Inc FrameTemp.HighByte
          LED1Data[C]=OutB
          LED1Data[C+1]=OutR
          LED1Data[C+2]=OutG
          LED1Data[54-C]=OutB
          LED1Data[55-C]=OutR
          LED1Data[56-C]=OutG
        Next
        LED1ByteCount=51
Return

HSV2RGB:
 
Dim HSVh As Word
Dim HSVs As Byte ' Only has bottom byte populated
Dim HSVv As Byte

Dim Cs As Byte ' Slope
Dim Cv As Byte ' top level
Dim Cc As Byte ' bottom level

Dim OutR As Byte
Dim OutG As Byte
Dim OutB As Byte

Dim bb As Byte
Dim ww As Word
Dim mm As Byte

If HSVs=0 Then  ' No saturation so monochrome
  OutR=HSVv
  OutG=HSVv
  OutB=HSVv
  Return
EndIf

If HSVh.HighByte >5 Then HSVh.HighByte=5 ' Ensure maximum sextant is limited
Cv=HSVv
bb=~HSVs
ww=HSVv * bb
Inc ww
ww=ww+ww.HighByte
Cc=ww.HighByte
If HSVh.8=0 Then ' sextant bit 1 (up or down slope)
  If HSVh.LowByte=0 Then
    ww.HighByte=HSVs
    Clear ww.LowByte
  Else
    mm=~HSVh.LowByte
    Inc mm
    ww=HSVs * mm
  EndIf
Else
  ww=HSVs * HSVh.LowByte
EndIf
ww=ww + ww.HighByte
bb=~ww.HighByte
ww=HSVv * bb
mm=HSVv>>1
ww=ww + mm
Cs=ww.HighByte

Select HSVh.HighByte
  Case 0
    OutR=Cv
    OutB=Cc
    OutG=Cs
  Case 1
    OutR=Cs
    OutB=Cc
    OutG=Cv
  Case 2
    OutR=Cc
    OutB=Cs
    OutG=Cv
  Case 3
    OutR=Cc
    OutB=Cv
    OutG=Cs
  Case 4
    OutR=Cs
    OutB=Cv
    OutG=Cc
  Case 5
    OutR=Cv
    OutB=Cs
    OutG=Cc
EndSelect

Return


' *************************** RFID Detection **************************
' Results in DetactResult
' 0 = No token
' 1 = New Token
' 2 = Owners Token
' 3 = Last Token Again
DetectRFID:
  Clear DetectResult
  ' Wake up RFID reader
  Set RFIDShutdown
  MaxRFIDWaitTime=2000 ' Default for normal cards  (we were using 2000 for bank cards)
  'GoSub IdleTasks
  ' DelayUS 65 works
  DelayUS 100 ' Did try 80
  GoSub IdleTasks
  DelayUS 100 ' Did try 80
  GoSub RC522_Init
  ' DelayUS 70 works with MiFare Classics
  ' Spec sheets say 5.2ms required
  FastTimer=8
  FastTimer=10
  While FastTimer>0
    GoSub UpdateAnimation
  Wend
  'DelayMS 6
  
  Clear RFIDLoopCount
  Clear RC522_TokenLen
  While RFIDLoopCount<16 And RC522_TokenLen<4  ' We were using 15 for bank cards
    GoSub IdleTasks
    Inc RFIDLoopCount
    GoSub RC522_DetectCard
  Wend  
  If RC522_TokenLen<4 Then 
    Clear RFIDShutdown
    Return
  EndIf

  If RC522_Token[0]=0x08 And RC522_TokenLen=4 Then
      
    If  cmdMenu=0 Then
      ' we don't want RID tokens unless we are in command mode
      Clear RFIDShutdown
      Clear RC522_TokenLen
      Return
    EndIf
  EndIf
  
  n=RC522_TokenLen
  While n<10
    Clear RC522_Token[n]
    Inc n
  Wend
  Set LastMatched
  Set OwnerMatched
  Set CommandMatched
  Set CommandMatched2
  For n=0 To 9
     If RC522_Token[n]<>discs_LastToken[n] Then Clear LastMatched
     If RC522_Token[n]<>discs_OwnerToken[n] Then Clear OwnerMatched
     RC522_Temp=CRead8 MJTToken[n]
     If RC522_Token[n]<>RC522_Temp Then Clear CommandMatched
     RC522_Temp=CRead8 MJTToken2[n]
     If RC522_Token[n]<>RC522_Temp Then Clear CommandMatched2
  Next
  DetectResult=1
  If CommandMatched2=1 Then Set CommandMatched
  If LastMatched=1 Then DetectResult=3
  If OwnerMatched=1 Then DetectResult=2
  If DetectResult=1 Then
    If RC522_SAK=0x08 And cmdMenu>0 Then 
       GoSub ReadMiFareNDEF
    EndIf
    If RC522_SAK=0x20 And PaymentCardType=0 Then
      ' Probably a credit card
      MaxRFIDWaitTime=12000
      ' Request ATS
      For C=0 To 10
        RC522_sendData[0]=0xE0
        RC522_sendData[1]=0x50 ' @@@
        'RC522_sendData[1]=0x60 ' Normal value 0x50
        RC522_sendLen=2
        GoSub RC522_CalculateCRC
        RC522_Command=RC522_PCD_TRANSCEIVE
        GoSub RC522_ToCard
        If RC522_backLen>2 Then 
          If RC522_backLen>14 Then PaymentCardType=117
          Break
        EndIf
      Next
      If RC522_backLen>2 Then
          For C=0 To 10
            RC522_sendData[0]=0x02
            RC522_sendData[1]=0x00
            RC522_sendData[2]=0xA4
            RC522_sendData[3]=0x04
            RC522_sendData[4]=0x00
            RC522_sendData[5]=0x0E
            RC522_sendData[6]=0x32 ' 2
            RC522_sendData[7]=0x50 ' P
            RC522_sendData[8]=0x41 ' A
            RC522_sendData[9]=0x59 ' Y
            RC522_sendData[10]=0x2E ' .
            RC522_sendData[11]=0x53 ' S
            RC522_sendData[12]=0x59 ' Y
            RC522_sendData[13]=0x53 ' S
            RC522_sendData[14]=0x2E ' .
            RC522_sendData[15]=0x44 ' D
            RC522_sendData[16]=0x44 ' D
            RC522_sendData[17]=0x46 ' F
            RC522_sendData[18]=0x30 ' 0
            RC522_sendData[19]=0x31 ' 1
            RC522_sendData[20]=0x00
            RC522_sendLen=21
            GoSub RC522_CalculateCRC
            RC522_Command=RC522_PCD_TRANSCEIVE
            GoSub RC522_ToCard
            If RC522_backLen>24 Then Break
          Next
      EndIf
      If RC522_backLen>24 Then
        ' We got data
        'DebugVal=RC522_backLen
        For n=0 To RC522_backLen
          If RC522_backData[n]=0xA0 Then
            'C=n
            'Inc C
            If RC522_backData[n+1]=0 Then
              ' We have a card Id
              'Inc C
              'Inc C
              'Inc C
              If RC522_backData[n+4]=0x04 Then
                PaymentCardType=118 ' N
                Break
              ElseIf RC522_backData[n+4]=0x03 Then
                PaymentCardType=121 ' N
                Break
              EndIf
            EndIf
          EndIf
        Next
        If PaymentCardType>117 Then
          For n=0 To RC522_backLen
            If RC522_backData[n]=0x44 And RC522_backData[n+1]=0x65 And RC522_backData[n+2]=0x62 And RC522_backData[n+3]=0x69 And RC522_backData[n+4]=0x74 Then
              ' Debit card found
              If PaymentCardType=118 Then 
                 Inc PaymentCardType
                 Inc PaymentCardType
              EndIf
              If PaymentCardType=121 Then Inc PaymentCardType
            EndIf
            If RC522_backData[n]=0x43 And RC522_backData[n+1]=0x72 And RC522_backData[n+2]=0x65 And RC522_backData[n+3]=0x64 And RC522_backData[n+4]=0x69 And RC522_backData[n+5]=0x74 Then
              ' Credit card found
              If PaymentCardType=118 Then Inc PaymentCardType
              If PaymentCardType=121 Then 
                Inc PaymentCardType
                Inc PaymentCardType
              EndIf
            EndIf
            If RC522_backData[n]=0x42 And RC522_backData[n+1]=0x41 And RC522_backData[n+2]=0x52 And RC522_backData[n+3]=0x43 And RC522_backData[n+7]=0x43 And RC522_backData[n+5]=0x41 Then
              ' Barclaycard
              If PaymentCardType=118 Or PaymentCardType=119 Or PaymentCardType=121 Or PaymentCardType=123 Then PaymentCardType=124
            EndIf
          Next
        EndIf
      EndIf    
    EndIf
  EndIf
  Clear RFIDShutdown
  Return


  
ReadMiFareNDEF:
Dim Key[6] As Byte
' NDEF sector public key
Key[0]=0xD3
Key[1]=0xF7
Key[2]=0xD3
Key[3]=0xF7
Key[4]=0xD3
Key[5]=0xF7

Dim ReqSetLocation As Bit
Dim ReqPowerOff As Bit
Dim ReqExitCMD As Bit
Dim ReqDiags As Bit
Dim JumpCMDFound As Bit
Dim ConfigEntryCount As Byte
Dim blockAddr As Byte
Dim NDEFStage As Byte
Dim NDEFPos As Byte
Dim NDEFLen As Word
Dim NDEFRec As Byte
Dim NDEFTypeLen As Byte
Dim NDEFPayloadLen As Byte
Dim NDEFIDLen As Byte
Dim NDEFID As String * 50
Dim NDEFType As String * 50
Dim NDEFCount As Byte
Dim NDEFPayload As String * 200
Dim TabTxt As String * 2
Dim NDEFMessage[250] As Byte
Dim InitRequested As Bit
Dim NDEFMessageCount As Byte
TabTxt[0]=9
TabTxt[1]=0
Clear ConfigEntryCount
Clear NDEFStage
Clear NDEFLen
Clear InitRequested
Clear ReqSetLocation
Clear ReqPowerOff
Clear ReqExitCMD
Clear ReqDiags
Clear JumpCMDFound
'If WiFiPoweredOnOK=0 Then
'  GoSub PowerOnWiFi
'EndIf
'ReadMiWareWaitForWifi:
'GoSub IdleTasks
'If WiFiPowerOnTimeout>0 And WiFiConnected=0 And WifiConfigBad=0 Then GoTo ReadMiWareWaitForWifi

'If WiFiPoweredOnOK=0 Then
'  SoundTemp=18
'Else 
'  SoundTemp=19
'EndIf
'GoSub QueueSound
blockAddr=2
Dim AuthNeeded As Bit
While blockAddr<56
  Inc blockAddr
  C=blockAddr & 3
  If C=3 Then 
    Inc blockAddr
    Set AuthNeeded
  EndIf
  'GoSub IdleTasks
  RC522_BlockAddress=blockAddr
  Dim RetryCount As Byte
  If AuthNeeded=1 Then
    RetryCount=3
    RetryPCDAuth:
    GoSub PCDAuth
    If RC522_Status<>0 Then
      Dec RetryCount
      If RetryCount=0 Then 
        GoSub NoNDEF ' Failed auth means it won't work
        Break
      EndIf
      'GoSub IdleTasks
      GoTo RetryPCDAuth
    EndIf
    Clear AuthNeeded
  EndIf

  'GoSub IdleTasks
  RetryCount=3
  RetryReadSector:
  GoSub RC522_ReadSector
  If RC522_Status<>0 Then
    Dec RetryCount
    If RetryCount=0 Then 
      GoSub NoNDEF2
      Break
    EndIf
    'GoSub IdleTasks
    GoTo RetryReadSector
  EndIf
  'GoSub IdleTasks
  If RC522_backLen>3 Then
    For NDEFPos=0 To RC522_backLen-3
    Select NDEFStage
      Case 0
        If RC522_backData[NDEFPos]=3 Then Inc NDEFStage
      Case 1
        Inc NDEFStage
        Clear NDEFCount
        If RC522_backData[NDEFPos]<>0xFF Then 
          ' 8 bit size
          Clear NDEFLen.HighByte
          NDEFLen.LowByte=RC522_backData[NDEFPos]
          Inc NDEFStage
          Inc NDEFStage
        Else
          GoSub RecordInvalid
          NDEFStage=255
        EndIf
      Case 2
        NDEFLen.HighByte=RC522_backData[NDEFPos]
        Inc NDEFStage
      Case 3  
        NDEFLen.LowByte=RC522_backData[NDEFPos]
        Inc NDEFStage
      Case 4
        NDEFMessage[NDEFCount]=RC522_backData[NDEFPos]
        Inc NDEFCount
        If NDEFCount=NDEFLen Then
          ' We have the whole message now
          For NDEFMessageCount=0 To NDEFCount-1
            Select NDEFStage
            Case 4
              NDEFRec=NDEFMessage[NDEFMessageCount]
              If NDEFRec.4=0 Then
                ' Contains a record too long to parse
                GoSub RecordInvalid
                Break
              EndIf
              Inc NDEFStage
            Case 5
              ' 7 MB, 6 ME, 5 CF, 4 SR, 3 IL, 2-0 TNF
             NDEFTypeLen=NDEFMessage[NDEFMessageCount]
             If NDEFTypeLen>50 Then
              GoSub RecordInvalid
              Break
             EndIf
             Inc NDEFStage
            Case 6
              ' Assumed this will be a short record (1 byte payload length)
              NDEFPayloadLen=NDEFMessage[NDEFMessageCount]
              Inc NDEFStage
              Clear NDEFType
              Clear NDEFCount
              If NDEFRec.3=0 Then   ' No id field
                Inc NDEFStage
                Clear NDEFIDLen
              EndIf
            Case 7
              NDEFIDLen=NDEFMessage[NDEFMessageCount]
              If NDEFIDLen>50 Then
                GoSub  RecordInvalid2 ' Length exceeds buffer size
                Break
              EndIf
              Inc NDEFStage
            Case 8 ' record type
              NDEFType[NDEFCount]=NDEFMessage[NDEFMessageCount]
              Inc NDEFCount
              If NDEFCount=NDEFTypeLen Then
                Inc NDEFStage
                Clear NDEFID
                Clear NDEFCount
                Clear NDEFPayload
                If NDEFIDLen=0 Then Inc NDEFStage
              EndIf
            Case 9  ' Load the NDEF ID field if it exists
              NDEFID[NDEFCount]=NDEFMessage[NDEFMessageCount]
              Inc NDEFCount
              If NDEFCount=NDEFIDLen Then
                Inc NDEFStage
                Clear NDEFCount
              EndIf
            Case 10
              NDEFPayload[NDEFCount]=NDEFMessage[NDEFMessageCount]
              Inc NDEFCount
              If NDEFCount=NDEFPayloadLen Then
                If NDEFRec & %00000111 = 2 Then ' Only process MIME records
                  If NDEFType="text/init" Then 
                    Set InitRequested
                  ElseIf NDEFType="text/setloc" Then
                    Set ReqSetLocation
                    Set JumpCMDFound
                  ElseIf NDEFType="text/pwroff" Then
                    Set ReqPowerOff
                    Set JumpCMDFound
                  ElseIf NDEFType="text/exitcmd" Then
                    Set ReqExitCMD
                    Set JumpCMDFound
                  ElseIf NDEFType="text/diags" Then
                    Set ReqDiags
                    Set JumpCMDFound
                  Else 
                    Dim CMDBase As String * 4
                    CMDBase[0]="J"
                    CMDBase[1]=0
                    WiFiCMD=CMDBase + NDEFType + TabTxt + NDEFPayload
                    Inc ConfigEntryCount
                    'SoundTemp=ConfigEntryCount
                    'GoSub QueueSound
                    GoSub SendWiFiCMD
                    GeneralTimer=500 ' 10 seconds
                    While TXInProgress=1 And GeneralTimer>0
                      GoSub IdleTasks
                    Wend
                    GeneralTimer=25
                    While GeneralTimer>0
                      GoSub IdleTasks
                    Wend
                    'GeneralTimer=10 ' 200ms delay between commands minimum
                    'While GeneralTimer>0
                    '  GoSub IdleTasks
                    'Wend
                  EndIf
                EndIf
                Clear NDEFCount
                If NDEFRec.6=1 Then ' last record in the block
                  Clear NDEFStage
                  If ConfigEntryCount>0 Then
                    SoundTemp=95
                    GoSub QueueSound
                    SoundTemp=ConfigEntryCount
                    GoSub QueueSound
                    SoundTemp=96
                    GoSub QueueSound
                  Else
                    If JumpCMDFound=0 Then
                      SoundTemp=97
                      GoSub QueueSound
                    EndIf
                  EndIf
                  If InitRequested=1 Then
                    GoSub WaitForSound
                    Clear WifiInitSuccess
                    Clear WifiInitSent
                    Clear WifiInitNoKeys
                    WiFiCMD[0]="I"
                    Clear WiFiCMD[1]
                    GoSub SendWiFiCMD
                    SoundTemp=100
                    GoSub QueueSound
                    GoSub UpdateSound
                    'GeneralTimer=250
                    GoSub WaitForSound
                    'While GeneralTimer>0
                    '  If WifiInitNoKeys=1 Then Break
                    '  If WifiInitSent=1 Then Break
                    '  If WifiInitSuccess=1 Then Break
                    'Wend
                    If WifiInitNoKeys=1 Then
                      SoundTemp=36 '
                      GoSub QueueSound
                    EndIf
                    If WifiInitSent=1 Then
                      GeneralTimer=250
                      While GeneralTimer>0 And WifiInitSuccess=0
                        GoSub UpdateSound
                      Wend
                      If WifiInitSuccess=0 Then
                        SoundTemp=037 ' N
                      Else
                        SoundTemp=27 ' NC
                      EndIf
                      GoSub QueueSound
                    Else
                      SoundTemp=037 ' N
                      GoSub QueueSound
                    EndIf
                  Else
                    If JumpCMDFound=0 Then
                      ' Delay for it to save anything it is doing.
                      GeneralTimer=100
                      While GeneralTimer>0
                        GoSub IdleTasks
                      Wend
                      GoSub PowerOffWiFi
                      GeneralTimer=100
                      While GeneralTimer>0
                        GoSub IdleTasks
                      Wend
                      GoSub PowerOnWiFi
                    EndIf
                  EndIf
                  GoSub WaitForSound
                  If WifiInitSuccess=1 Then GoTo PowerOff
                  NDEFStage=255
                  Break
                Else
                  NDEFStage=4 ' next NDEF record
                EndIf
              EndIf
                                                       
            EndSelect
          Next
          NDEFStage=255
          Break
        EndIf

      Case 255
        Break
    EndSelect
    Next
   EndIf
   If NDEFStage=255 Then Break
Wend

Return

RecordInvalid2:
'WiFiCMD="DRI2" + Str$(Hex2 NDEFRec) + Str$(Hex2 RC522_BlockAddress) + Str$(Hex2 NDEFPos) + Str$(Hex2 NDEFStage) + Str$(Hex2 RC522_backLen) + Str$(Hex2 ConfigEntryCount)
'GoSub SendWiFiCMD
  SoundTemp=88
  GoTo NDEFErrorSound

NoNDEF2:
  'WiFiCMD="DRSEC" + Str$(Hex2 NDEFRec) + Str$(Hex2 RC522_BlockAddress) + Str$(Hex2 NDEFPos) + Str$(Hex2 NDEFStage) + Str$(Hex2 RC522_backLen) + Str$(Hex2 ConfigEntryCount)
  'GoSub SendWiFiCMD
NoNDEF:
  'WiFiCMD="DPCD" + Str$(Hex2 NDEFRec) + Str$(Hex2 RC522_BlockAddress) + Str$(Hex2 NDEFPos) + Str$(Hex2 NDEFStage) + Str$(Hex2 RC522_backLen) + Str$(Hex2 ConfigEntryCount)
  'GoSub SendWiFiCMD
  
  SoundTemp=98
  GoTo NDEFErrorFinal
  
RecordInvalid:
  'WiFiCMD="DRI1" + Str$(Hex2 NDEFRec) + Str$(Hex2 RC522_BlockAddress) + Str$(Hex2 NDEFPos) + Str$(Hex2 NDEFStage) + Str$(Hex2 RC522_backLen) + Str$(Hex2 ConfigEntryCount)
  'GoSub SendWiFiCMD
  'WiFiCMD="D" + Str$(Hex2 NDEFRec) + Str$(Hex2 RC522_BlockAddress) + Str$(Hex2 NDEFPos) + Str$(Hex2 NDEFStage) + Str$(Hex2 RC522_backLen)
  'GoSub SendWiFiCMD
  SoundTemp=99

NDEFErrorFinal:  
  NDEFStage=255

NDEFErrorSound:  
  GoSub QueueSound
  GoTo WaitForSound


PCDAuth:
  RC522_sendData[0]=0x60 ' PICC_AUTHENT1A
  RC522_sendData[1]=blockAddr
  For n=0 To 5
    RC522_sendData[n+2]=Key[n]
  Next
  For n=0 To 3
    RC522_sendData[n+8] = RC522_Token[n]
  Next
  RC522_Command=RC522_PCD_AUTHENT
  RC522_sendLen=12
  GoSub RC522_ToCard
Return


RC522_DetectCard:
  Clear RC522_TokenLen
  RC522_RequestMode=RC522_PICC_REQIDL
  GoSub RC522_Request
  If RC522_Status=RC522_MI_OK Then
    RC522_ATQA[0]=RC522_backData[0]
    RC522_ATQA[1]=RC522_backData[1]
  Else
    Return  
  End If
  GoSub UpdateAnimation
  RC522_Level=RC522_PICC_ANTICOLL_CL1
  GoSub RC522_Anticoll
  If RC522_Status=RC522_MI_OK Then
    If RC522_backData[0]=0x88 Then
      ' More data to come
      RC522_Token[0]=RC522_backData[1]
      RC522_Token[1]=RC522_backData[2]
      RC522_Token[2]=RC522_backData[3]
      RC522_Level=RC522_PICC_SELECTTAG_CL1
      GoSub RC522_SelectTag
      RC522_Level=RC522_PICC_ANTICOLL_CL2
      GoSub RC522_Anticoll
      If RC522_Status=RC522_MI_OK Then
        If RC522_backData[0]=0x88 Then
          RC522_Token[3]=RC522_backData[1]
          RC522_Token[4]=RC522_backData[2]
          RC522_Token[5]=RC522_backData[3]
          RC522_Level=RC522_PICC_SELECTTAG_CL2
          GoSub RC522_SelectTag
          RC522_Level=RC522_PICC_ANTICOLL_CL3
          GoSub RC522_Anticoll
          If RC522_Status=RC522_MI_OK Then
            RC522_Token[6]=RC522_backData[0]
            RC522_Token[7]=RC522_backData[1]
            RC522_Token[8]=RC522_backData[2]
            RC522_Token[9]=RC522_backData[3]
            RC522_TokenLen=10
            RC522_Level=RC522_PICC_SELECTTAG_CL3
            GoSub RC522_SelectTag
            RC522_SAK=RC522_backData[0]
          EndIf
        Else
          RC522_Token[3]=RC522_backData[0]
          RC522_Token[4]=RC522_backData[1]
          RC522_Token[5]=RC522_backData[2]
          RC522_Token[6]=RC522_backData[3]
          RC522_TokenLen=7
          RC522_Level=RC522_PICC_SELECTTAG_CL2
          GoSub RC522_SelectTag
          RC522_SAK=RC522_backData[0]
        EndIf
      EndIf
    Else
      For n=0 To 3
        RC522_Token[n]=RC522_backData[n]
      Next  
      RC522_TokenLen=4
      RC522_Level=RC522_PICC_SELECTTAG_CL1
      GoSub RC522_SelectTag
      RC522_SAK=RC522_backData[0]
    EndIf
  EndIf  
Return

RC522_ToCard:
  Clear RC522_backLen
  RC522_Status=RC522_MI_ERR
  Clear RC522_irqEn
  Clear RC522_waitIRq
  Clear RC522_lastBits
  Clear n
  Clear i
  
  If RC522_Command=RC522_PCD_AUTHENT Then
    RC522_irqEn=0x12
    RC522_waitIRq=0x10
  End If
  If RC522_Command=RC522_PCD_TRANSCEIVE Then
    RC522_irqEn=0x77
    RC522_waitIRq=0x30
  End If 
  
  RC522_Address=RC522_Reg_ComIEnReg
  RC522_Value=RC522_irqEn | 0x80
  GoSub RC522_Write
  RC522_Address=RC522_Reg_ComIrqReg
  RC522_BitMask=0x80
  GoSub RC522_ClearBitMask
  RC522_Address=RC522_Reg_FIFOLevelReg
  RC522_BitMask=0x80
  GoSub RC522_SetBitMask
  RC522_Address=RC522_Reg_CommandReg
  RC522_Value=RC522_PCD_IDLE
  GoSub RC522_Write
  While i<RC522_sendLen
    RC522_Address=RC522_Reg_FIFODataReg
    RC522_Value=RC522_sendData[i]
    GoSub RC522_Write
    Inc i
  Wend
  RC522_Address=RC522_Reg_CommandReg
  RC522_Value=RC522_Command
  GoSub RC522_Write
  If RC522_Command=RC522_PCD_TRANSCEIVE Then
    RC522_Address=RC522_Reg_BitFramingReg
    RC522_BitMask=0x80
    GoSub RC522_SetBitMask
  End If
  i = MaxRFIDWaitTime ' 1000
  While i>0
    RC522_Address=RC522_Reg_ComIrqReg
    GoSub RC522_Read
    n=RC522_Value
    Dec i
    RC522_Temp=RC522_Value & RC522_waitIRq
    If RC522_Temp>0 Then Break
    GoSub UpdateAnimation
  Wend
  RC522_Address=RC522_Reg_BitFramingReg
  RC522_BitMask=0x80
  GoSub RC522_ClearBitMask
  If i=0 Then Return
  RC522_Address=RC522_Reg_ErrorReg
  GoSub RC522_Read
  RC522_Temp=RC522_Value & 0x1B
  If RC522_Temp=0 Then
    RC522_Status=RC522_MI_OK
    RC522_Temp=n & RC522_irqEn & 0x01
    If RC522_Temp>0 Then RC522_Status=RC522_MI_NOTAGERR
    If RC522_Command=RC522_PCD_TRANSCEIVE Then
      RC522_Address=RC522_Reg_FIFOLevelReg
      GoSub RC522_Read
      RC522_backLen=RC522_Value
      RC522_Address=RC522_Reg_ControlReg
      GoSub RC522_Read
      RC522_lastBits=RC522_Value & 0x07
      RC522_bitLen=RC522_backLen * 8
      If RC522_lastBits<>0 Then
        RC522_bitLen=RC522_bitLen - 8 + RC522_lastBits
      End If
      If n=0 Then n=1
      If n>RC522_MaxLen Then n=RC522_MaxLen
      Clear i
      While i<n
        RC522_Address=RC522_Reg_FIFODataReg
        GoSub RC522_Read
        RC522_backData[i]=RC522_Value
        Inc i
      Wend
    End If
  Else
    RC522_Status=RC522_MI_ERR
  EndIf
Return

' Must have RC522_RequestMode set
RC522_Request:
  Clear RC522_Status
  RC522_Address=RC522_Reg_BitFramingReg
  RC522_Value=0x07
  GoSub RC522_Write
  RC522_Command=RC522_PCD_TRANSCEIVE
  RC522_sendData[0]=RC522_RequestMode
  RC522_sendLen=1
  GoSub RC522_ToCard
  If RC522_bitLen<>0x10 Then RC522_Status=RC522_MI_ERR
  If RC522_Status<>RC522_MI_OK Then RC522_Status=RC522_MI_ERR
Return

' Must have RC522_AnticollLevel set
RC522_Anticoll:
  Clear RC522_backLen
  Clear RC522_serNumCheck
  RC522_Address=RC522_Reg_BitFramingReg
  RC522_Value=0
  GoSub RC522_Write
  RC522_sendData[0]=RC522_Level
  RC522_sendData[1]=0x20
  RC522_sendLen=2
  RC522_Command=RC522_PCD_TRANSCEIVE
  GoSub RC522_ToCard
  If RC522_Status=RC522_MI_OK Then
    Clear i
    'RsOut "backlen: ", Hex RC522_backLen, 13,10
    If RC522_backLen=5 Then
      While i<4
         RC522_serNumCheck=RC522_serNumCheck ^ RC522_backData[i]
         Inc i
      Wend
      If RC522_serNumCheck<>RC522_backData[i] Then RC522_Status=RC522_MI_ERR
    Else
      RC522_Status=RC522_MI_ERR
    EndIf
  EndIf
Return

' Must have the RC522_sendData and RC522_sendLen variables populated.  CRC saved at end of send buffer.
RC522_CalculateCRC:
  RC522_Address=RC522_Reg_DivIrqReg
  RC522_BitMask=0x04
  GoSub RC522_ClearBitMask
  RC522_Address=RC522_Reg_FIFOLevelReg
  RC522_BitMask=0x80
  GoSub RC522_SetBitMask
  Clear i
  While i<RC522_sendLen
    RC522_Address=RC522_Reg_FIFODataReg
    RC522_Value=RC522_sendData[i]
    GoSub RC522_Write
    Inc i
  Wend
  RC522_Address=RC522_Reg_CommandReg
  RC522_Value=RC522_PCD_CALCCRC
  GoSub RC522_Write
  i=0xFF
  CRCWait:
    RC522_Address=RC522_Reg_DivIrqReg
    GoSub RC522_Read
    Dec i
    If RC522_Value.2=1 Then GoTo CRCFound
    GoSub UpdateAnimation
  If i>0 Then GoTo CRCWait  
  CRCFound:
  RC522_Address=RC522_Reg_CRCResultRegL
  GoSub RC522_Read
  RC522_sendData[RC522_sendLen]=RC522_Value
  Inc RC522_sendLen
  RC522_Address=RC522_Reg_CRCResultRegM
  GoSub RC522_Read
  RC522_sendData[RC522_sendLen]=RC522_Value
  Inc RC522_sendLen
Return

' RC522_backData must contain the 4 byte UID
RC522_SelectTag:
  RC522_sendData[0]=RC522_Level
  RC522_sendData[1]=0x70
  Clear i
  n=2
  While i<5
    RC522_Temp=RC522_backData[i]
    RC522_sendData[n]=RC522_Temp
    Inc i
    Inc n
  Wend
  RC522_sendLen=7
  GoSub RC522_CalculateCRC
  RC522_Command=RC522_PCD_TRANSCEIVE
  GoSub RC522_ToCard
Return

' Must set RC522_BlockAddress before calling
RC522_ReadSector:
  RC522_sendData[0]=RC522_PICC_READ
  RC522_sendData[1]=RC522_BlockAddress
  RC522_sendLen=2
  GoSub RC522_CalculateCRC
  RC522_Command=RC522_PCD_TRANSCEIVE
  GoSub RC522_ToCard
Return

RC522_Init:
  GoSub RC522_Reset
  RC522_Address=RC522_Reg_TModeReg 
  RC522_Value=0x8D
  GoSub RC522_Write
  RC522_Address=RC522_Reg_TPrescalerReg
  RC522_Value=0x3E
  GoSub RC522_Write
  RC522_Address=RC522_Reg_TReloadRegL
  RC522_Value=30
  GoSub RC522_Write
  RC522_Address=RC522_Reg_TReloadRegH
  RC522_Value=0
  GoSub RC522_Write
  RC522_Address=RC522_Reg_TxAutoReg
  RC522_Value=0x40
  GoSub RC522_Write
  RC522_Address=RC522_Reg_ModeReg
  RC522_Value=0x3D
  GoSub RC522_Write
  RC522_Address=RC522_Reg_RFCfgReg
  RC522_Value=(0x07<<4)
  GoSub RC522_Write
  GoSub RC522_AntennaOn
Return

RC522_Reset:
  RC522_Address=RC522_Reg_CommandReg
  RC522_Value=RC522_PCD_RESETPHASE
  GoSub RC522_Write
Return

RC522_AntennaOn:
  RC522_Address=RC522_Reg_TxControlReg
  GoSub RC522_Read
  If RC522_Value.0=0 Or RC522_Value.1=0 Then
      RC522_BitMask=3
      GoSub RC522_SetBitMask
  EndIf
Return

RC522_AntennaOff: 
  RC522_Address=RC522_Reg_TxControlReg
  RC522_BitMask=3
  GoSub RC522_ClearBitMask
Return

RC522_SetBitMask:
  RC522_Value=0
  GoSub RC522_Read
  RC522_Value=RC522_Value | RC522_BitMask
  GoSub RC522_Write
  Return

RC522_ClearBitMask:
  RC522_Value=0
  GoSub RC522_Read
  RC522_Value=RC522_Value & (~RC522_BitMask)
  GoSub RC522_Write
Return

RC522_Write:
  Clear SPIRFIDSelect
  RC522_Temp=SSP1BUF
  RC522_Temp=RC522_Address << 1
  RC522_Temp=RC522_Temp & $7E
  SSP1BUF=RC522_Temp
  While BF=0
    'GoSub UpdateAnimation
  Wend
  RC522_Temp=SSP1BUF
  SSP1BUF=RC522_Value
  While BF=0
    'GoSub UpdateAnimation
  Wend
  RC522_Value=SSP1BUF
  Set SPIRFIDSelect
Return

RC522_Read:
  Clear SPIRFIDSelect
  RC522_Temp=SSP1BUF
  RC522_Temp=RC522_Address << 1
  RC522_Temp=RC522_Temp & $7E
  RC522_Temp=RC522_Temp | $80

  SSP1BUF=RC522_Temp
  While BF=0
    'GoSub UpdateAnimation
  Wend
  RC522_Temp=SSP1BUF
  SSP1BUF=0
  While BF=0
    'GoSub UpdateAnimation
  Wend
  RC522_Value=SSP1BUF
  Set SPIRFIDSelect
Return


Snooze2s:
   WDTCON0=%00010111 ' Enable WDT at 2s interval
   GoTo SnoozeNow

Snooze1s:
  WDTCON0=%00010101 ' Enable WDT at 1s interval
  GoTo SnoozeNow

Snooze512ms:
   WDTCON0=%00010011 ' Enable WDT at 512ms interval
   GoTo SnoozeNow

Snooze256ms:
   WDTCON0=%00010001 ' Enable WDT at 256ms interval
   GoTo SnoozeNow
   
Snooze128ms:
   WDTCON0=%00001111 ' Enable WDT at 128ms interval

SnoozeNow:   
   Asm
   Sleep
   EndAsm
   Clear WDTCON0
Return


PowerOff:
  GoSub LED1PowerOn
  GoSub LED2PowerOn
  GoSub PowerOffSound
  GoSub BlankAllLED1s
  GoSub BlankAllLED2s
  LED1ByteCount=51
  LED2ByteCount=36
  GoSub SendLEDData
  DelayMS 25
  GoSub LED1PowerOff
  GoSub LED2PowerOff
  DelayMS 25
  Clear PowerControl
PowerOffLoop:
  GoTo PowerOffLoop
