;   /\\\\\\\\\
;  /\\\///////\\\
;  \/\\\     \/\\\                                                 /\\\          /\\\
;   \/\\\\\\\\\\\/        /\\\\\     /\\\\\\\\\\     /\\\\\\\\   /\\\\\\\\\\\  /\\\\\\\\\\\  /\\\\\\\\\
;    \/\\\//////\\\      /\\\///\\\  \/\\\//////    /\\\/////\\\ \////\\\////  \////\\\////  \////////\\\
;     \/\\\    \//\\\    /\\\  \//\\\ \/\\\\\\\\\\  /\\\\\\\\\\\     \/\\\         \/\\\        /\\\\\\\\\\
;      \/\\\     \//\\\  \//\\\  /\\\  \////////\\\ \//\\///////      \/\\\ /\\     \/\\\ /\\   /\\\/////\\\
;       \/\\\      \//\\\  \///\\\\\/    /\\\\\\\\\\  \//\\\\\\\\\\    \//\\\\\      \//\\\\\   \//\\\\\\\\/\\
;        \///        \///     \/////     \//////////    \//////////      \/////        \/////     \////////\//
;                                  Let's find out together what makes a PIC Tick!
;
; Code Produced by the Positron8 Compiler. Version 4.0.4.0
; Created and Written by Les Johnson. 
; Compiler version for Michael Turner
;----------------------------------------------------------
;
#define config_req 1
 LIST  P = 16F15356, F = INHX32, W = 2, X = ON, R = DEC, MM = ON, N = 0, C = 255
; MICROCONTROLLER'S SFRS
INDF0 equ 0X0000
INDF1 equ 0X0001
PCL equ 0X0002
STATUS equ 0X0003
FSR0 equ 0X0004
FSR0L equ 0X0004
FSR0LH equ 0X0005
FSR0H equ 0X0005
FSR1 equ 0X0006
FSR1L equ 0X0006
FSR1LH equ 0X0007
FSR1H equ 0X0007
BSR equ 0X0008
WREG equ 0X0009
PCLATH equ 0X000A
INTCON equ 0X000B
PORTA equ 0X000C
PORTB equ 0X000D
PORTC equ 0X000E
PORTE equ 0X0010
TRISA equ 0X0012
TRISB equ 0X0013
TRISC equ 0X0014
TRISE equ 0X0016
LATA equ 0X0018
LATB equ 0X0019
LATC equ 0X001A
ADRES equ 0X009B
ADRESL equ 0X009B
ADRESLH equ 0X009C
ADRESH equ 0X009C
ADCON0 equ 0X009D
ADCON1 equ 0X009E
ADACT equ 0X009F
RC1REG equ 0X0119
RCREG equ 0X0119
RCREG1 equ 0X0119
TX1REG equ 0X011A
TXREG equ 0X011A
TXREG1 equ 0X011A
SP1BRG equ 0X011B
SP1BRGL equ 0X011B
SPBRG equ 0X011B
SPBRG1 equ 0X011B
SPBRGL equ 0X011B
SP1BRGH equ 0X011C
SPBRGLH equ 0X011C
SPBRGH equ 0X011C
SPBRGLH1 equ 0X011C
SPBRGH1 equ 0X011C
RC1STA equ 0X011D
RCSTA equ 0X011D
RCSTA1 equ 0X011D
TX1STA equ 0X011E
TXSTA equ 0X011E
TXSTA1 equ 0X011E
BAUD1CON equ 0X011F
BAUDCON equ 0X011F
BAUDCON1 equ 0X011F
BAUDCTL equ 0X011F
BAUDCTL1 equ 0X011F
SSP1BUF equ 0X018C
SSP1ADD equ 0X018D
SSP1MSK equ 0X018E
SSP1STAT equ 0X018F
SSP1CON1 equ 0X0190
SSP1CON2 equ 0X0191
SSP1CON3 equ 0X0192
SSP2BUF equ 0X0196
SSP2ADD equ 0X0197
SSP2MSK equ 0X0198
SSP2STAT equ 0X0199
SSP2CON1 equ 0X019A
SSP2CON2 equ 0X019B
SSP2CON3 equ 0X019C
TMR1 equ 0X020C
TMR1L equ 0X020C
TMR1LH equ 0X020D
TMR1H equ 0X020D
T1CON equ 0X020E
PR1 equ 0X020F
T1GCON equ 0X020F
T1GATE equ 0X0210
TMR1GATE equ 0X0210
T1CLK equ 0X0211
TMR1CLK equ 0X0211
T2TMR equ 0X028C
TMR2 equ 0X028C
PR2 equ 0X028D
T2PR equ 0X028D
T2CON equ 0X028E
T2HLT equ 0X028F
T2CLKCON equ 0X0290
T2RST equ 0X0291
CCPR1 equ 0X030C
CCPR1L equ 0X030C
CCPR1LH equ 0X030D
CCPR1H equ 0X030D
CCP1CON equ 0X030E
CCP1CAP equ 0X030F
CCPR2 equ 0X0310
CCPR2L equ 0X0310
CCPR2LH equ 0X0311
CCPR2H equ 0X0311
CCP2CON equ 0X0312
CCP2CAP equ 0X0313
PWM3DCL equ 0X0314
PWM3DCLH equ 0X0315
PWM3DCH equ 0X0315
PWM3CON equ 0X0316
PWM4DCL equ 0X0318
PWM4DCLH equ 0X0319
PWM4DCH equ 0X0319
PWM4CON equ 0X031A
PWM5DCL equ 0X031C
PWM5DCLH equ 0X031D
PWM5DCH equ 0X031D
PWM5CON equ 0X031E
PWM6DCL equ 0X038C
PWM6DCLH equ 0X038D
PWM6DCH equ 0X038D
PWM6CON equ 0X038E
NCO1ACC equ 0X058C
NCO1ACCL equ 0X058C
NCO1ACCLH equ 0X058D
NCO1ACCH equ 0X058D
NCO1ACCLHH equ 0X058E
NCO1ACCLHHH equ 0X0009
NCO1ACCU equ 0X058E
NCO1INC equ 0X058F
NCO1INCL equ 0X058F
NCO1INCLH equ 0X0590
NCO1INCH equ 0X0590
NCO1INCLHH equ 0X0591
NCO1INCLHHH equ 0X0009
NCO1INCU equ 0X0591
NCO1CON equ 0X0592
NCO1CLK equ 0X0593
TMR0 equ 0X059C
TMR0L equ 0X059C
PR0 equ 0X059D
TMR0LH equ 0X059D
TMR0H equ 0X059D
T0CON0 equ 0X059E
T0CON1 equ 0X059F
CWG1CLKCON equ 0X060C
CWG1DAT equ 0X060D
CWG1DBR equ 0X060E
CWG1DBF equ 0X060F
CWG1CON0 equ 0X0610
CWG1CON1 equ 0X0611
CWG1AS0 equ 0X0612
CWG1AS1 equ 0X0613
CWG1STR equ 0X0614
PIR0 equ 0X070C
PIR1 equ 0X070D
PIR2 equ 0X070E
PIR3 equ 0X070F
PIR4 equ 0X0710
PIR5 equ 0X0711
PIR6 equ 0X0712
PIR7 equ 0X0713
PIE0 equ 0X0716
PIE1 equ 0X0717
PIE2 equ 0X0718
PIE3 equ 0X0719
PIE4 equ 0X071A
PIE5 equ 0X071B
PIE6 equ 0X071C
PIE7 equ 0X071D
PMD0 equ 0X0796
PMD1 equ 0X0797
PMD2 equ 0X0798
PMD3 equ 0X0799
PMD4 equ 0X079A
PMD5 equ 0X079B
WDTCON0 equ 0X080C
WDTCON1 equ 0X080D
WDTPSL equ 0X080E
WDTPSLH equ 0X080F
WDTPSH equ 0X080F
WDTTMR equ 0X0810
BORCON equ 0X0811
VREGCON equ 0X0812
PCON0 equ 0X0813
PCON1 equ 0X0814
EEADR equ 0X081A
NVMADR equ 0X081A
EEADRL equ 0X081A
NVMADRL equ 0X081A
NVMADRLH equ 0X081B
EEADRH equ 0X081B
EEADRLH equ 0X081B
NVMADRH equ 0X081B
NVMDATA equ 0X081C
EEDAT equ 0X081C
EEDATA equ 0X081C
NVMDAT equ 0X081C
NVMDATAL equ 0X081C
EEDATL equ 0X081C
EEDATAL equ 0X081C
NVMDATL equ 0X081C
NVMDATAH equ 0X081D
EEDATH equ 0X081D
EEDATAH equ 0X081D
NVMDATH equ 0X081D
EECON1 equ 0X081E
NVMCON1 equ 0X081E
EECON2 equ 0X081F
NVMCON2 equ 0X081F
CPUDOZE equ 0X088C
OSCCON1 equ 0X088D
OSCCON2 equ 0X088E
OSCCON3 equ 0X088F
OSCSTAT equ 0X0890
OSCEN equ 0X0891
OSCTUNE equ 0X0892
OSCFRQ equ 0X0893
CLKRCON equ 0X0895
CLKRCLK equ 0X0896
FVRCON equ 0X090C
DAC1CON0 equ 0X090E
DAC1CON1 equ 0X090F
ZCDCON equ 0X091F
CMOUT equ 0X098F
CMSTAT equ 0X098F
CM1CON0 equ 0X0990
CM1CON1 equ 0X0991
CM1NCH equ 0X0992
CM1PCH equ 0X0993
CM2CON0 equ 0X0994
CM2CON1 equ 0X0995
CM2NCH equ 0X0996
CM2PCH equ 0X0997
RC2REG equ 0X0A19
RCREG2 equ 0X0A19
TX2REG equ 0X0A1A
TXREG2 equ 0X0A1A
SP2BRG equ 0X0A1B
SP2BRGL equ 0X0A1B
SPBRG2 equ 0X0A1B
SP2BRGH equ 0X0A1C
SPBRGLH2 equ 0X0A1C
SPBRGH2 equ 0X0A1C
RC2STA equ 0X0A1D
RCSTA2 equ 0X0A1D
TX2STA equ 0X0A1E
TXSTA2 equ 0X0A1E
BAUD2CON equ 0X0A1F
BAUDCON2 equ 0X0A1F
BAUDCTL2 equ 0X0A1F
CLCDATA equ 0X1E0F
CLC1CON equ 0X1E10
CLC1POL equ 0X1E11
CLC1SEL0 equ 0X1E12
CLC1SEL1 equ 0X1E13
CLC1SEL2 equ 0X1E14
CLC1SEL3 equ 0X1E15
CLC1GLS0 equ 0X1E16
CLC1GLS1 equ 0X1E17
CLC1GLS2 equ 0X1E18
CLC1GLS3 equ 0X1E19
CLC2CON equ 0X1E1A
CLC2POL equ 0X1E1B
CLC2SEL0 equ 0X1E1C
CLC2SEL1 equ 0X1E1D
CLC2SEL2 equ 0X1E1E
CLC2SEL3 equ 0X1E1F
CLC2GLS0 equ 0X1E20
CLC2GLS1 equ 0X1E21
CLC2GLS2 equ 0X1E22
CLC2GLS3 equ 0X1E23
CLC3CON equ 0X1E24
CLC3POL equ 0X1E25
CLC3SEL0 equ 0X1E26
CLC3SEL1 equ 0X1E27
CLC3SEL2 equ 0X1E28
CLC3SEL3 equ 0X1E29
CLC3GLS0 equ 0X1E2A
CLC3GLS1 equ 0X1E2B
CLC3GLS2 equ 0X1E2C
CLC3GLS3 equ 0X1E2D
CLC4CON equ 0X1E2E
CLC4POL equ 0X1E2F
CLC4SEL0 equ 0X1E30
CLC4SEL1 equ 0X1E31
CLC4SEL2 equ 0X1E32
CLC4SEL3 equ 0X1E33
CLC4GLS0 equ 0X1E34
CLC4GLS1 equ 0X1E35
CLC4GLS2 equ 0X1E36
CLC4GLS3 equ 0X1E37
PPSLOCK equ 0X1E8F
INTPPS equ 0X1E90
T0CKIPPS equ 0X1E91
T1CKIPPS equ 0X1E92
T1GPPS equ 0X1E93
T2INPPS equ 0X1E9C
CCP1PPS equ 0X1EA1
CCP2PPS equ 0X1EA2
CWG1PPS equ 0X1EB1
CLCIN0PPS equ 0X1EBB
CLCIN1PPS equ 0X1EBC
CLCIN2PPS equ 0X1EBD
CLCIN3PPS equ 0X1EBE
ADACTPPS equ 0X1EC3
SSP1CLKPPS equ 0X1EC5
SSP1DATPPS equ 0X1EC6
SSP1SSPPS equ 0X1EC7
SSP2CLKPPS equ 0X1EC8
SSP2DATPPS equ 0X1EC9
SSP2SSPPS equ 0X1ECA
RX1DTPPS equ 0X1ECB
RX1PPS equ 0X1ECB
TX1CKPPS equ 0X1ECC
RX2DTPPS equ 0X1ECD
TX2CKPPS equ 0X1ECE
RA0PPS equ 0X1F10
RA1PPS equ 0X1F11
RA2PPS equ 0X1F12
RA3PPS equ 0X1F13
RA4PPS equ 0X1F14
RA5PPS equ 0X1F15
RA6PPS equ 0X1F16
RA7PPS equ 0X1F17
RB0PPS equ 0X1F18
RB1PPS equ 0X1F19
RB2PPS equ 0X1F1A
RB3PPS equ 0X1F1B
RB4PPS equ 0X1F1C
RB5PPS equ 0X1F1D
RB6PPS equ 0X1F1E
RB7PPS equ 0X1F1F
RC0PPS equ 0X1F20
RC1PPS equ 0X1F21
RC2PPS equ 0X1F22
RC3PPS equ 0X1F23
RC4PPS equ 0X1F24
RC5PPS equ 0X1F25
RC6PPS equ 0X1F26
RC7PPS equ 0X1F27
ANSELA equ 0X1F38
WPUA equ 0X1F39
ODCONA equ 0X1F3A
SLRCONA equ 0X1F3B
INLVLA equ 0X1F3C
IOCAP equ 0X1F3D
IOCAN equ 0X1F3E
IOCAF equ 0X1F3F
ANSELB equ 0X1F43
WPUB equ 0X1F44
ODCONB equ 0X1F45
SLRCONB equ 0X1F46
INLVLB equ 0X1F47
IOCBP equ 0X1F48
IOCBN equ 0X1F49
IOCBF equ 0X1F4A
ANSELC equ 0X1F4E
WPUC equ 0X1F4F
ODCONC equ 0X1F50
SLRCONC equ 0X1F51
INLVLC equ 0X1F52
IOCCP equ 0X1F53
IOCCN equ 0X1F54
IOCCF equ 0X1F55
WPUE equ 0X1F65
INLVLE equ 0X1F68
IOCEP equ 0X1F69
IOCEN equ 0X1F6A
IOCEF equ 0X1F6B
STATUS_SHAD equ 0X1FE4
WREG_SHAD equ 0X1FE5
BSR_SHAD equ 0X1FE6
PCLATH_SHAD equ 0X1FE7
FSR0L_SHAD equ 0X1FE8
FSR0_SHAD equ 0X1FE8
FSR0LH_SHAD equ 0X1FE9
FSR0H_SHAD equ 0X1FE9
FSR1L_SHAD equ 0X1FEA
FSR1LH_SHAD equ 0X1FEB
FSR1H_SHAD equ 0X1FEB
STKPTR equ 0X1FED
TOSL equ 0X1FEE
TOSLH equ 0X1FEF
TOSH equ 0X1FEF
; I2C PINS USED BY HBUSIN AND HBUSOUT
_I2C_SDA_port=TRISC
_I2C_SDA_pin=4
_I2C_SCL_port=TRISC
_I2C_SCL_pin=3
; SFR BITS USED INTERNALLY BY THE COMPILER
C=0
DC=1
Z=2
PD=3
To=4
BSR0=0
BSR1=1
BSR2=2
BSR3=3
BSR4=4
PP_ADON=0
PP_GONDONE=1
PP_GO_NOT_DONE=1
PP_OERR=1
PP_CREN=4
PP_BRGH=2
PP_SENDB=3
PP_BRG16=3
PP_BF=0
PP_R_NOT_W=2
PP_R_W=2
PP_SEN=0
PP_RSEN=1
PP_PEN=2
PP_RCEN=3
PP_ACKEN=4
PP_ACKDT=5
PP_ACKSTAT=6
PP_RD16=1
PP_T2CKPS0=4
PP_T2CKPS1=5
PP_T2CKPS2=6
PP_TMR2ON=7
PP_TX1IF=4
PP_RC1IF=5
PP_TX2IF=6
PP_RC2IF=7
PP_RD=0
PP_WR=1
PP_WREN=2
PP_WRERR=3
PP_NVMREGS=6
; PPS INTERNAL VALUES
_PPS_FN_SCK1=21
_PPS_FN_SCL1=21
_PPS_FN_SDA1=22
_PPS_FN_SCK2=23
_PPS_FN_SCL2=23
_PPS_FN_SDA2=24
_PPS_FN_DT2=18
_PPS_FN_CK2=17
_PPS_FN_CLKR=27
_PPS_FN_NCO=26
_PPS_FN_TMR0=25
_PPS_FN_SDO2=24
_PPS_FN_SDO1=22
_PPS_FN_C2OUT=20
_PPS_FN_C1OUT=19
_PPS_FN_TX2=17
_PPS_FN_PWM6OUT=14
_PPS_FN_PWM5OUT=13
_PPS_FN_PWM4OUT=12
_PPS_FN_PWM3OUT=11
_PPS_FN_CCP2=10
_PPS_FN_CCP1=9
_PPS_FN_CWG1D=8
_PPS_FN_CWG1C=7
_PPS_FN_CWG1B=6
_PPS_FN_CWG1A=5
_PPS_FN_CLC4OUT=4
_PPS_FN_CLC3OUT=3
_PPS_FN_CLC2OUT=2
_PPS_FN_CLC1OUT=1
_PPS_FN_DT1=16
_PPS_FN_RX1=16
_PPS_FN_RX=16
_PPS_FN_CK1=15
_PPS_FN_TX=15
_PPS_FN_TX1=15
; MEMORY MAP OF THE DEVICE
  __MAXRAM  0X1FFF
  __BADRAM  0X000F
  __BADRAM  0X0011
  __BADRAM  0X0015
  __BADRAM  0X0017
  __BADRAM  0X001B
  __BADRAM  0X001C
  __BADRAM  0X001D
  __BADRAM  0X001E-0X001F
  __BADRAM  0X008C-0X009A
  __BADRAM  0X010C-0X0118
  __BADRAM  0X0193-0X0195
  __BADRAM  0X019D-0X019F
  __BADRAM  0X0212-0X021F
  __BADRAM  0X0292-0X029F
  __BADRAM  0X0317
  __BADRAM  0X031B
  __BADRAM  0X031F
  __BADRAM  0X038F-0X039F
  __BADRAM  0X040C-0X041F
  __BADRAM  0X048C-0X049F
  __BADRAM  0X050C-0X051F
  __BADRAM  0X0594-0X059B
  __BADRAM  0X0615-0X061F
  __BADRAM  0X068C-0X069F
  __BADRAM  0X0714
  __BADRAM  0X0715
  __BADRAM  0X071E
  __BADRAM  0X071F
  __BADRAM  0X078C-0X0795
  __BADRAM  0X079C-0X079F
  __BADRAM  0X0815-0X0819
  __BADRAM  0X0894
  __BADRAM  0X0897-0X089F
  __BADRAM  0X090D
  __BADRAM  0X0910-0X091E
  __BADRAM  0X098C-0X098E
  __BADRAM  0X0998-0X099F
  __BADRAM  0X0A0C-0X0A18
  __BADRAM  0X0A8C-0X0A9F
  __BADRAM  0X0B0C-0X0B1F
  __BADRAM  0X0B8C-0X0B9F
  __BADRAM  0X0C0C-0X0C1F
  __BADRAM  0X0C8C-0X0C9F
  __BADRAM  0X0CC0-0X0CEF
  __BADRAM  0X0D0C-0X0D1F
  __BADRAM  0X0D20-0X0D6F
  __BADRAM  0X0D8C-0X0D9F
  __BADRAM  0X0DA0-0X0DEF
  __BADRAM  0X0E0C-0X0E1F
  __BADRAM  0X0E20-0X0E6F
  __BADRAM  0X0E8C-0X0E9F
  __BADRAM  0X0EA0-0X0EEF
  __BADRAM  0X0F0C-0X0F1F
  __BADRAM  0X0F20-0X0F6F
  __BADRAM  0X0F8C-0X0F9F
  __BADRAM  0X0FA0-0X0FEF
  __BADRAM  0X100C-0X101F
  __BADRAM  0X1020-0X106F
  __BADRAM  0X108C-0X109F
  __BADRAM  0X10A0-0X10EF
  __BADRAM  0X110C-0X111F
  __BADRAM  0X1120-0X116F
  __BADRAM  0X118C-0X119F
  __BADRAM  0X11A0-0X11EF
  __BADRAM  0X120C-0X121F
  __BADRAM  0X1220-0X126F
  __BADRAM  0X128C-0X129F
  __BADRAM  0X12A0-0X12EF
  __BADRAM  0X130C-0X131F
  __BADRAM  0X1320-0X136F
  __BADRAM  0X138C-0X139F
  __BADRAM  0X13A0-0X13EF
  __BADRAM  0X140C-0X141F
  __BADRAM  0X1420-0X146F
  __BADRAM  0X148C-0X149F
  __BADRAM  0X14A0-0X14EF
  __BADRAM  0X150C-0X151F
  __BADRAM  0X1520-0X156F
  __BADRAM  0X158C-0X159F
  __BADRAM  0X15A0-0X15EF
  __BADRAM  0X160C-0X161F
  __BADRAM  0X1620-0X166F
  __BADRAM  0X168C-0X169F
  __BADRAM  0X16A0-0X16EF
  __BADRAM  0X170C-0X171F
  __BADRAM  0X1720-0X176F
  __BADRAM  0X178C-0X179F
  __BADRAM  0X17A0-0X17EF
  __BADRAM  0X180C-0X181F
  __BADRAM  0X1820-0X186F
  __BADRAM  0X188C-0X189F
  __BADRAM  0X18A0-0X18EF
  __BADRAM  0X190C-0X191F
  __BADRAM  0X1920-0X196F
  __BADRAM  0X198C-0X199F
  __BADRAM  0X19A0-0X19EF
  __BADRAM  0X1A0C-0X1A1F
  __BADRAM  0X1A20-0X1A6F
  __BADRAM  0X1A8C-0X1A9F
  __BADRAM  0X1AA0-0X1AEF
  __BADRAM  0X1B0C-0X1B1F
  __BADRAM  0X1B20-0X1B6F
  __BADRAM  0X1B8C-0X1B9F
  __BADRAM  0X1BA0-0X1BEF
  __BADRAM  0X1C0C-0X1C1F
  __BADRAM  0X1C20-0X1C6F
  __BADRAM  0X1C8C-0X1C9F
  __BADRAM  0X1CA0-0X1CEF
  __BADRAM  0X1D0C-0X1D1F
  __BADRAM  0X1D20-0X1D6F
  __BADRAM  0X1D8C-0X1D9F
  __BADRAM  0X1DA0-0X1DEF
  __BADRAM  0X1E0C-0X1E0E
  __BADRAM  0X1E38-0X1E6F
  __BADRAM  0X1E8C-0X1E8E
  __BADRAM  0X1E94-0X1E9B
  __BADRAM  0X1E9D-0X1EA0
  __BADRAM  0X1EA3-0X1EB0
  __BADRAM  0X1EB2-0X1EBA
  __BADRAM  0X1EBF-0X1EC2
  __BADRAM  0X1EC4
  __BADRAM  0X1ECF-0X1EEF
  __BADRAM  0X1F0C-0X1F0F
  __BADRAM  0X1F28-0X1F37
  __BADRAM  0X1F40-0X1F42
  __BADRAM  0X1F4B-0X1F4D
  __BADRAM  0X1F56-0X1F64
  __BADRAM  0X1F66-0X1F67
  __BADRAM  0X1F6C-0X1F6F
  __BADRAM  0X1F8C-0X1FB7
  __BADRAM  0X1FB8-0X1FE3
  __BADRAM  0X1FEC
; CONFIG FUSE NAME VALUES
_CONFIG1 equ 0X8007
_CONFIG2 equ 0X8008
_CONFIG3 equ 0X8009
_CONFIG4 equ 0X800A
_CONFIG5 equ 0X800B
FEXTOSC_LP equ 0X3FF8
FEXTOSC_XT equ 0X3FF9
FEXTOSC_HS equ 0X3FFA
FEXTOSC_RESERVED equ 0X3FFB
FEXTOSC_OFF equ 0X3FFC
FEXTOSC_ECL equ 0X3FFD
FEXTOSC_ECM equ 0X3FFE
FEXTOSC_ECH equ 0X3FFF
RSTOSC_HFINT32 equ 0X3F8F
RSTOSC_HFINTPLL equ 0X3F9F
RSTOSC_EXT4X equ 0X3FAF
RSTOSC_RESERVED equ 0X3FBF
RSTOSC_SOSC equ 0X3FCF
RSTOSC_LFINT equ 0X3FDF
RSTOSC_HFINT1 equ 0X3FEF
RSTOSC_EXT1X equ 0X3FFF
CLKOUTEN_ON equ 0X3EFF
CLKOUTEN_OFF equ 0X3FFF
CSWEN_OFF equ 0X37FF
CSWEN_ON equ 0X3FFF
FCMEN_OFF equ 0X1FFF
FCMEN_ON equ 0X3FFF
MCLRE_OFF equ 0X3FFE
MCLRE_ON equ 0X3FFF
PWRTE_ON equ 0X3FFD
PWRTE_OFF equ 0X3FFF
LPBOREN_ON equ 0X3FDF
LPBOREN_OFF equ 0X3FFF
BOREN_OFF equ 0X3F3F
BOREN_SBOREN equ 0X3F7F
BOREN_NSLEEP equ 0X3FBF
BOREN_ON equ 0X3FFF
BORV_HI equ 0X3DFF
BORV_LO equ 0X3FFF
ZCD_ON equ 0X3BFF
ZCD_OFF equ 0X3FFF
PPS1WAY_OFF equ 0X37FF
PPS1WAY_ON equ 0X3FFF
STVREN_OFF equ 0X2FFF
STVREN_ON equ 0X3FFF
WDTCPS_WDTCPS_0 equ 0X3FE0
WDTCPS_WDTCPS_1 equ 0X3FE1
WDTCPS_WDTCPS_2 equ 0X3FE2
WDTCPS_WDTCPS_3 equ 0X3FE3
WDTCPS_WDTCPS_4 equ 0X3FE4
WDTCPS_WDTCPS_5 equ 0X3FE5
WDTCPS_WDTCPS_6 equ 0X3FE6
WDTCPS_WDTCPS_7 equ 0X3FE7
WDTCPS_WDTCPS_8 equ 0X3FE8
WDTCPS_WDTCPS_9 equ 0X3FE9
WDTCPS_WDTCPS_10 equ 0X3FEA
WDTCPS_WDTCPS_11 equ 0X3FEB
WDTCPS_WDTCPS_12 equ 0X3FEC
WDTCPS_WDTCPS_13 equ 0X3FED
WDTCPS_WDTCPS_14 equ 0X3FEE
WDTCPS_WDTCPS_15 equ 0X3FEF
WDTCPS_WDTCPS_16 equ 0X3FF0
WDTCPS_WDTCPS_17 equ 0X3FF1
WDTCPS_WDTCPS_18 equ 0X3FF2
WDTCPS_WDTCPS_19 equ 0X3FF3
WDTCPS_WDTCPS_20 equ 0X3FF4
WDTCPS_WDTCPS_21 equ 0X3FF5
WDTCPS_WDTCPS_22 equ 0X3FF6
WDTCPS_WDTCPS_23 equ 0X3FF7
WDTCPS_WDTCPS_24 equ 0X3FF8
WDTCPS_WDTCPS_25 equ 0X3FF9
WDTCPS_WDTCPS_26 equ 0X3FFA
WDTCPS_WDTCPS_27 equ 0X3FFB
WDTCPS_WDTCPS_28 equ 0X3FFC
WDTCPS_WDTCPS_29 equ 0X3FFD
WDTCPS_WDTCPS_30 equ 0X3FFE
WDTCPS_WDTCPS_31 equ 0X3FFF
WDTE_OFF equ 0X3F9F
WDTE_SWDTEN equ 0X3FBF
WDTE_NSLEEP equ 0X3FDF
WDTE_ON equ 0X3FFF
WDTCWS_WDTCWS_0 equ 0X38FF
WDTCWS_WDTCWS_1 equ 0X39FF
WDTCWS_WDTCWS_2 equ 0X3AFF
WDTCWS_WDTCWS_3 equ 0X3BFF
WDTCWS_WDTCWS_4 equ 0X3CFF
WDTCWS_WDTCWS_5 equ 0X3DFF
WDTCWS_WDTCWS_6 equ 0X3EFF
WDTCWS_WDTCWS_7 equ 0X3FFF
WDTCCS_LFINTOSC equ 0X07FF
WDTCCS_HFINTOSC equ 0X0FFF
WDTCCS_SOSC equ 0X17FF
WDTCCS_SC equ 0X3FFF
BBSIZE_BB64K equ 0X3FF8
BBSIZE_BB32K equ 0X3FF9
BBSIZE_BB16K equ 0X3FFA
BBSIZE_BB8K equ 0X3FFB
BBSIZE_BB4K equ 0X3FFC
BBSIZE_BB2K equ 0X3FFD
BBSIZE_BB1K equ 0X3FFE
BBSIZE_BB512 equ 0X3FFF
BBEN_ON equ 0X3FF7
BBEN_OFF equ 0X3FFF
SAFEN_ON equ 0X3FEF
SAFEN_OFF equ 0X3FFF
WRTAPP_ON equ 0X3F7F
WRTAPP_OFF equ 0X3FFF
WRTB_ON equ 0X3EFF
WRTB_OFF equ 0X3FFF
WRTC_ON equ 0X3DFF
WRTC_OFF equ 0X3FFF
WRTSAF_ON equ 0X37FF
WRTSAF_OFF equ 0X3FFF
LVP_OFF equ 0X1FFF
LVP_ON equ 0X3FFF
CP_ON equ 0X3FFE
CP_OFF equ 0X3FFF
DEVID1 equ 0X8006
IDLOC0 equ 0X8000
IDLOC1 equ 0X8001
IDLOC2 equ 0X8002
IDLOC3 equ 0X8003
; COMPILER'S INTERNAL CONSTANTS AND ALIASES
#define __16F15356 1
#define xtal 32
#define _ecore 1
#define _core 15
#define _MaxRAM 2032
#define _RAM_End 0X0CBF
#define _MaxMem 16384
#define _ADC 10
#define _ADC_res 10
#define _eeprom 0
#define _pages 8
#define _banks 35
#define ram_banks 26
#define _USART 2
#define _USB 0
#define _flash 1
#define _cwrite_block 32
#define _TRIS_offset 6
#define __EE_RW_type 1
#define __MSSP_type 1
#define __HPWM_type 10
#define __adin_type 1
#define __UART_type 1
#define __PPS 1
#define __PIR3_TX1RX1 1
#define Bank0_Start 0x20
#define Bank0_End 0x6F
#define Bank1_Start 0xA0
#define Bank1_End 0xEF
#define Bank2_Start 0X120
#define Bank2_End 0X16F
#define Bank3_Start 0X1A0
#define Bank3_End 0X1EF
#define Bank4_Start 0X220
#define Bank4_End 0X26F
#define Bank5_Start 0X2A0
#define Bank5_End 0X2EF
#define Bank6_Start 0X320
#define Bank6_End 0X36F
#define Bank7_Start 0X3A0
#define Bank7_End 0X3EF
#define Bank8_Start 0X420
#define Bank8_End 0X46F
#define Bank9_Start 0X4A0
#define Bank9_End 0X4EF
#define Bank10_Start 0X520
#define Bank10_End 0X56F
#define Bank11_Start 0X5A0
#define Bank11_End 0X5EF
#define Bank12_Start 0X620
#define Bank12_End 0X66F
#define Bank13_Start 0X6A0
#define Bank13_End 0X6EF
#define Bank14_Start 0X720
#define Bank14_End 0X76F
#define Bank15_Start 0X7A0
#define Bank15_End 0X7EF
#define Bank16_Start 0X820
#define Bank16_End 0X86F
#define Bank17_Start 0X8A0
#define Bank17_End 0X8EF
#define Bank18_Start 0X920
#define Bank18_End 0X96F
#define Bank19_Start 0X9A0
#define Bank19_End 0X9EF
#define Bank20_Start 0XA20
#define Bank20_End 0XA6F
#define Bank21_Start 0XAA0
#define Bank21_End 0XAEF
#define Bank22_Start 0XB20
#define Bank22_End 0XB6F
#define Bank23_Start 0XBA0
#define Bank23_End 0XBEF
#define Bank24_Start 0XC20
#define Bank24_End 0XC6F
#define Bank25_Start 0XCA0
#define Bank25_End 0XCBF
ram_bank = 0
_current__page_ = 0
_dest__page_ = 0
#define __Interrupts_Enabled 1
_mcall macro pDest
    movlp (pDest >> 8)
    call pDest
    endm
_mjump macro pDest
if((pDest) < 1)
    movlp ((pDest) >> 8)
    goto pDest
else
if((pDest) > $)
    movlp ((pDest) >> 8)
    goto pDest
else
if((pDest) < ($ - 0xFF))
    movlp ((pDest) >> 8)
    goto pDest
else
    bra pDest
endif
endif
endif
    endm
_set_cpage macro pDest
    movlp ((pDest) >> 8)
    endm
_set_rbank macro pVarin
if((((pVarin) >> 7) != ram_bank) & (((pVarin) & 0x7F) > 0x0B))
    movlb ((pVarin) >> 7)
ram_bank = ((pVarin) >> 7)
endif
    endm
_reset_rbank macro
if(ram_bank != 0)
    movlb 0
ram_bank = 0
endif
    endm
variable _current__page_ = 0
variable _dest__page_ = 0
_find_cpage macro pLabelIn
local current_addr = $
local dest_addr = pLabelIn
if((current_addr >= 0X1800) && (current_addr <= 0X2000))
    _current__page_ = 3
endif
if((current_addr >= 0X1000) && (current_addr <= 0X1800))
    _current__page_ = 2
endif
if((current_addr >= 0X0800) && (current_addr <= 0X1000))
    _current__page_ = 1
endif
if((current_addr >= 0) && (current_addr <= 0X0800))
    _current__page_ = 0
endif
if((dest_addr >= 0X1800) && (dest_addr <= 0X2000))
    _dest__page_ = 3
endif
if((dest_addr >= 0X1000) && (dest_addr <= 0X1800))
    _dest__page_ = 2
endif
if((dest_addr >= 0X0800) && (dest_addr <= 0X1000))
    _dest__page_ = 1
endif
if((dest_addr >= 0) && (dest_addr <= 0X0800))
    _dest__page_ = 0
endif
endm
jump macro pLabel
    goto pLabel
endm
wreg_byte macro pByteOut
    _set_rbank pByteOut
    movwf pByteOut
    _reset_rbank
endm
wreg_bit macro pVarOut,pBitout
    _set_rbank pVarOut
    andlw 1
    btfsc STATUS,2
    bcf pVarOut,pBitout
    btfss STATUS,2
    bsf pVarOut,pBitout
    _reset_rbank
endm
wreg_word macro pWordOut
    _set_rbank pWordOut
    movwf pWordOut
    _set_rbank pWordOut+1
    clrf pWordOut+1
    _reset_rbank
endm
wreg_long macro PLONGOUT
    _set_rbank PLONGOUT+2
    clrf PLONGOUT+2
    _set_rbank PLONGOUT+1
    clrf PLONGOUT+1
    _set_rbank PLONGOUT
    movwf PLONGOUT
    _reset_rbank
endm
wreg_dword macro pDwordOut
    _set_rbank pDwordOut+3
    clrf pDwordOut+3
    _set_rbank pDwordOut+2
    clrf pDwordOut+2
    _set_rbank pDwordOut+1
    clrf pDwordOut+1
    _set_rbank pDwordOut
    movwf pDwordOut
    _reset_rbank
endm
byte_wreg macro pByteIn
    _set_rbank pByteIn
    movf pByteIn,W
    _reset_rbank
endm
num_wreg macro pNumIn
    movlw (pNumIn & 255)
endm
num_SFR macro pNumIn,pSFROut
    _set_rbank pSFROut
if(pNumIn == 0)
    clrf pSFROut
else
    movlw pNumIn
    movwf pSFROut
endif
    _reset_rbank
endm
num16_SFR macro pNumIn,pSFROut
    _set_rbank pSFROut
if((pNumIn & 255) == 0)
    clrf pSFROut
else
    movlw (pNumIn & 255)
    movwf pSFROut
endif
    _set_rbank pSFROut + 1
if(((pNumIn >> 8) & 255) == 0)
    clrf pSFROut + 1
else
    movlw ((pNumIn >> 8) & 255)
    movwf pSFROut + 1
endif
    _reset_rbank
endm
num_byte macro pNumIn,pByteOut
    _set_rbank pByteOut
if(pNumIn == 0)
    clrf pByteOut
else
    movlw (pNumIn & 255)
    movwf pByteOut
endif
    _reset_rbank
endm
num_bit macro pNumIn,pVarOut,pBitout
    _set_rbank pVarOut
if((pNumIn & 1) == 1)
    bsf pVarOut,pBitout
else
    bcf pVarOut,pBitout
endif
    _reset_rbank
endm
num_word macro pNumIn,pWordOut
if((pNumIn & 255) == 0)
    _set_rbank pWordOut
    clrf pWordOut
else
    _set_rbank pWordOut
    movlw low (pNumIn)
    movwf pWordOut
endif
if(((pNumIn >> 8) & 255) == 0)
    _set_rbank pWordOut+1
    clrf pWordOut+1
else
    _set_rbank pWordOut+1
    movlw high (pNumIn)
    movwf pWordOut+1
endif
    _reset_rbank
endm
num_long macro pNumIn,PLONGOUT
    _set_rbank PLONGOUT
    movlw low (pNumIn)
    movwf PLONGOUT
    _set_rbank PLONGOUT+1
    movlw high (pNumIn)
    movwf PLONGOUT+1
    _set_rbank PLONGOUT+2
    movlw ((pNumIn >> 16) & 255)
    movwf PLONGOUT+2
    _reset_rbank
endm
num_dword macro pNumIn,pDwordOut
if ((pNumIn >> 24 & 255) == 0)
    _set_rbank pDwordOut+3
    clrf pDwordOut+3
else
    _set_rbank pDwordOut+3
    movlw ((pNumIn >> 24) & 255)
    movwf pDwordOut+3
endif
if( ((pNumIn >> 16) & 255) == 0)
    _set_rbank pDwordOut+2
    clrf pDwordOut+2
else
    _set_rbank pDwordOut+2
    movlw ((pNumIn >> 16) & 255)
    movwf pDwordOut+2
endif
if( ((pNumIn >> 8) & 255) == 0)
    _set_rbank pDwordOut+1
    clrf pDwordOut+1
else
    _set_rbank pDwordOut+1
    movlw high (pNumIn)
    movwf pDwordOut+1
endif
if((pNumIn & 255) == 0)
    _set_rbank pDwordOut
    clrf pDwordOut
else
    _set_rbank pDwordOut
    movlw low (pNumIn)
    movwf pDwordOut
endif
    _reset_rbank
endm
bit_wreg macro pVarin,pBitIn
    _set_rbank pVarin
    clrw
    btfsc pVarin,pBitIn
    movlw 1
    _reset_rbank
endm
bit_byte macro pVarin,pBitIn,pByteOut
    _set_rbank pVarin
    clrw
    btfsc pVarin,pBitIn
    movlw 1
    _set_rbank pByteOut
    movwf pByteOut
    _reset_rbank
endm
bit_bit macro pVarin,pBitIn,pVarOut,pBitout
if((pVarin & 65408) == (pVarOut & 65408))
    _set_rbank pVarOut
    btfsc pVarin,pBitIn
    bsf pVarOut,pBitout
    btfss pVarin,pBitIn
    bcf pVarOut,pBitout
else
    _set_rbank pVarin
    clrdc
    btfsc pVarin,pBitIn
    setdc
    _set_rbank pVarOut
    skpndc
    bsf pVarOut,pBitout
    skpdc
    bcf pVarOut,pBitout
endif
endm
bit_word macro pVarin,pBitIn,pWordOut
    _set_rbank pWordOut+1
    clrf pWordOut+1
    bit_byte pVarin,pBitIn,pWordOut
endm
bit_long macro pVarin,pBitIn,PLONGOUT
    _set_rbank PLONGOUT+2
    clrf PLONGOUT+2
    _set_rbank PLONGOUT+1
    clrf PLONGOUT+1
    bit_byte pVarin,pBitIn,PLONGOUT
endm
bit_dword macro pVarin,pBitIn,pDwordOut
    _set_rbank pDwordOut+3
    clrf pDwordOut+3
    _set_rbank pDwordOut+2
    clrf pDwordOut+2
    _set_rbank pDwordOut+1
    clrf pDwordOut+1
    bit_byte pVarin,pBitIn,pDwordOut
endm
word_wreg macro pWordIn
    byte_wreg pWordIn
endm
word_byte macro pWordIn,pByteOut
    byte_byte pWordIn,pByteOut
endm
word_bit macro pWordIn,pVarOut,pBitout
    byte_bit pWordIn, pVarOut, pBitout
endm
word_word macro pWordIn,pWordOut
    _set_rbank pWordIn+1
    movf pWordIn+1,W
    _set_rbank pWordOut+1
    movwf pWordOut+1
    byte_byte pWordIn,pWordOut
endm
word_long macro pWordIn,PLONGOUT
    _set_rbank PLONGOUT+2
    clrf PLONGOUT+2
    byte_byte pWordIn+1,PLONGOUT+1
    byte_byte pWordIn,PLONGOUT
endm
word_dword macro pWordIn,pDwordOut
    _set_rbank pDwordOut+3
    clrf pDwordOut+3
    _set_rbank pDwordOut+2
    clrf pDwordOut+2
    byte_byte pWordIn+1,pDwordOut+1
    byte_byte pWordIn,pDwordOut
endm
byte_byte macro pByteIn,pByteOut
    _set_rbank pByteIn
    movf pByteIn,W
    _set_rbank pByteOut
    movwf pByteOut
    _reset_rbank
endm
byte_word macro pByteIn,pWordOut
    _set_rbank pWordOut+1
    clrf pWordOut+1
    byte_byte pByteIn,pWordOut
endm
byte_long macro pByteIn,PLONGOUT
    _set_rbank PLONGOUT+2
    clrf PLONGOUT+2
    _set_rbank PLONGOUT+1
    clrf PLONGOUT+1
    byte_byte pByteIn,PLONGOUT
endm
byte_dword macro pByteIn,pDwordOut
    _set_rbank pDwordOut+3
    clrf pDwordOut+3
    _set_rbank pDwordOut+2
    clrf pDwordOut+2
    _set_rbank pDwordOut+1
    clrf pDwordOut+1
    byte_byte pByteIn,pDwordOut
endm
byte_bit macro pByteIn,pVarOut,pBitout
if((pByteIn & 65408) == (pVarOut & 65408))
    _set_rbank pByteIn
    btfsc pByteIn,0
    bsf pVarOut,pBitout
    btfss pByteIn,0
    bcf pVarOut,pBitout
else
    _set_rbank pByteIn
    rrf pByteIn,W
    _set_rbank pVarOut
    skpnc
    bsf pVarOut,pBitout
    skpc
    bcf pVarOut,pBitout
endif
    _reset_rbank
endm
long_wreg macro PLONGIN
    byte_wreg PLONGIN
endm
long_byte macro PLONGIN,pByteOut
    byte_byte PLONGIN,pByteOut
endm
long_word macro PLONGIN,pWordOut
    _set_rbank PLONGIN+1
    movf PLONGIN+1,W
    _set_rbank pWordOut+1
    movwf pWordOut+1
    byte_byte PLONGIN,pWordOut
endm
long_long macro PLONGIN,PLONGOUT
if(PLONGIN != PLONGOUT)
    byte_byte PLONGIN+2,PLONGOUT+2
    byte_byte PLONGIN+1,PLONGOUT+1
    byte_byte PLONGIN,PLONGOUT
endif
endm
long_dword macro PLONGIN,pDwordOut
    movlw 0
    _set_rbank pDwordOut+3
    movwf pDwordOut+3
    byte_byte PLONGIN+2,pDwordOut+2
    byte_byte PLONGIN+1,pDwordOut+1
    byte_byte PLONGIN,pDwordOut
endm
long_bit macro PLONGIN,pVarOut,pBitout
    byte_bit PLONGIN,pVarOut,pBitout
endm
dword_wreg macro pDwordIn
    byte_wreg pDwordIn
endm
dword_byte macro pDwordIn,pByteOut
    byte_byte pDwordIn,pByteOut
endm
dword_word macro pDwordIn,pWordOut
    _set_rbank pDwordIn+1
    movf pDwordIn+1,W
    _set_rbank pWordOut+1
    movwf pWordOut+1
    byte_byte pDwordIn,pWordOut
endm
dword_long macro pDwordIn,PLONGOUT
    byte_byte pDwordIn+2,PLONGOUT+2
    byte_byte pDwordIn+1,PLONGOUT+1
    byte_byte pDwordIn,PLONGOUT
endm
dword_dword macro pDwordIn,pDwordOut
    byte_byte pDwordIn+3,pDwordOut+3
    byte_byte pDwordIn+2,pDwordOut+2
    byte_byte pDwordIn+1,pDwordOut+1
    byte_byte pDwordIn,pDwordOut
endm
dword_bit macro pDwordIn,pVarOut,pBitout
    byte_bit pDwordIn,pVarOut,pBitout
endm
num_float macro pNumIn,pFloatOut
    num_byte pNumIn,pFloatOut+3
    num_byte ((pNumIn >> 8) & 255),pFloatOut+2
    num_byte ((pNumIn >> 16) & 255),pFloatOut+1
    num_byte ((pNumIn >> 24) & 255),pFloatOut
endm
wreg_float macro pFloatOut
    movlp(_uns_int08_tofl32 >> 8)
    call _uns_int08_tofl32
    byte_byte PP_AARG,pFloatOut
    byte_byte PP_AARGH,pFloatOut+1
    byte_byte PP_AARGHH,pFloatOut+2
    byte_byte PP_AARGHHH,pFloatOut+3
endm
bit_float macro pVarin,pBitIn,pFloatOut
    bit_wreg pVarin,pBitIn
    movlp(_uns_int08_tofl32 >> 8)
    call _uns_int08_tofl32
    byte_byte PP_AARG,pFloatOut
    byte_byte PP_AARGH,pFloatOut+1
    byte_byte PP_AARGHH,pFloatOut+2
    byte_byte PP_AARGHHH,pFloatOut+3
endm
byte_float macro pByteIn,pFloatOut
    byte_wreg pByteIn
    movlp(_uns_int08_tofl32 >> 8)
    call _uns_int08_tofl32
    byte_byte PP_AARG,pFloatOut
    byte_byte PP_AARGH,pFloatOut+1
    byte_byte PP_AARGHH,pFloatOut+2
    byte_byte PP_AARGHHH,pFloatOut+3
endm
word_float macro pWordIn,pFloatOut
    byte_byte pWordIn,PP_AARG
    byte_byte pWordIn+1,PP_AARGH
    movlp(_uns_int16_tofl32 >> 8)
    call _uns_int16_tofl32
    byte_byte PP_AARG,pFloatOut
    byte_byte PP_AARGH,pFloatOut+1
    byte_byte PP_AARGHH,pFloatOut+2
    byte_byte PP_AARGHHH,pFloatOut+3
endm
long_float macro PLONGIN,pFloatOut
    byte_byte PLONGIN,PP_AARG
    byte_byte PLONGIN+1,PP_AARGH
    byte_byte PLONGIN+2,PP_AARGHH
    clrf PP_AARGHHH
    movlp(_unsgn_int32_tofl32 >> 8)
    call _unsgn_int32_tofl32
    byte_byte PP_AARG,pFloatOut
    byte_byte PP_AARGH,pFloatOut+1
    byte_byte PP_AARGHH,pFloatOut+2
    byte_byte PP_AARGHHH,pFloatOut+3
endm
dword_float macro pDwordIn,pFloatOut
    byte_byte pDwordIn,PP_AARG
    byte_byte pDwordIn+1,PP_AARGH
    byte_byte pDwordIn+2,PP_AARGHH
    byte_byte pDwordIn+3,PP_AARGHHH
    movlp(_unsgn_int32_tofl32 >> 8)
    call _unsgn_int32_tofl32
    byte_byte PP_AARG,pFloatOut
    byte_byte PP_AARGH,pFloatOut+1
    byte_byte PP_AARGHH,pFloatOut+2
    byte_byte PP_AARGHHH,pFloatOut+3
endm
float_float macro pFloatIn,pFloatOut
    byte_byte pFloatIn,pFloatOut
    byte_byte pFloatIn+1,pFloatOut+1
    byte_byte pFloatIn+2,pFloatOut+2
    byte_byte pFloatIn+3,pFloatOut+3
endm
float_wreg macro pFloatIn
    float_float pFloatIn,PP_AARG
    movlp(_fl32_to_int32 >> 8)
    call _fl32_to_int32
endm
float_bit macro pFloatIn,pVarOut,pBitout
    float_float pFloatIn,PP_AARG
    movlp(_fl32_to_int32 >> 8)
    call _fl32_to_int32
    wreg_bit pVarOut,pBitout
endm
float_byte macro pFloatIn,pByteOut
    float_float pFloatIn,PP_AARG
    movlp(_fl32_to_int32 >> 8)
    call _fl32_to_int32
    wreg_byte pByteOut
endm
float_word macro pFloatIn,pWordOut
    float_float pFloatIn,PP_AARG
    movlp(_fl32_to_int32 >> 8)
    call _fl32_to_int32
    byte_byte PP_AARGHHH,pWordOut
    byte_byte PP_AARGHH,pWordOut+1
endm
float_long macro pFloatIn,PLONGOUT
    byte_byte pFloatIn,PP_AARG
    byte_byte pFloatIn+1,PP_AARGH
    byte_byte pFloatIn+2,PP_AARGHH
    byte_byte pFloatIn+3,PP_AARGHHH
    movlp(_fl32_to_int32 >> 8)
    call _fl32_to_int32
    byte_byte PP_AARGHHH,PLONGOUT
    byte_byte PP_AARGHH,PLONGOUT+1
    byte_byte PP_AARGH,PLONGOUT+2
endm
float_dword macro pFloatIn,pDwordOut
    float_float pFloatIn,PP_AARG
    movlp(_fl32_to_int32 >> 8)
    call _fl32_to_int32
    byte_byte PP_AARGHHH,pDwordOut
    byte_byte PP_AARGHH,pDwordOut+1
    byte_byte PP_AARGH,pDwordOut+2
    byte_byte PP_AARG,pDwordOut+3
endm
num_FSR0 macro pNumIn
if((pNumIn & 255) == 0)
    clrf FSR0L
else
    movlw (pNumIn & 255)
    movwf FSR0L
endif
if(((pNumIn >> 8) & 255) == 0)
    clrf FSR0H
else
    movlw ((pNumIn >> 8) & 255)
    movwf FSR0H
endif
endm
num_FSR1 macro pNumIn
if((pNumIn & 255) == 0)
    clrf FSR1L
else
    movlw (pNumIn & 255)
    movwf FSR1L
endif
if(((pNumIn >> 8) & 255) == 0)
    clrf FSR1H
else
    movlw ((pNumIn >> 8) & 255)
    movwf FSR1H
endif
endm
label_word macro pLabelIn,pWordOut
    movlw (pLabelIn & 255)
    _set_rbank pWordOut
    movwf pWordOut
    movlw ((pLabelIn >> 8) & 255)
    _set_rbank pWordOut+1
    movwf pWordOut+1
    _reset_rbank
endm
wreg_sword macro pWordOut
    _set_rbank pWordOut
    movwf pWordOut
    movlw 0
    btfsc pWordOut,7
    movlw 255
    _set_rbank pWordOut+1
    movwf pWordOut+1
    _reset_rbank
endm
wreg_sdword macro pDwordOut
    _set_rbank pDwordOut
    movwf pDwordOut
    movlw 0
    btfsc pDwordOut,7
    movlw 255
    _set_rbank pDwordOut+1
    movwf pDwordOut+1
    _set_rbank pDwordOut+2
    movwf pDwordOut+2
    _set_rbank pDwordOut+3
    movwf pDwordOut+3
    _reset_rbank
endm
byte_sword macro pByteIn,pWordOut
    _set_rbank pByteIn
    movf pByteIn,W
    _set_rbank pWordOut
    movwf pWordOut
    movlw 0
    btfsc pWordOut,7
    movlw 255
    _set_rbank pWordOut+1
    movwf pWordOut+1
    _reset_rbank
endm
byte_sdword macro pByteIn,pDwordOut
    _set_rbank pByteIn
    movf pByteIn,W
    _set_rbank pDwordOut
    movwf pDwordOut
    movlw 0
    btfsc pDwordOut,7
    movlw 255
    _set_rbank pDwordOut+1
    movwf pDwordOut+1
    _set_rbank pDwordOut+2
    movwf pDwordOut+2
    _set_rbank pDwordOut+3
    movwf pDwordOut+3
    _reset_rbank
endm
word_sdword macro pWordIn,pDwordOut
    _set_rbank pWordIn
    movf pWordIn,W
    _set_rbank pDwordOut
    movwf pDwordOut
    _set_rbank pWordIn+1
    movf pWordIn+1,W
    _set_rbank pDwordOut+1
    movwf pDwordOut+1
    movlw 0
    btfsc pDwordOut+1,7
    movlw 255
    _set_rbank pDwordOut+2
    movwf pDwordOut+2
    _set_rbank pDwordOut+3
    movwf pDwordOut+3
    _reset_rbank
endm
; COMPILER SYSTEM VARIABLES
BPF equ 0x20
BPFH equ 0x21
GEN4 equ 0x22
GEN4H equ 0x23
GPR equ 0x24
PBL_VAR0 equ 0x25
PBL_VAR1 equ 0x26
PBS_VAR0 equ 0x27
PBS_VAR0H equ 0x28
PBS_VAR1 equ 0x29
PBS_VAR1H equ 0x2A
PBS_VAR2 equ 0x2B
PP0 equ 0x2C
PP0H equ 0x2D
PP0HH equ 0x2E
PP0HHH equ 0x2F
PP1 equ 0x30
PP1H equ 0x31
PP2 equ 0x32
PP2H equ 0x33
PP2HH equ 0x34
PP2HHH equ 0x35
PP3 equ 0x36
PP3H equ 0x37
PP6H equ 0x38
PP7 equ 0x39
PP7H equ 0x3A
PPZ equ 0x3B
PPZH equ 0x3C
PPZHH equ 0x3D
PPZHHH equ 0x3E
PP_AARG equ 0x3F
PP_AARGH equ 0x40
PP_AARGHH equ 0x41
PP_AARGHHH equ 0x42
PP_BARG equ 0x43
PP_BARGH equ 0x44
PP_BARGHH equ 0x45
PP_BARGHHH equ 0x46
PP_RND equ 0x47
PP_RNDH equ 0x48
RPFH equ 0x49
SP__P9_ equ 0x4A
_BEXP equ 0x4B
_FP_FLAGS equ 0x4C
_FP_SIGN equ 0x4D
_FP_TEMP equ 0x4E
; BIT HOLDER VARIABLES
_B__VR1 equ 0x4F
_B__VR2 equ 0x50
_B__VR3 equ 0x51
_B__VR4 equ 0x52
_B__VR5 equ 0x53
_B__VR6 equ 0x54
_B__VR7 equ 0x55
_B__VR8 equ 0x56
_B__VR9 equ 0x57
; STANDARD VARIABLES
RC522_Temp equ 0x58
RC522_Address equ 0x59
RC522_Value equ 0x5A
RC522_BitMask equ 0x5B
RC522_backLen equ 0x5C
RC522_bitLen equ 0x5D
RC522_backData equ 0x5E
variable RC522_backData#0=0x5E,RC522_backData#1=0x5F,RC522_backData#2=0x60,RC522_backData#3=0x61
variable RC522_backData#4=0x62,RC522_backData#5=0x63,RC522_backData#6=0x64,RC522_backData#7=0x65
variable RC522_backData#8=0x66,RC522_backData#9=0x67,RC522_backData#10=0x68,RC522_backData#11=0x69
variable RC522_backData#12=0x6A,RC522_backData#13=0x6B,RC522_backData#14=0x6C,RC522_backData#15=0x6D
variable RC522_backData#16=0x6E,RC522_backData#17=0x6F,RC522_backData#18=0xA0,RC522_backData#19=0xA1
variable RC522_backData#20=0xA2,RC522_backData#21=0xA3,RC522_backData#22=0xA4,RC522_backData#23=0xA5
variable RC522_backData#24=0xA6,RC522_backData#25=0xA7,RC522_backData#26=0xA8,RC522_backData#27=0xA9
variable RC522_backData#28=0xAA,RC522_backData#29=0xAB,RC522_backData#30=0xAC,RC522_backData#31=0xAD
variable RC522_backData#32=0xAE,RC522_backData#33=0xAF,RC522_backData#34=0xB0,RC522_backData#35=0xB1
variable RC522_backData#36=0xB2,RC522_backData#37=0xB3,RC522_backData#38=0xB4,RC522_backData#39=0xB5
variable RC522_backData#40=0xB6,RC522_backData#41=0xB7,RC522_backData#42=0xB8,RC522_backData#43=0xB9
variable RC522_backData#44=0xBA,RC522_backData#45=0xBB,RC522_backData#46=0xBC,RC522_backData#47=0xBD
variable RC522_backData#48=0xBE,RC522_backData#49=0xBF,RC522_backData#50=0xC0,RC522_backData#51=0xC1
variable RC522_backData#52=0xC2,RC522_backData#53=0xC3,RC522_backData#54=0xC4,RC522_backData#55=0xC5
variable RC522_backData#56=0xC6,RC522_backData#57=0xC7,RC522_backData#58=0xC8,RC522_backData#59=0xC9
variable RC522_backData#60=0xCA,RC522_backData#61=0xCB,RC522_backData#62=0xCC,RC522_backData#63=0xCD
variable RC522_backData#64=0xCE,RC522_backData#65=0xCF,RC522_backData#66=0xD0,RC522_backData#67=0xD1
variable RC522_backData#68=0xD2,RC522_backData#69=0xD3,RC522_backData#70=0xD4,RC522_backData#71=0xD5
variable RC522_backData#72=0xD6,RC522_backData#73=0xD7,RC522_backData#74=0xD8,RC522_backData#75=0xD9
variable RC522_backData#76=0xDA,RC522_backData#77=0xDB,RC522_backData#78=0xDC,RC522_backData#79=0xDD
variable RC522_backData#80=0xDE,RC522_backData#81=0xDF,RC522_backData#82=0xE0,RC522_backData#83=0xE1
variable RC522_backData#84=0xE2,RC522_backData#85=0xE3,RC522_backData#86=0xE4,RC522_backData#87=0xE5
variable RC522_backData#88=0xE6,RC522_backData#89=0xE7,RC522_backData#90=0xE8,RC522_backData#91=0xE9
variable RC522_backData#92=0xEA,RC522_backData#93=0xEB,RC522_backData#94=0xEC,RC522_backData#95=0xED
variable RC522_backData#96=0xEE,RC522_backData#97=0xEF,RC522_backData#98=0X120,RC522_backData#99=0X121
RC522_sendLen equ 0X122
RC522_sendData equ 0X123
variable RC522_sendData#0=0X123,RC522_sendData#1=0X124,RC522_sendData#2=0X125,RC522_sendData#3=0X126
variable RC522_sendData#4=0X127,RC522_sendData#5=0X128,RC522_sendData#6=0X129,RC522_sendData#7=0X12A
variable RC522_sendData#8=0X12B,RC522_sendData#9=0X12C,RC522_sendData#10=0X12D,RC522_sendData#11=0X12E
variable RC522_sendData#12=0X12F,RC522_sendData#13=0X130,RC522_sendData#14=0X131,RC522_sendData#15=0X132
variable RC522_sendData#16=0X133,RC522_sendData#17=0X134,RC522_sendData#18=0X135,RC522_sendData#19=0X136
variable RC522_sendData#20=0X137,RC522_sendData#21=0X138,RC522_sendData#22=0X139,RC522_sendData#23=0X13A
variable RC522_sendData#24=0X13B,RC522_sendData#25=0X13C,RC522_sendData#26=0X13D,RC522_sendData#27=0X13E
variable RC522_sendData#28=0X13F,RC522_sendData#29=0X140,RC522_sendData#30=0X141,RC522_sendData#31=0X142
variable RC522_sendData#32=0X143,RC522_sendData#33=0X144,RC522_sendData#34=0X145,RC522_sendData#35=0X146
variable RC522_sendData#36=0X147,RC522_sendData#37=0X148,RC522_sendData#38=0X149,RC522_sendData#39=0X14A
variable RC522_sendData#40=0X14B,RC522_sendData#41=0X14C,RC522_sendData#42=0X14D,RC522_sendData#43=0X14E
variable RC522_sendData#44=0X14F,RC522_sendData#45=0X150,RC522_sendData#46=0X151,RC522_sendData#47=0X152
variable RC522_sendData#48=0X153,RC522_sendData#49=0X154
RC522_Status equ 0X155
RC522_irqEn equ 0X156
RC522_waitIRq equ 0X157
RC522_lastBits equ 0X158
_N equ 0X159
_I equ 0X15A
_IH equ 0X15B
RC522_Command equ 0X15C
RC522_serNumCheck equ 0X15D
RC522_BlockAddress equ 0X15E
RC522_RequestMode equ 0X15F
RC522_Level equ 0X160
RC522_ATQA equ 0X161
variable RC522_ATQA#0=0X161,RC522_ATQA#1=0X162
RC522_Token equ 0X163
variable RC522_Token#0=0X163,RC522_Token#1=0X164,RC522_Token#2=0X165,RC522_Token#3=0X166
variable RC522_Token#4=0X167,RC522_Token#5=0X168,RC522_Token#6=0X169,RC522_Token#7=0X16A
variable RC522_Token#8=0X16B,RC522_Token#9=0X16C
RC522_TokenLen equ 0X16D
RC522_SAK equ 0X16E
RC522_TokenSaved equ 0X16F
variable RC522_TokenSaved#0=0X16F,RC522_TokenSaved#1=0X1A0,RC522_TokenSaved#2=0X1A1,RC522_TokenSaved#3=0X1A2
variable RC522_TokenSaved#4=0X1A3,RC522_TokenSaved#5=0X1A4,RC522_TokenSaved#6=0X1A5,RC522_TokenSaved#7=0X1A6
variable RC522_TokenSaved#8=0X1A7,RC522_TokenSaved#9=0X1A8
RC522_TokenLenSaved equ 0X1A9
MaxRFIDWaitTime equ 0X1AA
MaxRFIDWaitTimeH equ 0X1AB
PaymentCardType equ 0X1AC
RFIDLoopCount equ 0X1AD
BatteryVoltage equ 0X1AE
BatteryVoltageH equ 0X1AF
PeriodicDiags equ 0X1B0
DiagTempW equ 0X1B1
DiagTempWH equ 0X1B2
RX1BufferActive equ 0X1B3
variable RX1BufferActive#0=0X1B3,RX1BufferActive#1=0X1B4,RX1BufferActive#2=0X1B5,RX1BufferActive#3=0X1B6
variable RX1BufferActive#4=0X1B7,RX1BufferActive#5=0X1B8,RX1BufferActive#6=0X1B9,RX1BufferActive#7=0X1BA
variable RX1BufferActive#8=0X1BB,RX1BufferActive#9=0X1BC,RX1BufferActive#10=0X1BD,RX1BufferActive#11=0X1BE
variable RX1BufferActive#12=0X1BF,RX1BufferActive#13=0X1C0,RX1BufferActive#14=0X1C1,RX1BufferActive#15=0X1C2
variable RX1BufferActive#16=0X1C3,RX1BufferActive#17=0X1C4,RX1BufferActive#18=0X1C5,RX1BufferActive#19=0X1C6
variable RX1BufferActive#20=0X1C7,RX1BufferActive#21=0X1C8,RX1BufferActive#22=0X1C9,RX1BufferActive#23=0X1CA
variable RX1BufferActive#24=0X1CB,RX1BufferActive#25=0X1CC,RX1BufferActive#26=0X1CD,RX1BufferActive#27=0X1CE
variable RX1BufferActive#28=0X1CF,RX1BufferActive#29=0X1D0,RX1BufferActive#30=0X1D1,RX1BufferActive#31=0X1D2
variable RX1BufferActive#32=0X1D3,RX1BufferActive#33=0X1D4,RX1BufferActive#34=0X1D5,RX1BufferActive#35=0X1D6
variable RX1BufferActive#36=0X1D7,RX1BufferActive#37=0X1D8,RX1BufferActive#38=0X1D9,RX1BufferActive#39=0X1DA
variable RX1BufferActive#40=0X1DB,RX1BufferActive#41=0X1DC,RX1BufferActive#42=0X1DD,RX1BufferActive#43=0X1DE
variable RX1BufferActive#44=0X1DF,RX1BufferActive#45=0X1E0,RX1BufferActive#46=0X1E1,RX1BufferActive#47=0X1E2
variable RX1BufferActive#48=0X1E3,RX1BufferActive#49=0X1E4,RX1BufferActive#50=0X1E5,RX1BufferActive#51=0X1E6
variable RX1BufferActive#52=0X1E7,RX1BufferActive#53=0X1E8,RX1BufferActive#54=0X1E9,RX1BufferActive#55=0X1EA
variable RX1BufferActive#56=0X1EB,RX1BufferActive#57=0X1EC,RX1BufferActive#58=0X1ED,RX1BufferActive#59=0X1EE
variable RX1BufferActive#60=0X1EF,RX1BufferActive#61=0X220,RX1BufferActive#62=0X221,RX1BufferActive#63=0X222
variable RX1BufferActive#64=0X223,RX1BufferActive#65=0X224,RX1BufferActive#66=0X225,RX1BufferActive#67=0X226
variable RX1BufferActive#68=0X227,RX1BufferActive#69=0X228,RX1BufferActive#70=0X229,RX1BufferActive#71=0X22A
variable RX1BufferActive#72=0X22B,RX1BufferActive#73=0X22C,RX1BufferActive#74=0X22D,RX1BufferActive#75=0X22E
variable RX1BufferActive#76=0X22F,RX1BufferActive#77=0X230,RX1BufferActive#78=0X231,RX1BufferActive#79=0X232
variable RX1BufferActive#80=0X233,RX1BufferActive#81=0X234,RX1BufferActive#82=0X235,RX1BufferActive#83=0X236
variable RX1BufferActive#84=0X237,RX1BufferActive#85=0X238,RX1BufferActive#86=0X239,RX1BufferActive#87=0X23A
variable RX1BufferActive#88=0X23B,RX1BufferActive#89=0X23C,RX1BufferActive#90=0X23D,RX1BufferActive#91=0X23E
variable RX1BufferActive#92=0X23F,RX1BufferActive#93=0X240,RX1BufferActive#94=0X241,RX1BufferActive#95=0X242
variable RX1BufferActive#96=0X243,RX1BufferActive#97=0X244,RX1BufferActive#98=0X245,RX1BufferActive#99=0X246
variable RX1BufferActive#100=0X247
RX1Buffer equ 0X248
variable RX1Buffer#0=0X248,RX1Buffer#1=0X249,RX1Buffer#2=0X24A,RX1Buffer#3=0X24B
variable RX1Buffer#4=0X24C,RX1Buffer#5=0X24D,RX1Buffer#6=0X24E,RX1Buffer#7=0X24F
variable RX1Buffer#8=0X250,RX1Buffer#9=0X251,RX1Buffer#10=0X252,RX1Buffer#11=0X253
variable RX1Buffer#12=0X254,RX1Buffer#13=0X255,RX1Buffer#14=0X256,RX1Buffer#15=0X257
variable RX1Buffer#16=0X258,RX1Buffer#17=0X259,RX1Buffer#18=0X25A,RX1Buffer#19=0X25B
variable RX1Buffer#20=0X25C,RX1Buffer#21=0X25D,RX1Buffer#22=0X25E,RX1Buffer#23=0X25F
variable RX1Buffer#24=0X260,RX1Buffer#25=0X261,RX1Buffer#26=0X262,RX1Buffer#27=0X263
variable RX1Buffer#28=0X264,RX1Buffer#29=0X265,RX1Buffer#30=0X266,RX1Buffer#31=0X267
variable RX1Buffer#32=0X268,RX1Buffer#33=0X269,RX1Buffer#34=0X26A,RX1Buffer#35=0X26B
variable RX1Buffer#36=0X26C,RX1Buffer#37=0X26D,RX1Buffer#38=0X26E,RX1Buffer#39=0X26F
variable RX1Buffer#40=0X2A0,RX1Buffer#41=0X2A1,RX1Buffer#42=0X2A2,RX1Buffer#43=0X2A3
variable RX1Buffer#44=0X2A4,RX1Buffer#45=0X2A5,RX1Buffer#46=0X2A6,RX1Buffer#47=0X2A7
variable RX1Buffer#48=0X2A8,RX1Buffer#49=0X2A9,RX1Buffer#50=0X2AA,RX1Buffer#51=0X2AB
variable RX1Buffer#52=0X2AC,RX1Buffer#53=0X2AD,RX1Buffer#54=0X2AE,RX1Buffer#55=0X2AF
variable RX1Buffer#56=0X2B0,RX1Buffer#57=0X2B1,RX1Buffer#58=0X2B2,RX1Buffer#59=0X2B3
variable RX1Buffer#60=0X2B4,RX1Buffer#61=0X2B5,RX1Buffer#62=0X2B6,RX1Buffer#63=0X2B7
variable RX1Buffer#64=0X2B8,RX1Buffer#65=0X2B9,RX1Buffer#66=0X2BA,RX1Buffer#67=0X2BB
variable RX1Buffer#68=0X2BC,RX1Buffer#69=0X2BD,RX1Buffer#70=0X2BE,RX1Buffer#71=0X2BF
variable RX1Buffer#72=0X2C0,RX1Buffer#73=0X2C1,RX1Buffer#74=0X2C2,RX1Buffer#75=0X2C3
variable RX1Buffer#76=0X2C4,RX1Buffer#77=0X2C5,RX1Buffer#78=0X2C6,RX1Buffer#79=0X2C7
variable RX1Buffer#80=0X2C8,RX1Buffer#81=0X2C9,RX1Buffer#82=0X2CA,RX1Buffer#83=0X2CB
variable RX1Buffer#84=0X2CC,RX1Buffer#85=0X2CD,RX1Buffer#86=0X2CE,RX1Buffer#87=0X2CF
variable RX1Buffer#88=0X2D0,RX1Buffer#89=0X2D1,RX1Buffer#90=0X2D2,RX1Buffer#91=0X2D3
variable RX1Buffer#92=0X2D4,RX1Buffer#93=0X2D5,RX1Buffer#94=0X2D6,RX1Buffer#95=0X2D7
variable RX1Buffer#96=0X2D8,RX1Buffer#97=0X2D9,RX1Buffer#98=0X2DA,RX1Buffer#99=0X2DB
variable RX1Buffer#100=0X2DC
RX2Buffer equ 0X2DD
variable RX2Buffer#0=0X2DD,RX2Buffer#1=0X2DE,RX2Buffer#2=0X2DF,RX2Buffer#3=0X2E0
variable RX2Buffer#4=0X2E1,RX2Buffer#5=0X2E2,RX2Buffer#6=0X2E3,RX2Buffer#7=0X2E4
variable RX2Buffer#8=0X2E5,RX2Buffer#9=0X2E6
RX2BufferTemp equ 0X2E7
RX1BufPos equ 0X2E8
RX2BufPos equ 0X2E9
discs_OwnerToken equ 0X2EA
variable discs_OwnerToken#0=0X2EA,discs_OwnerToken#1=0X2EB,discs_OwnerToken#2=0X2EC,discs_OwnerToken#3=0X2ED
variable discs_OwnerToken#4=0X2EE,discs_OwnerToken#5=0X2EF,discs_OwnerToken#6=0X320,discs_OwnerToken#7=0X321
variable discs_OwnerToken#8=0X322,discs_OwnerToken#9=0X323,discs_OwnerToken#10=0X324
discs_OwnerTeam equ 0X325
discs_LastToken equ 0X326
variable discs_LastToken#0=0X326,discs_LastToken#1=0X327,discs_LastToken#2=0X328,discs_LastToken#3=0X329
variable discs_LastToken#4=0X32A,discs_LastToken#5=0X32B,discs_LastToken#6=0X32C,discs_LastToken#7=0X32D
variable discs_LastToken#8=0X32E,discs_LastToken#9=0X32F,discs_LastToken#10=0X330
TeamColourOverride equ 0X331
discs_NewTeam equ 0X332
wifi_tmp equ 0X333
variable wifi_tmp#0=0X333,wifi_tmp#1=0X334,wifi_tmp#2=0X335,wifi_tmp#3=0X336
variable wifi_tmp#4=0X337,wifi_tmp#5=0X338,wifi_tmp#6=0X339,wifi_tmp#7=0X33A
variable wifi_tmp#8=0X33B,wifi_tmp#9=0X33C,wifi_tmp#10=0X33D,wifi_tmp#11=0X33E
variable wifi_tmp#12=0X33F,wifi_tmp#13=0X340,wifi_tmp#14=0X341,wifi_tmp#15=0X342
variable wifi_tmp#16=0X343,wifi_tmp#17=0X344,wifi_tmp#18=0X345,wifi_tmp#19=0X346
variable wifi_tmp#20=0X347,wifi_tmp#21=0X348,wifi_tmp#22=0X349,wifi_tmp#23=0X34A
variable wifi_tmp#24=0X34B,wifi_tmp#25=0X34C,wifi_tmp#26=0X34D,wifi_tmp#27=0X34E
variable wifi_tmp#28=0X34F,wifi_tmp#29=0X350,wifi_tmp#30=0X351,wifi_tmp#31=0X352
variable wifi_tmp#32=0X353,wifi_tmp#33=0X354,wifi_tmp#34=0X355,wifi_tmp#35=0X356
variable wifi_tmp#36=0X357,wifi_tmp#37=0X358,wifi_tmp#38=0X359,wifi_tmp#39=0X35A
variable wifi_tmp#40=0X35B,wifi_tmp#41=0X35C,wifi_tmp#42=0X35D,wifi_tmp#43=0X35E
variable wifi_tmp#44=0X35F,wifi_tmp#45=0X360,wifi_tmp#46=0X361,wifi_tmp#47=0X362
variable wifi_tmp#48=0X363,wifi_tmp#49=0X364,wifi_tmp#50=0X365,wifi_tmp#51=0X366
variable wifi_tmp#52=0X367,wifi_tmp#53=0X368,wifi_tmp#54=0X369,wifi_tmp#55=0X36A
variable wifi_tmp#56=0X36B,wifi_tmp#57=0X36C,wifi_tmp#58=0X36D,wifi_tmp#59=0X36E
variable wifi_tmp#60=0X36F,wifi_tmp#61=0X3A0,wifi_tmp#62=0X3A1,wifi_tmp#63=0X3A2
variable wifi_tmp#64=0X3A3,wifi_tmp#65=0X3A4,wifi_tmp#66=0X3A5,wifi_tmp#67=0X3A6
variable wifi_tmp#68=0X3A7,wifi_tmp#69=0X3A8,wifi_tmp#70=0X3A9,wifi_tmp#71=0X3AA
variable wifi_tmp#72=0X3AB,wifi_tmp#73=0X3AC,wifi_tmp#74=0X3AD,wifi_tmp#75=0X3AE
variable wifi_tmp#76=0X3AF,wifi_tmp#77=0X3B0,wifi_tmp#78=0X3B1,wifi_tmp#79=0X3B2
variable wifi_tmp#80=0X3B3,wifi_tmp#81=0X3B4,wifi_tmp#82=0X3B5,wifi_tmp#83=0X3B6
variable wifi_tmp#84=0X3B7,wifi_tmp#85=0X3B8,wifi_tmp#86=0X3B9,wifi_tmp#87=0X3BA
variable wifi_tmp#88=0X3BB,wifi_tmp#89=0X3BC,wifi_tmp#90=0X3BD,wifi_tmp#91=0X3BE
variable wifi_tmp#92=0X3BF,wifi_tmp#93=0X3C0,wifi_tmp#94=0X3C1,wifi_tmp#95=0X3C2
variable wifi_tmp#96=0X3C3,wifi_tmp#97=0X3C4,wifi_tmp#98=0X3C5,wifi_tmp#99=0X3C6
variable wifi_tmp#100=0X3C7
wifi_txt equ 0X3C8
variable wifi_txt#0=0X3C8,wifi_txt#1=0X3C9,wifi_txt#2=0X3CA,wifi_txt#3=0X3CB
variable wifi_txt#4=0X3CC,wifi_txt#5=0X3CD,wifi_txt#6=0X3CE,wifi_txt#7=0X3CF
variable wifi_txt#8=0X3D0
tmpstr equ 0X3D1
variable tmpstr#0=0X3D1,tmpstr#1=0X3D2,tmpstr#2=0X3D3,tmpstr#3=0X3D4
variable tmpstr#4=0X3D5
RecentCapture equ 0X3D6
DetectResult equ 0X3D7
vstemp equ 0X3D8
msgCount equ 0X3D9
GameStatus equ 0X3DA
WinningTeam equ 0X3DB
comma1 equ 0X3DC
comma2 equ 0X3DD
commalen equ 0X3DE
SoundLevel equ 0X3DF
NextPoll equ 0X3E0
NextPollH equ 0X3E1
SelectedTeam equ 0X3E2
PickerCount equ 0X3E3
DetectCount equ 0X3E4
TeamID equ 0X3E5
TeamIDH equ 0X3E6
DiscCurrentStatus equ 0X3E7
WiFiCMD equ 0X3E8
variable WiFiCMD#0=0X3E8,WiFiCMD#1=0X3E9,WiFiCMD#2=0X3EA,WiFiCMD#3=0X3EB
variable WiFiCMD#4=0X3EC,WiFiCMD#5=0X3ED,WiFiCMD#6=0X3EE,WiFiCMD#7=0X3EF
variable WiFiCMD#8=0X420,WiFiCMD#9=0X421,WiFiCMD#10=0X422,WiFiCMD#11=0X423
variable WiFiCMD#12=0X424,WiFiCMD#13=0X425,WiFiCMD#14=0X426,WiFiCMD#15=0X427
variable WiFiCMD#16=0X428,WiFiCMD#17=0X429,WiFiCMD#18=0X42A,WiFiCMD#19=0X42B
variable WiFiCMD#20=0X42C,WiFiCMD#21=0X42D,WiFiCMD#22=0X42E,WiFiCMD#23=0X42F
variable WiFiCMD#24=0X430,WiFiCMD#25=0X431,WiFiCMD#26=0X432,WiFiCMD#27=0X433
variable WiFiCMD#28=0X434,WiFiCMD#29=0X435,WiFiCMD#30=0X436,WiFiCMD#31=0X437
variable WiFiCMD#32=0X438,WiFiCMD#33=0X439,WiFiCMD#34=0X43A,WiFiCMD#35=0X43B
variable WiFiCMD#36=0X43C,WiFiCMD#37=0X43D,WiFiCMD#38=0X43E,WiFiCMD#39=0X43F
variable WiFiCMD#40=0X440,WiFiCMD#41=0X441,WiFiCMD#42=0X442,WiFiCMD#43=0X443
variable WiFiCMD#44=0X444,WiFiCMD#45=0X445,WiFiCMD#46=0X446,WiFiCMD#47=0X447
variable WiFiCMD#48=0X448,WiFiCMD#49=0X449,WiFiCMD#50=0X44A,WiFiCMD#51=0X44B
variable WiFiCMD#52=0X44C,WiFiCMD#53=0X44D,WiFiCMD#54=0X44E,WiFiCMD#55=0X44F
variable WiFiCMD#56=0X450,WiFiCMD#57=0X451,WiFiCMD#58=0X452,WiFiCMD#59=0X453
variable WiFiCMD#60=0X454,WiFiCMD#61=0X455,WiFiCMD#62=0X456,WiFiCMD#63=0X457
variable WiFiCMD#64=0X458,WiFiCMD#65=0X459,WiFiCMD#66=0X45A,WiFiCMD#67=0X45B
variable WiFiCMD#68=0X45C,WiFiCMD#69=0X45D,WiFiCMD#70=0X45E,WiFiCMD#71=0X45F
variable WiFiCMD#72=0X460,WiFiCMD#73=0X461,WiFiCMD#74=0X462,WiFiCMD#75=0X463
variable WiFiCMD#76=0X464,WiFiCMD#77=0X465,WiFiCMD#78=0X466,WiFiCMD#79=0X467
variable WiFiCMD#80=0X468,WiFiCMD#81=0X469,WiFiCMD#82=0X46A,WiFiCMD#83=0X46B
variable WiFiCMD#84=0X46C,WiFiCMD#85=0X46D,WiFiCMD#86=0X46E,WiFiCMD#87=0X46F
variable WiFiCMD#88=0X4A0,WiFiCMD#89=0X4A1,WiFiCMD#90=0X4A2,WiFiCMD#91=0X4A3
variable WiFiCMD#92=0X4A4,WiFiCMD#93=0X4A5,WiFiCMD#94=0X4A6,WiFiCMD#95=0X4A7
variable WiFiCMD#96=0X4A8,WiFiCMD#97=0X4A9,WiFiCMD#98=0X4AA,WiFiCMD#99=0X4AB
variable WiFiCMD#100=0X4AC,WiFiCMD#101=0X4AD,WiFiCMD#102=0X4AE,WiFiCMD#103=0X4AF
variable WiFiCMD#104=0X4B0,WiFiCMD#105=0X4B1,WiFiCMD#106=0X4B2,WiFiCMD#107=0X4B3
variable WiFiCMD#108=0X4B4,WiFiCMD#109=0X4B5,WiFiCMD#110=0X4B6,WiFiCMD#111=0X4B7
variable WiFiCMD#112=0X4B8,WiFiCMD#113=0X4B9,WiFiCMD#114=0X4BA,WiFiCMD#115=0X4BB
variable WiFiCMD#116=0X4BC,WiFiCMD#117=0X4BD,WiFiCMD#118=0X4BE,WiFiCMD#119=0X4BF
variable WiFiCMD#120=0X4C0
WiFiCMDActive equ 0X4C1
variable WiFiCMDActive#0=0X4C1,WiFiCMDActive#1=0X4C2,WiFiCMDActive#2=0X4C3,WiFiCMDActive#3=0X4C4
variable WiFiCMDActive#4=0X4C5,WiFiCMDActive#5=0X4C6,WiFiCMDActive#6=0X4C7,WiFiCMDActive#7=0X4C8
variable WiFiCMDActive#8=0X4C9,WiFiCMDActive#9=0X4CA,WiFiCMDActive#10=0X4CB,WiFiCMDActive#11=0X4CC
variable WiFiCMDActive#12=0X4CD,WiFiCMDActive#13=0X4CE,WiFiCMDActive#14=0X4CF,WiFiCMDActive#15=0X4D0
variable WiFiCMDActive#16=0X4D1,WiFiCMDActive#17=0X4D2,WiFiCMDActive#18=0X4D3,WiFiCMDActive#19=0X4D4
variable WiFiCMDActive#20=0X4D5,WiFiCMDActive#21=0X4D6,WiFiCMDActive#22=0X4D7,WiFiCMDActive#23=0X4D8
variable WiFiCMDActive#24=0X4D9,WiFiCMDActive#25=0X4DA,WiFiCMDActive#26=0X4DB,WiFiCMDActive#27=0X4DC
variable WiFiCMDActive#28=0X4DD,WiFiCMDActive#29=0X4DE,WiFiCMDActive#30=0X4DF,WiFiCMDActive#31=0X4E0
variable WiFiCMDActive#32=0X4E1,WiFiCMDActive#33=0X4E2,WiFiCMDActive#34=0X4E3,WiFiCMDActive#35=0X4E4
variable WiFiCMDActive#36=0X4E5,WiFiCMDActive#37=0X4E6,WiFiCMDActive#38=0X4E7,WiFiCMDActive#39=0X4E8
variable WiFiCMDActive#40=0X4E9,WiFiCMDActive#41=0X4EA,WiFiCMDActive#42=0X4EB,WiFiCMDActive#43=0X4EC
variable WiFiCMDActive#44=0X4ED,WiFiCMDActive#45=0X4EE,WiFiCMDActive#46=0X4EF,WiFiCMDActive#47=0X520
variable WiFiCMDActive#48=0X521,WiFiCMDActive#49=0X522,WiFiCMDActive#50=0X523,WiFiCMDActive#51=0X524
variable WiFiCMDActive#52=0X525,WiFiCMDActive#53=0X526,WiFiCMDActive#54=0X527,WiFiCMDActive#55=0X528
variable WiFiCMDActive#56=0X529,WiFiCMDActive#57=0X52A,WiFiCMDActive#58=0X52B,WiFiCMDActive#59=0X52C
variable WiFiCMDActive#60=0X52D,WiFiCMDActive#61=0X52E,WiFiCMDActive#62=0X52F,WiFiCMDActive#63=0X530
variable WiFiCMDActive#64=0X531,WiFiCMDActive#65=0X532,WiFiCMDActive#66=0X533,WiFiCMDActive#67=0X534
variable WiFiCMDActive#68=0X535,WiFiCMDActive#69=0X536,WiFiCMDActive#70=0X537,WiFiCMDActive#71=0X538
variable WiFiCMDActive#72=0X539,WiFiCMDActive#73=0X53A,WiFiCMDActive#74=0X53B,WiFiCMDActive#75=0X53C
variable WiFiCMDActive#76=0X53D,WiFiCMDActive#77=0X53E,WiFiCMDActive#78=0X53F,WiFiCMDActive#79=0X540
variable WiFiCMDActive#80=0X541,WiFiCMDActive#81=0X542,WiFiCMDActive#82=0X543,WiFiCMDActive#83=0X544
variable WiFiCMDActive#84=0X545,WiFiCMDActive#85=0X546,WiFiCMDActive#86=0X547,WiFiCMDActive#87=0X548
variable WiFiCMDActive#88=0X549,WiFiCMDActive#89=0X54A,WiFiCMDActive#90=0X54B,WiFiCMDActive#91=0X54C
variable WiFiCMDActive#92=0X54D,WiFiCMDActive#93=0X54E,WiFiCMDActive#94=0X54F,WiFiCMDActive#95=0X550
variable WiFiCMDActive#96=0X551,WiFiCMDActive#97=0X552,WiFiCMDActive#98=0X553,WiFiCMDActive#99=0X554
variable WiFiCMDActive#100=0X555,WiFiCMDActive#101=0X556,WiFiCMDActive#102=0X557,WiFiCMDActive#103=0X558
variable WiFiCMDActive#104=0X559,WiFiCMDActive#105=0X55A,WiFiCMDActive#106=0X55B,WiFiCMDActive#107=0X55C
variable WiFiCMDActive#108=0X55D,WiFiCMDActive#109=0X55E,WiFiCMDActive#110=0X55F,WiFiCMDActive#111=0X560
variable WiFiCMDActive#112=0X561,WiFiCMDActive#113=0X562,WiFiCMDActive#114=0X563,WiFiCMDActive#115=0X564
variable WiFiCMDActive#116=0X565,WiFiCMDActive#117=0X566,WiFiCMDActive#118=0X567,WiFiCMDActive#119=0X568
variable WiFiCMDActive#120=0X569
WiFiTXPos equ 0X56A
TXtmp equ 0X56B
WiFiPowerOnTimeout equ 0X56C
WiFiPowerOnTimeoutH equ 0X56D
TXGapTimer equ 0X56E
RX1Timeout equ 0X56F
; START OF RAM BANK 11
WiFiUnresponsive equ 0X5A0
SoundSTR equ 0X5A1
variable SoundSTR#0=0X5A1,SoundSTR#1=0X5A2,SoundSTR#2=0X5A3
SoundQueue equ 0X5A4
variable SoundQueue#0=0X5A4,SoundQueue#1=0X5A5,SoundQueue#2=0X5A6,SoundQueue#3=0X5A7
variable SoundQueue#4=0X5A8,SoundQueue#5=0X5A9,SoundQueue#6=0X5AA,SoundQueue#7=0X5AB
variable SoundQueue#8=0X5AC,SoundQueue#9=0X5AD
SQNext equ 0X5AE
SQTail equ 0X5AF
SoundStartDelay equ 0X5B0
SoundTemp equ 0X5B1
SoundPowerOnTimeout equ 0X5B2
SoundTimeout equ 0X5B3
SoundTimeoutH equ 0X5B4
SoundMinimumRun equ 0X5B5
cmd equ 0X5B6
cmdp1 equ 0X5B7
cmdp2 equ 0X5B8
SoundTempW equ 0X5B9
SoundTempWH equ 0X5BA
SoundCmd equ 0X5BB
variable SoundCmd#0=0X5BB,SoundCmd#1=0X5BC,SoundCmd#2=0X5BD,SoundCmd#3=0X5BE
variable SoundCmd#4=0X5BF,SoundCmd#5=0X5C0,SoundCmd#6=0X5C1,SoundCmd#7=0X5C2
variable SoundCmd#8=0X5C3,SoundCmd#9=0X5C4
SoundCmdPos equ 0X5C5
NewPlayerSound equ 0X5C6
PostRegSound equ 0X5C7
tpWiFiStep equ 0X5C8
EndWaitTime equ 0X5C9
TeamPickerCount equ 0X5CA
TeamPickerTime equ 0X5CB
TeamPickerTimeH equ 0X5CC
TeamPickerCycles equ 0X5CD
SoundQueuedTimer equ 0X5CE
LED1Data equ 0X5CF
variable LED1Data#0=0X5CF,LED1Data#1=0X5D0,LED1Data#2=0X5D1,LED1Data#3=0X5D2
variable LED1Data#4=0X5D3,LED1Data#5=0X5D4,LED1Data#6=0X5D5,LED1Data#7=0X5D6
variable LED1Data#8=0X5D7,LED1Data#9=0X5D8,LED1Data#10=0X5D9,LED1Data#11=0X5DA
variable LED1Data#12=0X5DB,LED1Data#13=0X5DC,LED1Data#14=0X5DD,LED1Data#15=0X5DE
variable LED1Data#16=0X5DF,LED1Data#17=0X5E0,LED1Data#18=0X5E1,LED1Data#19=0X5E2
variable LED1Data#20=0X5E3,LED1Data#21=0X5E4,LED1Data#22=0X5E5,LED1Data#23=0X5E6
variable LED1Data#24=0X5E7,LED1Data#25=0X5E8,LED1Data#26=0X5E9,LED1Data#27=0X5EA
variable LED1Data#28=0X5EB,LED1Data#29=0X5EC,LED1Data#30=0X5ED,LED1Data#31=0X5EE
variable LED1Data#32=0X5EF,LED1Data#33=0X620,LED1Data#34=0X621,LED1Data#35=0X622
variable LED1Data#36=0X623,LED1Data#37=0X624,LED1Data#38=0X625,LED1Data#39=0X626
variable LED1Data#40=0X627,LED1Data#41=0X628,LED1Data#42=0X629,LED1Data#43=0X62A
variable LED1Data#44=0X62B,LED1Data#45=0X62C,LED1Data#46=0X62D,LED1Data#47=0X62E
variable LED1Data#48=0X62F,LED1Data#49=0X630,LED1Data#50=0X631,LED1Data#51=0X632
variable LED1Data#52=0X633,LED1Data#53=0X634,LED1Data#54=0X635,LED1Data#55=0X636
variable LED1Data#56=0X637,LED1Data#57=0X638,LED1Data#58=0X639,LED1Data#59=0X63A
LED2Data equ 0X63B
variable LED2Data#0=0X63B,LED2Data#1=0X63C,LED2Data#2=0X63D,LED2Data#3=0X63E
variable LED2Data#4=0X63F,LED2Data#5=0X640,LED2Data#6=0X641,LED2Data#7=0X642
variable LED2Data#8=0X643,LED2Data#9=0X644,LED2Data#10=0X645,LED2Data#11=0X646
variable LED2Data#12=0X647,LED2Data#13=0X648,LED2Data#14=0X649,LED2Data#15=0X64A
variable LED2Data#16=0X64B,LED2Data#17=0X64C,LED2Data#18=0X64D,LED2Data#19=0X64E
variable LED2Data#20=0X64F,LED2Data#21=0X650,LED2Data#22=0X651,LED2Data#23=0X652
variable LED2Data#24=0X653,LED2Data#25=0X654,LED2Data#26=0X655,LED2Data#27=0X656
variable LED2Data#28=0X657,LED2Data#29=0X658,LED2Data#30=0X659,LED2Data#31=0X65A
variable LED2Data#32=0X65B,LED2Data#33=0X65C,LED2Data#34=0X65D,LED2Data#35=0X65E
variable LED2Data#36=0X65F,LED2Data#37=0X660,LED2Data#38=0X661,LED2Data#39=0X662
variable LED2Data#40=0X663,LED2Data#41=0X664,LED2Data#42=0X665,LED2Data#43=0X666
variable LED2Data#44=0X667,LED2Data#45=0X668,LED2Data#46=0X669,LED2Data#47=0X66A
variable LED2Data#48=0X66B,LED2Data#49=0X66C,LED2Data#50=0X66D,LED2Data#51=0X66E
variable LED2Data#52=0X66F,LED2Data#53=0X6A0,LED2Data#54=0X6A1,LED2Data#55=0X6A2
variable LED2Data#56=0X6A3,LED2Data#57=0X6A4,LED2Data#58=0X6A5,LED2Data#59=0X6A6
LEDIdleLocation equ 0X6A7
ReadData equ 0X6A8
LED1ByteCount equ 0X6A9
LED2ByteCount equ 0X6AA
ClockCount equ 0X6AB
GeneralTimer equ 0X6AC
GeneralTimerH equ 0X6AD
CaptureTimer equ 0X6AE
CaptureTimerH equ 0X6AF
DividerTimer equ 0X6B0
FastTimer equ 0X6B1
TotalTeams equ 0X6B2
TeamColourHue equ 0X6B3
TeamColourHueH equ 0X6B4
variable TeamColourHue#0=0X6B3,TeamColourHue#0H=0X6B4,TeamColourHue#1=0X6B5,TeamColourHue#1H=0X6B6
variable TeamColourHue#2=0X6B7,TeamColourHue#2H=0X6B8,TeamColourHue#3=0X6B9,TeamColourHue#3H=0X6BA
variable TeamColourHue#4=0X6BB,TeamColourHue#4H=0X6BC,TeamColourHue#5=0X6BD,TeamColourHue#5H=0X6BE
variable TeamColourHue#6=0X6BF,TeamColourHue#6H=0X6C0,TeamColourHue#7=0X6C1,TeamColourHue#7H=0X6C2
variable TeamColourHue#8=0X6C3,TeamColourHue#8H=0X6C4,TeamColourHue#9=0X6C5,TeamColourHue#9H=0X6C6
TeamSoundOffset equ 0X6C7
variable TeamSoundOffset#0=0X6C7,TeamSoundOffset#1=0X6C8,TeamSoundOffset#2=0X6C9,TeamSoundOffset#3=0X6CA
variable TeamSoundOffset#4=0X6CB,TeamSoundOffset#5=0X6CC,TeamSoundOffset#6=0X6CD,TeamSoundOffset#7=0X6CE
variable TeamSoundOffset#8=0X6CF,TeamSoundOffset#9=0X6D0
LEDFrame equ 0X6D1
LEDFrameH equ 0X6D2
LEDLastFrame equ 0X6D3
LEDLastFrameH equ 0X6D4
LEDActiveAnimation equ 0X6D5
RX2Timeout equ 0X6D6
ResetCount equ 0X6D7
IdleRFIDGap equ 0X6D8
IdleAnimationDelay equ 0X6D9
IdleDiagInterval equ 0X6DA
IdleDiagIntervalH equ 0X6DB
IdleAliveInterval equ 0X6DC
IdleAliveIntervalH equ 0X6DD
BootWiFiRetry equ 0X6DE
AnimationCycles equ 0X6DF
SavedSoundLevel equ 0X6E0
cmdMenu equ 0X6E1
DiagResult equ 0X6E2
DiagResultH equ 0X6E3
SoundRspRetryCount equ 0X6E4
SoundStatus equ 0X6E5
CycleCount equ 0X6E6
OwnerAnimationCount equ 0X6E7
_C equ 0X6E8
FrameTemp equ 0X6E9
FrameTempH equ 0X6EA
Ftemp equ 0X6EB
EarlyCheckin equ 0X6EC
emfcount equ 0X6ED
mchcount equ 0X6EE
CCCcount equ 0X6EF
; START OF RAM BANK 14
randomvalue equ 0X720
randomvalueH equ 0X721
LangDelta equ 0X722
LangDeltaH equ 0X723
BoostResult equ 0X724
CurrentBoostCount equ 0X725
sTeam equ 0X726
teamindex equ 0X727
teamdatalen equ 0X728
wifi_tmpw equ 0X729
wifi_tmpwH equ 0X72A
wifiteamID equ 0X72B
DecOut equ 0X72C
HexIn equ 0X72D
AnimationTempR equ 0X72E
AnimationTempG equ 0X72F
AnimationTempB equ 0X730
FrameTemp2 equ 0X731
HSVh equ 0X732
HSVhH equ 0X733
HSVs equ 0X734
HSVv equ 0X735
Cs equ 0X736
Cv equ 0X737
Cc equ 0X738
OutR equ 0X739
OutG equ 0X73A
OutB equ 0X73B
bb equ 0X73C
ww equ 0X73D
wwH equ 0X73E
mm equ 0X73F
Key equ 0X740
variable Key#0=0X740,Key#1=0X741,Key#2=0X742,Key#3=0X743
variable Key#4=0X744,Key#5=0X745
ConfigEntryCount equ 0X746
blockAddr equ 0X747
NDEFStage equ 0X748
NDEFPos equ 0X749
NDEFLen equ 0X74A
NDEFLenH equ 0X74B
NDEFRec equ 0X74C
NDEFTypeLen equ 0X74D
NDEFPayloadLen equ 0X74E
NDEFIDLen equ 0X74F
NDEFID equ 0X750
variable NDEFID#0=0X750,NDEFID#1=0X751,NDEFID#2=0X752,NDEFID#3=0X753
variable NDEFID#4=0X754,NDEFID#5=0X755,NDEFID#6=0X756,NDEFID#7=0X757
variable NDEFID#8=0X758,NDEFID#9=0X759,NDEFID#10=0X75A,NDEFID#11=0X75B
variable NDEFID#12=0X75C,NDEFID#13=0X75D,NDEFID#14=0X75E,NDEFID#15=0X75F
variable NDEFID#16=0X760,NDEFID#17=0X761,NDEFID#18=0X762,NDEFID#19=0X763
variable NDEFID#20=0X764,NDEFID#21=0X765,NDEFID#22=0X766,NDEFID#23=0X767
variable NDEFID#24=0X768,NDEFID#25=0X769,NDEFID#26=0X76A,NDEFID#27=0X76B
variable NDEFID#28=0X76C,NDEFID#29=0X76D,NDEFID#30=0X76E,NDEFID#31=0X76F
variable NDEFID#32=0X7A0,NDEFID#33=0X7A1,NDEFID#34=0X7A2,NDEFID#35=0X7A3
variable NDEFID#36=0X7A4,NDEFID#37=0X7A5,NDEFID#38=0X7A6,NDEFID#39=0X7A7
variable NDEFID#40=0X7A8,NDEFID#41=0X7A9,NDEFID#42=0X7AA,NDEFID#43=0X7AB
variable NDEFID#44=0X7AC,NDEFID#45=0X7AD,NDEFID#46=0X7AE,NDEFID#47=0X7AF
variable NDEFID#48=0X7B0,NDEFID#49=0X7B1,NDEFID#50=0X7B2
NDEFType equ 0X7B3
variable NDEFType#0=0X7B3,NDEFType#1=0X7B4,NDEFType#2=0X7B5,NDEFType#3=0X7B6
variable NDEFType#4=0X7B7,NDEFType#5=0X7B8,NDEFType#6=0X7B9,NDEFType#7=0X7BA
variable NDEFType#8=0X7BB,NDEFType#9=0X7BC,NDEFType#10=0X7BD,NDEFType#11=0X7BE
variable NDEFType#12=0X7BF,NDEFType#13=0X7C0,NDEFType#14=0X7C1,NDEFType#15=0X7C2
variable NDEFType#16=0X7C3,NDEFType#17=0X7C4,NDEFType#18=0X7C5,NDEFType#19=0X7C6
variable NDEFType#20=0X7C7,NDEFType#21=0X7C8,NDEFType#22=0X7C9,NDEFType#23=0X7CA
variable NDEFType#24=0X7CB,NDEFType#25=0X7CC,NDEFType#26=0X7CD,NDEFType#27=0X7CE
variable NDEFType#28=0X7CF,NDEFType#29=0X7D0,NDEFType#30=0X7D1,NDEFType#31=0X7D2
variable NDEFType#32=0X7D3,NDEFType#33=0X7D4,NDEFType#34=0X7D5,NDEFType#35=0X7D6
variable NDEFType#36=0X7D7,NDEFType#37=0X7D8,NDEFType#38=0X7D9,NDEFType#39=0X7DA
variable NDEFType#40=0X7DB,NDEFType#41=0X7DC,NDEFType#42=0X7DD,NDEFType#43=0X7DE
variable NDEFType#44=0X7DF,NDEFType#45=0X7E0,NDEFType#46=0X7E1,NDEFType#47=0X7E2
variable NDEFType#48=0X7E3,NDEFType#49=0X7E4,NDEFType#50=0X7E5
NDEFCount equ 0X7E6
NDEFPayload equ 0X7E7
variable NDEFPayload#0=0X7E7,NDEFPayload#1=0X7E8,NDEFPayload#2=0X7E9,NDEFPayload#3=0X7EA
variable NDEFPayload#4=0X7EB,NDEFPayload#5=0X7EC,NDEFPayload#6=0X7ED,NDEFPayload#7=0X7EE
variable NDEFPayload#8=0X7EF,NDEFPayload#9=0X820,NDEFPayload#10=0X821,NDEFPayload#11=0X822
variable NDEFPayload#12=0X823,NDEFPayload#13=0X824,NDEFPayload#14=0X825,NDEFPayload#15=0X826
variable NDEFPayload#16=0X827,NDEFPayload#17=0X828,NDEFPayload#18=0X829,NDEFPayload#19=0X82A
variable NDEFPayload#20=0X82B,NDEFPayload#21=0X82C,NDEFPayload#22=0X82D,NDEFPayload#23=0X82E
variable NDEFPayload#24=0X82F,NDEFPayload#25=0X830,NDEFPayload#26=0X831,NDEFPayload#27=0X832
variable NDEFPayload#28=0X833,NDEFPayload#29=0X834,NDEFPayload#30=0X835,NDEFPayload#31=0X836
variable NDEFPayload#32=0X837,NDEFPayload#33=0X838,NDEFPayload#34=0X839,NDEFPayload#35=0X83A
variable NDEFPayload#36=0X83B,NDEFPayload#37=0X83C,NDEFPayload#38=0X83D,NDEFPayload#39=0X83E
variable NDEFPayload#40=0X83F,NDEFPayload#41=0X840,NDEFPayload#42=0X841,NDEFPayload#43=0X842
variable NDEFPayload#44=0X843,NDEFPayload#45=0X844,NDEFPayload#46=0X845,NDEFPayload#47=0X846
variable NDEFPayload#48=0X847,NDEFPayload#49=0X848,NDEFPayload#50=0X849,NDEFPayload#51=0X84A
variable NDEFPayload#52=0X84B,NDEFPayload#53=0X84C,NDEFPayload#54=0X84D,NDEFPayload#55=0X84E
variable NDEFPayload#56=0X84F,NDEFPayload#57=0X850,NDEFPayload#58=0X851,NDEFPayload#59=0X852
variable NDEFPayload#60=0X853,NDEFPayload#61=0X854,NDEFPayload#62=0X855,NDEFPayload#63=0X856
variable NDEFPayload#64=0X857,NDEFPayload#65=0X858,NDEFPayload#66=0X859,NDEFPayload#67=0X85A
variable NDEFPayload#68=0X85B,NDEFPayload#69=0X85C,NDEFPayload#70=0X85D,NDEFPayload#71=0X85E
variable NDEFPayload#72=0X85F,NDEFPayload#73=0X860,NDEFPayload#74=0X861,NDEFPayload#75=0X862
variable NDEFPayload#76=0X863,NDEFPayload#77=0X864,NDEFPayload#78=0X865,NDEFPayload#79=0X866
variable NDEFPayload#80=0X867,NDEFPayload#81=0X868,NDEFPayload#82=0X869,NDEFPayload#83=0X86A
variable NDEFPayload#84=0X86B,NDEFPayload#85=0X86C,NDEFPayload#86=0X86D,NDEFPayload#87=0X86E
variable NDEFPayload#88=0X86F,NDEFPayload#89=0X8A0,NDEFPayload#90=0X8A1,NDEFPayload#91=0X8A2
variable NDEFPayload#92=0X8A3,NDEFPayload#93=0X8A4,NDEFPayload#94=0X8A5,NDEFPayload#95=0X8A6
variable NDEFPayload#96=0X8A7,NDEFPayload#97=0X8A8,NDEFPayload#98=0X8A9,NDEFPayload#99=0X8AA
variable NDEFPayload#100=0X8AB,NDEFPayload#101=0X8AC,NDEFPayload#102=0X8AD,NDEFPayload#103=0X8AE
variable NDEFPayload#104=0X8AF,NDEFPayload#105=0X8B0,NDEFPayload#106=0X8B1,NDEFPayload#107=0X8B2
variable NDEFPayload#108=0X8B3,NDEFPayload#109=0X8B4,NDEFPayload#110=0X8B5,NDEFPayload#111=0X8B6
variable NDEFPayload#112=0X8B7,NDEFPayload#113=0X8B8,NDEFPayload#114=0X8B9,NDEFPayload#115=0X8BA
variable NDEFPayload#116=0X8BB,NDEFPayload#117=0X8BC,NDEFPayload#118=0X8BD,NDEFPayload#119=0X8BE
variable NDEFPayload#120=0X8BF,NDEFPayload#121=0X8C0,NDEFPayload#122=0X8C1,NDEFPayload#123=0X8C2
variable NDEFPayload#124=0X8C3,NDEFPayload#125=0X8C4,NDEFPayload#126=0X8C5,NDEFPayload#127=0X8C6
variable NDEFPayload#128=0X8C7,NDEFPayload#129=0X8C8,NDEFPayload#130=0X8C9,NDEFPayload#131=0X8CA
variable NDEFPayload#132=0X8CB,NDEFPayload#133=0X8CC,NDEFPayload#134=0X8CD,NDEFPayload#135=0X8CE
variable NDEFPayload#136=0X8CF,NDEFPayload#137=0X8D0,NDEFPayload#138=0X8D1,NDEFPayload#139=0X8D2
variable NDEFPayload#140=0X8D3,NDEFPayload#141=0X8D4,NDEFPayload#142=0X8D5,NDEFPayload#143=0X8D6
variable NDEFPayload#144=0X8D7,NDEFPayload#145=0X8D8,NDEFPayload#146=0X8D9,NDEFPayload#147=0X8DA
variable NDEFPayload#148=0X8DB,NDEFPayload#149=0X8DC,NDEFPayload#150=0X8DD,NDEFPayload#151=0X8DE
variable NDEFPayload#152=0X8DF,NDEFPayload#153=0X8E0,NDEFPayload#154=0X8E1,NDEFPayload#155=0X8E2
variable NDEFPayload#156=0X8E3,NDEFPayload#157=0X8E4,NDEFPayload#158=0X8E5,NDEFPayload#159=0X8E6
variable NDEFPayload#160=0X8E7,NDEFPayload#161=0X8E8,NDEFPayload#162=0X8E9,NDEFPayload#163=0X8EA
variable NDEFPayload#164=0X8EB,NDEFPayload#165=0X8EC,NDEFPayload#166=0X8ED,NDEFPayload#167=0X8EE
variable NDEFPayload#168=0X8EF,NDEFPayload#169=0X920,NDEFPayload#170=0X921,NDEFPayload#171=0X922
variable NDEFPayload#172=0X923,NDEFPayload#173=0X924,NDEFPayload#174=0X925,NDEFPayload#175=0X926
variable NDEFPayload#176=0X927,NDEFPayload#177=0X928,NDEFPayload#178=0X929,NDEFPayload#179=0X92A
variable NDEFPayload#180=0X92B,NDEFPayload#181=0X92C,NDEFPayload#182=0X92D,NDEFPayload#183=0X92E
variable NDEFPayload#184=0X92F,NDEFPayload#185=0X930,NDEFPayload#186=0X931,NDEFPayload#187=0X932
variable NDEFPayload#188=0X933,NDEFPayload#189=0X934,NDEFPayload#190=0X935,NDEFPayload#191=0X936
variable NDEFPayload#192=0X937,NDEFPayload#193=0X938,NDEFPayload#194=0X939,NDEFPayload#195=0X93A
variable NDEFPayload#196=0X93B,NDEFPayload#197=0X93C,NDEFPayload#198=0X93D,NDEFPayload#199=0X93E
variable NDEFPayload#200=0X93F
TabTxt equ 0X940
variable TabTxt#0=0X940,TabTxt#1=0X941,TabTxt#2=0X942
NDEFMessage equ 0X943
variable NDEFMessage#0=0X943,NDEFMessage#1=0X944,NDEFMessage#2=0X945,NDEFMessage#3=0X946
variable NDEFMessage#4=0X947,NDEFMessage#5=0X948,NDEFMessage#6=0X949,NDEFMessage#7=0X94A
variable NDEFMessage#8=0X94B,NDEFMessage#9=0X94C,NDEFMessage#10=0X94D,NDEFMessage#11=0X94E
variable NDEFMessage#12=0X94F,NDEFMessage#13=0X950,NDEFMessage#14=0X951,NDEFMessage#15=0X952
variable NDEFMessage#16=0X953,NDEFMessage#17=0X954,NDEFMessage#18=0X955,NDEFMessage#19=0X956
variable NDEFMessage#20=0X957,NDEFMessage#21=0X958,NDEFMessage#22=0X959,NDEFMessage#23=0X95A
variable NDEFMessage#24=0X95B,NDEFMessage#25=0X95C,NDEFMessage#26=0X95D,NDEFMessage#27=0X95E
variable NDEFMessage#28=0X95F,NDEFMessage#29=0X960,NDEFMessage#30=0X961,NDEFMessage#31=0X962
variable NDEFMessage#32=0X963,NDEFMessage#33=0X964,NDEFMessage#34=0X965,NDEFMessage#35=0X966
variable NDEFMessage#36=0X967,NDEFMessage#37=0X968,NDEFMessage#38=0X969,NDEFMessage#39=0X96A
variable NDEFMessage#40=0X96B,NDEFMessage#41=0X96C,NDEFMessage#42=0X96D,NDEFMessage#43=0X96E
variable NDEFMessage#44=0X96F,NDEFMessage#45=0X9A0,NDEFMessage#46=0X9A1,NDEFMessage#47=0X9A2
variable NDEFMessage#48=0X9A3,NDEFMessage#49=0X9A4,NDEFMessage#50=0X9A5,NDEFMessage#51=0X9A6
variable NDEFMessage#52=0X9A7,NDEFMessage#53=0X9A8,NDEFMessage#54=0X9A9,NDEFMessage#55=0X9AA
variable NDEFMessage#56=0X9AB,NDEFMessage#57=0X9AC,NDEFMessage#58=0X9AD,NDEFMessage#59=0X9AE
variable NDEFMessage#60=0X9AF,NDEFMessage#61=0X9B0,NDEFMessage#62=0X9B1,NDEFMessage#63=0X9B2
variable NDEFMessage#64=0X9B3,NDEFMessage#65=0X9B4,NDEFMessage#66=0X9B5,NDEFMessage#67=0X9B6
variable NDEFMessage#68=0X9B7,NDEFMessage#69=0X9B8,NDEFMessage#70=0X9B9,NDEFMessage#71=0X9BA
variable NDEFMessage#72=0X9BB,NDEFMessage#73=0X9BC,NDEFMessage#74=0X9BD,NDEFMessage#75=0X9BE
variable NDEFMessage#76=0X9BF,NDEFMessage#77=0X9C0,NDEFMessage#78=0X9C1,NDEFMessage#79=0X9C2
variable NDEFMessage#80=0X9C3,NDEFMessage#81=0X9C4,NDEFMessage#82=0X9C5,NDEFMessage#83=0X9C6
variable NDEFMessage#84=0X9C7,NDEFMessage#85=0X9C8,NDEFMessage#86=0X9C9,NDEFMessage#87=0X9CA
variable NDEFMessage#88=0X9CB,NDEFMessage#89=0X9CC,NDEFMessage#90=0X9CD,NDEFMessage#91=0X9CE
variable NDEFMessage#92=0X9CF,NDEFMessage#93=0X9D0,NDEFMessage#94=0X9D1,NDEFMessage#95=0X9D2
variable NDEFMessage#96=0X9D3,NDEFMessage#97=0X9D4,NDEFMessage#98=0X9D5,NDEFMessage#99=0X9D6
variable NDEFMessage#100=0X9D7,NDEFMessage#101=0X9D8,NDEFMessage#102=0X9D9,NDEFMessage#103=0X9DA
variable NDEFMessage#104=0X9DB,NDEFMessage#105=0X9DC,NDEFMessage#106=0X9DD,NDEFMessage#107=0X9DE
variable NDEFMessage#108=0X9DF,NDEFMessage#109=0X9E0,NDEFMessage#110=0X9E1,NDEFMessage#111=0X9E2
variable NDEFMessage#112=0X9E3,NDEFMessage#113=0X9E4,NDEFMessage#114=0X9E5,NDEFMessage#115=0X9E6
variable NDEFMessage#116=0X9E7,NDEFMessage#117=0X9E8,NDEFMessage#118=0X9E9,NDEFMessage#119=0X9EA
variable NDEFMessage#120=0X9EB,NDEFMessage#121=0X9EC,NDEFMessage#122=0X9ED,NDEFMessage#123=0X9EE
variable NDEFMessage#124=0X9EF,NDEFMessage#125=0XA20,NDEFMessage#126=0XA21,NDEFMessage#127=0XA22
variable NDEFMessage#128=0XA23,NDEFMessage#129=0XA24,NDEFMessage#130=0XA25,NDEFMessage#131=0XA26
variable NDEFMessage#132=0XA27,NDEFMessage#133=0XA28,NDEFMessage#134=0XA29,NDEFMessage#135=0XA2A
variable NDEFMessage#136=0XA2B,NDEFMessage#137=0XA2C,NDEFMessage#138=0XA2D,NDEFMessage#139=0XA2E
variable NDEFMessage#140=0XA2F,NDEFMessage#141=0XA30,NDEFMessage#142=0XA31,NDEFMessage#143=0XA32
variable NDEFMessage#144=0XA33,NDEFMessage#145=0XA34,NDEFMessage#146=0XA35,NDEFMessage#147=0XA36
variable NDEFMessage#148=0XA37,NDEFMessage#149=0XA38,NDEFMessage#150=0XA39,NDEFMessage#151=0XA3A
variable NDEFMessage#152=0XA3B,NDEFMessage#153=0XA3C,NDEFMessage#154=0XA3D,NDEFMessage#155=0XA3E
variable NDEFMessage#156=0XA3F,NDEFMessage#157=0XA40,NDEFMessage#158=0XA41,NDEFMessage#159=0XA42
variable NDEFMessage#160=0XA43,NDEFMessage#161=0XA44,NDEFMessage#162=0XA45,NDEFMessage#163=0XA46
variable NDEFMessage#164=0XA47,NDEFMessage#165=0XA48,NDEFMessage#166=0XA49,NDEFMessage#167=0XA4A
variable NDEFMessage#168=0XA4B,NDEFMessage#169=0XA4C,NDEFMessage#170=0XA4D,NDEFMessage#171=0XA4E
variable NDEFMessage#172=0XA4F,NDEFMessage#173=0XA50,NDEFMessage#174=0XA51,NDEFMessage#175=0XA52
variable NDEFMessage#176=0XA53,NDEFMessage#177=0XA54,NDEFMessage#178=0XA55,NDEFMessage#179=0XA56
variable NDEFMessage#180=0XA57,NDEFMessage#181=0XA58,NDEFMessage#182=0XA59,NDEFMessage#183=0XA5A
variable NDEFMessage#184=0XA5B,NDEFMessage#185=0XA5C,NDEFMessage#186=0XA5D,NDEFMessage#187=0XA5E
variable NDEFMessage#188=0XA5F,NDEFMessage#189=0XA60,NDEFMessage#190=0XA61,NDEFMessage#191=0XA62
variable NDEFMessage#192=0XA63,NDEFMessage#193=0XA64,NDEFMessage#194=0XA65,NDEFMessage#195=0XA66
variable NDEFMessage#196=0XA67,NDEFMessage#197=0XA68,NDEFMessage#198=0XA69,NDEFMessage#199=0XA6A
variable NDEFMessage#200=0XA6B,NDEFMessage#201=0XA6C,NDEFMessage#202=0XA6D,NDEFMessage#203=0XA6E
variable NDEFMessage#204=0XA6F,NDEFMessage#205=0XAA0,NDEFMessage#206=0XAA1,NDEFMessage#207=0XAA2
variable NDEFMessage#208=0XAA3,NDEFMessage#209=0XAA4,NDEFMessage#210=0XAA5,NDEFMessage#211=0XAA6
variable NDEFMessage#212=0XAA7,NDEFMessage#213=0XAA8,NDEFMessage#214=0XAA9,NDEFMessage#215=0XAAA
variable NDEFMessage#216=0XAAB,NDEFMessage#217=0XAAC,NDEFMessage#218=0XAAD,NDEFMessage#219=0XAAE
variable NDEFMessage#220=0XAAF,NDEFMessage#221=0XAB0,NDEFMessage#222=0XAB1,NDEFMessage#223=0XAB2
variable NDEFMessage#224=0XAB3,NDEFMessage#225=0XAB4,NDEFMessage#226=0XAB5,NDEFMessage#227=0XAB6
variable NDEFMessage#228=0XAB7,NDEFMessage#229=0XAB8,NDEFMessage#230=0XAB9,NDEFMessage#231=0XABA
variable NDEFMessage#232=0XABB,NDEFMessage#233=0XABC,NDEFMessage#234=0XABD,NDEFMessage#235=0XABE
variable NDEFMessage#236=0XABF,NDEFMessage#237=0XAC0,NDEFMessage#238=0XAC1,NDEFMessage#239=0XAC2
variable NDEFMessage#240=0XAC3,NDEFMessage#241=0XAC4,NDEFMessage#242=0XAC5,NDEFMessage#243=0XAC6
variable NDEFMessage#244=0XAC7,NDEFMessage#245=0XAC8,NDEFMessage#246=0XAC9,NDEFMessage#247=0XACA
variable NDEFMessage#248=0XACB,NDEFMessage#249=0XACC
NDEFMessageCount equ 0XACD
RetryCount equ 0XACE
CMDBase equ 0XACF
variable CMDBase#0=0XACF,CMDBase#1=0XAD0,CMDBase#2=0XAD1,CMDBase#3=0XAD2
variable CMDBase#4=0XAD3
; HEAP VARIABLES
; INTERRUPT CONTEXT STORAGE
_High__Context_Store equ 0XAD4
variable _High__Context_Store_0=0XAD4,_High__Context_Store_1=0XAD5,_High__Context_Store_2=0XAD6,_High__Context_Store_3=0XAD7
; ALIAS VARIABLES
#define SPIRFIDSelect PORTC,1
#define SPIClk PORTC,2
#define SPIOut PORTC,3
#define SPIIn PORTC,4
#define RFIDShutdown PORTC,5
#define BF SSP1STAT,0
#define SerialOutDiag PORTB,6
#define SerialInDiag PORTB,7
#define SerialOutDFR PORTB,5
#define SerialInDFR PORTB,4
#define DFRPower PORTB,3
#define DFRBusy PORTB,2
#define TamperSwitch PORTA,0
#define NeoPixelPower1 PORTA,1
#define NeoPixelOut1 PORTA,2
#define NeoPixelPower2 PORTA,7
#define NeoPixelOut2 PORTA,6
#define WIFIReset PORTA,3
#define VoltageSensor PORTC,0
#define PowerControl PORTB,1
#define SerialOutWiFi PORTC,6
#define SerialInWiFi PORTC,7
#define RC522ReaderPresent _B__VR1,0
#define RX1BufOverflow _B__VR1,1
#define RX2BufOverflow _B__VR1,2
#define RX1CommandReceived _B__VR1,3
#define RX2CommandReceived _B__VR1,4
#define LastMatched _B__VR1,5
#define OwnerMatched _B__VR1,6
#define CommandMatched _B__VR1,7
#define CommandMatched2 _B__VR2,0
#define WiFiConnected _B__VR2,1
#define WiFiMQTTFailed _B__VR2,2
#define WiFiTimeFailed _B__VR2,3
#define WifiInitSuccess _B__VR2,4
#define WifiInitSent _B__VR2,5
#define WifiInitNoKeys _B__VR2,6
#define WiFiUpdateInProgress _B__VR2,7
#define WifiConfigValid _B__VR3,0
#define WifiConfigBad _B__VR3,1
#define AliveAcknowledged _B__VR3,2
#define TXInProgress _B__VR3,3
#define WiFiPowerDownRequested _B__VR3,4
#define WiFiOnSent _B__VR3,5
#define WiFiPingPong _B__VR3,6
#define WiFiHasKeys _B__VR3,7
#define WiFiNoKeys _B__VR4,0
#define WiFiFailedToJoinSSID _B__VR4,1
#define WiFiEncryptionKeysWiped _B__VR4,2
#define OwnerStatusReceived _B__VR4,3
#define ReceivedGameStatus _B__VR4,4
#define DiscSwapCompleted _B__VR4,5
#define DiscSwapFailed _B__VR4,6
#define TamperLatch _B__VR4,7
#define NextSoundNow _B__VR5,0
#define SoundPlaying _B__VR5,1
#define WiFiReceivedSomething _B__VR5,2
#define FillAllFlagged _B__VR5,3
#define DisableTamperDetection _B__VR5,4
#define InhibitCommand _B__VR5,5
#define DiagSilent _B__VR5,6
#define SoundOnAlready _B__VR5,7
#define SoundVolumeSetRequested _B__VR6,0
#define SoundRspError _B__VR6,1
#define SoundRspCardInsert _B__VR6,2
#define SoundRspCardRemove _B__VR6,3
#define SoundCmdAck _B__VR6,4
#define SoundFinishedPlaying _B__VR6,5
#define SoundPoweredOn _B__VR6,6
#define InTamperState _B__VR6,7
#define VolumeReset _B__VR7,0
#define LEDHardwareReady _B__VR7,1
#define LEDActiveBuffer _B__VR7,2
#define PlayerUnknown _B__VR7,3
#define PlayerKnown _B__VR7,4
#define CaptureSucess _B__VR7,5
#define CaptureFailed _B__VR7,6
#define RegisterUserSuccess _B__VR7,7
#define RegisterUserFailed _B__VR8,0
#define WiFiPoweredOnOK _B__VR8,1
#define WifiClockError _B__VR8,2
#define flipflop _B__VR8,3
#define ReqSetLocation _B__VR8,4
#define ReqPowerOff _B__VR8,5
#define ReqExitCMD _B__VR8,6
#define ReqDiags _B__VR8,7
#define JumpCMDFound _B__VR9,0
#define InitRequested _B__VR9,1
#define AuthNeeded _B__VR9,2
; CONSTANTS
#define __xtal 32
#define __optimiser_level 0
#define RecentCaptureValue 6
#define RC522_PCD_IDLE 0
#define RC522_PCD_AUTHENT 14
#define RC522_PCD_RECEIVE 8
#define RC522_PCD_TRANSMIT 4
#define RC522_PCD_TRANSCEIVE 12
#define RC522_PCD_RESETPHASE 15
#define RC522_PCD_CALCCRC 3
#define RC522_PICC_REQIDL 38
#define RC522_PICC_REQALL 82
#define RC522_PICC_ANTICOLL_CL1 147
#define RC522_PICC_ANTICOLL_CL2 149
#define RC522_PICC_ANTICOLL_CL3 151
#define RC522_PICC_SELECTTAG_CL1 147
#define RC522_PICC_SELECTTAG_CL2 149
#define RC522_PICC_SELECTTAG_CL3 151
#define RC522_PICC_AUTHENT1A 96
#define RC522_PICC_AUTHENT1B 97
#define RC522_PICC_READ 48
#define RC522_PICC_WRITE 160
#define RC522_PICC_DECREMENT 192
#define RC522_PICC_INCREMENT 193
#define RC522_PICC_RESTORE 194
#define RC522_PICC_TRANSFER 176
#define RC522_PICC_HALT 80
#define RC522_MI_OK 0
#define RC522_MI_NOTAGERR 1
#define RC522_MI_ERR 2
#define RC522_Reg_Reserved00 0
#define RC522_Reg_CommandReg 1
#define RC522_Reg_ComIEnReg 2
#define RC522_Reg_DivlEnReg 3
#define RC522_Reg_ComIrqReg 4
#define RC522_Reg_DivIrqReg 5
#define RC522_Reg_ErrorReg 6
#define RC522_Reg_Status1Reg 7
#define RC522_Reg_Status2Reg 8
#define RC522_Reg_FIFODataReg 9
#define RC522_Reg_FIFOLevelReg 10
#define RC522_Reg_WaterLevelReg 11
#define RC522_Reg_ControlReg 12
#define RC522_Reg_BitFramingReg 13
#define RC522_Reg_CollReg 14
#define RC522_Reg_Reserved01 15
#define RC522_Reg_Reserved10 16
#define RC522_Reg_ModeReg 17
#define RC522_Reg_TxModeReg 18
#define RC522_Reg_RxModeReg 19
#define RC522_Reg_TxControlReg 20
#define RC522_Reg_TxAutoReg 21
#define RC522_Reg_TxSelReg 22
#define RC522_Reg_RxSelReg 23
#define RC522_Reg_RxThresholdReg 24
#define RC522_Reg_DemodReg 25
#define RC522_Reg_Reserved11 26
#define RC522_Reg_Reserved12 27
#define RC522_Reg_MifareReg 28
#define RC522_Reg_Reserved13 29
#define RC522_Reg_Reserved14 30
#define RC522_Reg_SerialSpeedReg 31
#define RC522_Reg_Reserved20 32
#define RC522_Reg_CRCResultRegM 33
#define RC522_Reg_CRCResultRegL 34
#define RC522_Reg_Reserved21 35
#define RC522_Reg_ModWidthReg 36
#define RC522_Reg_Reserved22 37
#define RC522_Reg_RFCfgReg 38
#define RC522_Reg_GsNReg 39
#define RC522_Reg_CWGsPReg 40
#define RC522_Reg_ModGsPReg 41
#define RC522_Reg_TModeReg 42
#define RC522_Reg_TPrescalerReg 43
#define RC522_Reg_TReloadRegH 44
#define RC522_Reg_TReloadRegL 45
#define RC522_Reg_TCounterValueRegH 46
#define RC522_Reg_TCounterValueRegL 47
#define RC522_Reg_Reserved30 48
#define RC522_Reg_TestSel1Reg 49
#define RC522_Reg_TestSel2Reg 50
#define RC522_Reg_TestPinEnReg 51
#define RC522_Reg_TestPinValueReg 52
#define RC522_Reg_TestBusReg 53
#define RC522_Reg_AutoTestReg 54
#define RC522_Reg_VersionReg 55
#define RC522_Reg_AnalogTestReg 56
#define RC522_Reg_TestDAC1Reg 57
#define RC522_Reg_TestDAC2Reg 58
#define RC522_Reg_TestADCReg 59
#define RC522_Reg_Reserved31 60
#define RC522_Reg_Reserved32 61
#define RC522_Reg_Reserved33 62
#define RC522_Reg_Reserved34 63
#define RC522_MaxLen 100
#define PICFirmwareVersion 18
#define DiagInterval 50
#define RX1BufLen 100
#define RX2BufLen 10
#define SoundQueueLength 10
#define SoundCmdBufferLength 10
#define TeamPickerMaxCycles 12
#define RX2TimeoutValue 5
#define CritialBatteryThreshold 510
#define CritialBatteryThresholdH 1
#define LowBatteryThreshold 561
#define LowBatteryThresholdH 2
#define RFIDChecksPerAnimation 4
#define Start_Byte 126
#define Version_Byte 255
#define Command_Length 6
#define End_Byte 239
#define Acknowledge 1
#define StoredAddr 7680
#define StoredAddrH 30
;---------------------------------------------
; START OF THE COMPILER'S LIBRARY ROUTINES
_compiler__start_
    org 0
    nop
    nop
    movlp ((_compiler_main_start_) >> 8)
    goto _compiler_main_start_
    org 4
    movlp ((ISR_Handler) >> 8)
    goto ISR_Handler
__Hex_StreamIn_32
    clrf PP2
    clrf PP2H
    clrf PP2HH
    clrf PP2HH
    bcf GPR,5
__Hex_StreamIn_b32
    call _Byte__Get_
    addlw 211
    btfsc STATUS,2
    bsf GPR,5
    addlw 45
    addlw 0xC6
    btfsc STATUS,0
    bra $ + 5
    addlw 10
    btfss STATUS,0
    bra __Hex_StreamIn_b32
    bra __in_hxl1__32
    addlw 0xF3
    btfsc STATUS,0
    bra __Hex_StreamIn_b32
    addlw 6
    btfss STATUS,0
    bra __Hex_StreamIn_b32
    addlw 10
__in_hxl1__32
    movwf PP1
    movlw 0x04
    movwf PP1H
__in_hxm__32
    lslf PP2,F
    rlf PP2H,F
    rlf PP2HH,F
    rlf PP2HHH,F
    decfsz PP1H,F
    bra __in_hxm__32
    movf PP1,W
    iorwf PP2,F
    decf GEN4H,F
    btfsc STATUS,2
    goto __In_MakeNeg32__
    call _Byte__Get_
    addlw 0xC6
    btfsc STATUS,0
    bra $ + 5
    addlw 10
    btfss STATUS,0
    goto __In_MakeNeg32__
    bra __in_hxl1__32
    addlw 0xF3
    btfsc STATUS,0
    goto __In_MakeNeg32__
    addlw 6
    btfss STATUS,0
    goto __In_MakeNeg32__
    addlw 10
    bra __in_hxl1__32
__Dec_StreamIn_32
    clrf PP2
    clrf PP2H
    clrf PP2HH
    clrf PP2HHH
    bcf GPR,5
__Dec_StreamIn_b32
    call _Byte__Get_
    addlw 211
    btfsc STATUS,2
    bsf GPR,5
    addlw 45
    addlw 0xC6
    btfsc STATUS,0
    bra __Dec_StreamIn_b32
    addlw 10
    btfss STATUS,0
    bra __Dec_StreamIn_b32
__in_dcl1__32
    movwf PP1
    clrf PP0HHH
    clrf PP0HH
    clrf PP0H
    movlw 0x0A
    movwf PP0
    call __multiply_u3232_
    movf PP1,W
    addwf PP0,W
    movwf PP2
    movf PP0H,W
    movwf PP2H
    clrw
    btfsc STATUS,0
    movlw 0x01
    addwf PP2H,F
    movf PP0HH,W
    movwf PP2HH
    clrw
    btfsc STATUS,0
    movlw 0x01
    addwf PP2HH,F
    movf PP0HHH,W
    movwf PP2HHH
    clrw
    btfsc STATUS,0
    movlw 0x01
    addwf PP2HHH,F
    decf GEN4H,F
    btfsc STATUS,2
    goto __In_MakeNeg32__
    call _Byte__Get_
    addlw 0xC6
    btfsc STATUS,0
    bra __In_MakeNeg32__
    addlw 10
    btfsc STATUS,0
    bra __in_dcl1__32
__In_MakeNeg32__
    btfss GPR,5
    bra $ + 12
    comf PP2,F
    comf PP2H,F
    comf PP2HH,F
    comf PP2HHH,F
    incf PP2,F
    btfsc STATUS,2
    incf PP2H,F
    btfsc STATUS,2
    incf PP2HH,F
    btfsc STATUS,2
    incf PP2HHH,F
    movf PP2,W
    return
__hex__ASCII__outb
    clrf GEN4H
__hex__ASCII__outc
    movwf PP2
__hex__ASCII__outd
    clrf PP2H
__hex__ASCII__out
    bcf BPF,3
    movf GEN4H,W
    btfsc STATUS,2
    bsf BPF,3
    movlw 0x04
    movwf GEN4
    swapf PP2H,W
    call __send_hex_digit__
    movf PP2H,W
    call __send_hex_digit__
    swapf PP2,W
    call __send_hex_digit__
    movf PP2,W
__send_hex_digit__
    andlw 0x0F
    addlw 246
    btfsc STATUS,0
    addlw 7
    addlw 10
    goto __send__it__
__dec__ASCII__outb
    clrf GEN4H
__dec__ASCII__outc
    movwf PP2
__dec__ASCII__outd
    clrf PP2H
__dec__ASCII__out
    bcf BPF,3
    movf GEN4H,W
    btfsc STATUS,2
    bsf BPF,3
    movlw 0x05
    movwf GEN4
    movlw 0x27
    movwf PP1H
    movlw 0x10
    call __send_dec_digit__
    movlw 0x03
    movwf PP1H
    movlw 0xE8
    call __send_dec_digit__
    clrf PP1H
    movlw 0x64
    call __send_dec_digit__
    clrf PP1H
    movlw 0x0A
    call __send_dec_digit__
    movf PP2,W
    bra __send__it__
__send_dec_digit__
    movwf PP1
    movf PP2H,W
    movwf PP0H
    movf PP2,W
    movwf PP0
    call __divide_u1616_
    movf PP0,W
__send__it__
    movwf PP0
    decf GEN4,F
    btfsc STATUS,2
    bcf BPF,3
    movf GEN4H,W
    btfsc STATUS,2
    bra $ + 4
    subwf GEN4,W
    btfsc STATUS,0
    bra __send_it_exit__
    movf PP0,W
    btfss STATUS,2
    bcf BPF,3
    btfsc BPF,3
    bra __send_it_exit__
    addlw 48
    goto __byte_send__
__send_it_exit__
    return
__byte_send__
    btfss BPFH,1
    return
    movwi INDF0++
    return
    return
_Byte__Get_
    btfss RPFH,7
    bra _byte_get_checknext1
    moviw INDF0++
    return
_byte_get_checknext1
__random_
    movf PP_RNDH,W
    iorwf PP_RND,W
    btfsc STATUS,2
    incf PP_RND,F
    movlw 128
    btfsc PP_RND,4
    xorwf PP_RNDH,F
    btfsc PP_RND,2
    xorwf PP_RNDH,F
    btfsc PP_RND,1
    xorwf PP_RNDH,F
    rlf PP_RNDH,W
    rlf PP_RND,F
    rlf PP_RNDH,F
    movf PP_RND,W
    return
__delay_ms_
    clrf PP1H
__delay_ms_wreg_
    movwf PP1
__delayms_from_regs__
    movlw 0xFF
    addwf PP1,F
    btfss STATUS,0
    addwf PP1H,F
    btfss STATUS,0
    return
    movlw 0x03
    movwf PP0H
    movlw 0xE6
    call __delay_us_wreg_
    bra __delayms_from_regs__
__delay_us_
    clrf PP0H
__delay_us_wreg_
    movwf PP0
    nop
    movlw 0x02
__delay_us_loop__
    nop
    bcf STATUS,0
    subwfb PP0,F
    clrw
    subwfb PP0H,F
    btfsc STATUS,0
    bra __delay_us_loop__
    return
__FpDiv_32__
    movf PP_AARGH,W
    movwf PPZHH
    xorwf PP_BARGH,W
    movwf _FP_SIGN
    movf PP_BARG,F
    btfsc STATUS,2
    bra __fpdiv_32_div0
    movf PP_AARG,F
    btfsc STATUS,2
    bra __fpdiv_32_res0
    movf PP_BARG,W
    subwf PP_AARG,F
    movlw 127
    btfsc STATUS,0
    bra __fpdiv_32_loop7
    addwf PP_AARG,F
    btfss STATUS,0
    bra __fpdiv_32_underflow
    bra __fpdiv_32_loop12
__fpdiv_32_loop7
    addwf PP_AARG,F
    btfsc STATUS,0
    bra __fpdiv_32_Overflow
__fpdiv_32_loop12
    movf PP_AARGHHH,W
    movwf PPZ
    movf PP_AARGHH,W
    movwf PPZH
    bsf PPZHH,7
    bsf PP_BARGH,7
    movlw 24
    movwf _FP_TEMP
    clrf PP_AARGHHH
    clrf PP_AARGHH
    clrf PP_AARGH
    bra __Fpdiv_32_Start
__fpdiv_32_loopOOP
    btfsc STATUS,0
    bra __fpdiv_32_subtract
__Fpdiv_32_Start
    movf PP_BARGHHH,W
    subwf PPZ,W
    movf PP_BARGHH,W
    btfss STATUS,0
    incfsz PP_BARGHH,W
    subwf PPZH,W
    movf PP_BARGH,W
    btfss STATUS,0
    incfsz PP_BARGH,W
    subwf PPZHH,W
    btfss STATUS,0
    bra __fpdiv_32_skip_sub
__fpdiv_32_subtract
    movf PP_BARGHHH,W
    subwf PPZ,F
    movf PP_BARGHH,W
    btfss STATUS,0
    incfsz PP_BARGHH,W
    subwf PPZH,F
    movf PP_BARGH,W
    btfss STATUS,0
    incfsz PP_BARGH,W
    subwf PPZHH,F
    bsf STATUS,0
__fpdiv_32_skip_sub
    rlf PP_AARGHHH,F
    rlf PP_AARGHH,F
    rlf PP_AARGH,F
    rlf PPZ,F
    rlf PPZH,F
    rlf PPZHH,F
    decfsz _FP_TEMP,F
    bra __fpdiv_32_loopOOP
    btfsc PP_AARGH,7
    bra __fpdiv_32_loop20
    movf PP_AARG,F
    btfsc STATUS,2
    bra __fpdiv_32_underflow
    rrf _FP_SIGN,F
    decf PP_AARG,F
    incf _FP_TEMP,F
    rlf _FP_SIGN,F
    bra __fpdiv_32_loopOOP
__fpdiv_32_loop20
    btfsc STATUS,0
    bra __fpdiv_32_add_1
    movf PP_BARGHHH,W
    subwf PPZ,F
    movf PP_BARGHH,W
    btfss STATUS,0
    incfsz PP_BARGHH,W
    subwf PPZH,F
    movf PP_BARGH,W
    btfss STATUS,0
    incfsz PP_BARGH,W
    subwf PPZHH,F
    btfss STATUS,0
    bra __fpdiv_32_loop36
__fpdiv_32_add_1
    incfsz PP_AARGHHH,F
    bra __fpdiv_32_loop36
    incfsz PP_AARGHH,F
    bra __fpdiv_32_loop36
    incfsz PP_AARGH,F
    bra __fpdiv_32_loop36
    rrf PP_AARGH,F
    rrf PP_AARGHH,F
    rrf PP_AARGHHH,F
    incf PP_AARG,F
    btfsc STATUS,2
    bra __fpdiv_32_Overflow
__fpdiv_32_loop36
    bra __fpdiv_32_set_sign
__fpdiv_32_div0
    bsf _FP_FLAGS,3
    bra __fpdiv_32_saturate
__fpdiv_32_underflow
    bsf _FP_FLAGS,2
__fpdiv_32_res0
    clrf PP_AARG
    bra __fpdiv_32_mantissa
__fpdiv_32_Overflow
    bsf _FP_FLAGS,1
__fpdiv_32_saturate
    movlw 0xFF
    movwf PP_AARG
__fpdiv_32_mantissa
    clrf PP_AARGHHH
    clrf PP_AARGHH
    movlw 128
    movwf PP_AARGH
__fpdiv_32_set_sign
    btfsc _FP_SIGN,7
    bra __fpdiv_32_loop38
    bcf PP_AARGH,7
__fpdiv_32_loop38
    return
_fl32_to_int32
    movf PP_AARG,W
    movwf _FP_TEMP
    movf PP_AARGH,W
    movwf PP_AARG
    movf PP_AARGHHH,W
    movwf PP_AARGH
    movf PP_AARG,W
    movwf PP_AARGHHH
    rlf PP_AARGHHH,F
    rrf _FP_TEMP,F
    rrf PP_AARGHHH,F
    clrf _FP_FLAGS
    rlf PP_AARGHHH,F
    rlf _FP_TEMP,F
    bnc _fl32int__unpkanz
    bsf _FP_FLAGS,2
    movlw 128
    xorwf _FP_FLAGS,F
_fl32int__unpka1
    bnz _fl32int__unpkanz
    bsf _FP_FLAGS,0
    clrf _FP_TEMP
    clrf PP_AARGHHH
    clrf PP_AARGHH
    clrf PP_AARGH
    bra _fl32int__UnPkContinue
_fl32int__unpkanz
    incf _FP_TEMP,W
    bz _fl32int__unpka2
    bsf STATUS,C
    rrf PP_AARGHHH,F
    bra _fl32int__UnPkContinue
_fl32int__unpka2
    bcf STATUS,C
    rrf PP_AARGHHH,F
    bnz _fl32int__unpknan
    bsf _FP_FLAGS,1
    bra _fl32int__UnPkContinue
_fl32int__unpknan
    bsf _FP_FLAGS,3
_fl32int__UnPkContinue
    btfsc _FP_FLAGS,3
    bra _fl32int__maxpos
    btfss _FP_FLAGS,1
    bra _fl32int__notinf
_fl32int__max
    btfsc _FP_FLAGS,2
    bra _fl32int__maxneg
_fl32int__maxpos
    movlw 0x7F
    movwf PP_AARGHHH
    movlw 0xFF
_fl32int__wr123
    movwf PP_AARGHH
    movwf PP_AARGH
    movwf PP_AARG
    bra _fl32int__exit
_fl32int__maxneg
    movlw 0x80
    movwf PP_AARGHHH
    bra _fl32int__wrz123
_fl32int__zero
    clrf PP_AARGHHH
_fl32int__wrz123
    movlw 0
    bra _fl32int__wr123
_fl32int__notinf
    btfsc _FP_FLAGS,0
    bra _fl32int__zero
    clrf PP_AARG
    movlw 0x9F
    subwf _FP_TEMP,W
    bc _fl32int__max
    movlw 0x7E
    subwf _FP_TEMP,W
    bnc _fl32int__zero
_fl32int__loop
    movlw 0x9E
    subwf _FP_TEMP,W
    bz _fl32int__loopexit
    bcf STATUS,C
    rrf PP_AARGHHH,F
    rrf PP_AARGHH,F
    rrf PP_AARGH,F
    rrf PP_AARG,F
    incf _FP_TEMP,F
    bra _fl32int__loop
_fl32int__loopexit
    btfss _FP_FLAGS,2
    bra _fl32int__exit
    comf PP_AARG,F
    comf PP_AARGH,F
    comf PP_AARGHH,F
    comf PP_AARGHHH,F
    incf PP_AARG,F
    btfsc STATUS,Z
    incf PP_AARGH,F
    btfsc STATUS,Z
    incf PP_AARGHH,F
    btfsc STATUS,Z
    incf PP_AARGHHH,F
    btfss PP_AARGHHH,7
    bra _fl32int__zero
_fl32int__exit
    movf PP_AARG,W
    return
_uns_int08_tofl32
    movwf PP_AARG
    clrf PP_AARGH
_uns_int16_tofl32
    clrf PP_AARGHH
    clrf PP_AARGHHH
_unsgn_int32_tofl32
    bcf _FP_SIGN,7
    bra __int32_tofl32_l5
_sgn_int32_tofl32
    bcf _FP_SIGN,7
    btfss PP_AARGHHH,7
    bra __int32_tofl32_l5
    comf PP_AARGHHH,F
    comf PP_AARGHH,F
    comf PP_AARGH,F
    comf PP_AARG,F
    incfsz PP_AARG,F
    bra __int32_tofl32_l4
    incfsz PP_AARGH,F
    bra __int32_tofl32_l4
    incf PP_AARGHH,F
    btfsc STATUS,2
    incf PP_AARGHHH,F
__int32_tofl32_l4
    bsf _FP_SIGN,7
__int32_tofl32_l5
    movlw 150
    movwf _FP_TEMP
    movf PP_AARGHHH,F
    btfsc STATUS,2
    bra __int32_tofl32_l7
    movlw 0x08
    addwf _FP_TEMP,F
    movf PP_AARGH,W
    movwf PP_AARG
    movf PP_AARGHH,W
    movwf PP_AARGH
    movf PP_AARGHHH,W
    movwf PP_AARGHH
    bra __int32_tofl32_l18
__int32_tofl32_l7
    movf PP_AARGHH,F
    btfss STATUS,2
    bra __int32_tofl32_l18
    movlw 0x08
    subwf _FP_TEMP,F
    movf PP_AARGH,W
    btfss STATUS,2
    bra __int32_tofl32_l20
    movlw 0x08
    subwf _FP_TEMP,F
    movf PP_AARG,W
    btfss STATUS,2
    bra __int32_tofl32_l22
    movf PP_AARGHHH,W
    movwf _FP_TEMP
    bra __Int32_ToFl32_exit
__int32_tofl32_l22
    clrf PP_AARG
__int32_tofl32_l20
    movwf PP_AARGHH
    movf PP_AARG,W
    movwf PP_AARGH
    clrf PP_AARG
__int32_tofl32_l18
    btfsc PP_AARGHH,7
    bra __int32_tofl32_l24
    bcf STATUS,0
    rlf PP_AARG,F
    rlf PP_AARGH,F
    rlf PP_AARGHH,F
    decf _FP_TEMP,F
    bra __int32_tofl32_l18
__int32_tofl32_l24
    btfss _FP_SIGN,7
    bcf PP_AARGHH,7
__Int32_ToFl32_exit
    movf PP_AARG,W
    movwf PP_AARGHHH
    movf _FP_TEMP,W
    movwf PP_AARG
    movf PP_AARGHH,W
    movwf _FP_TEMP
    movf PP_AARGH,W
    movwf PP_AARGHH
    movf _FP_TEMP,W
    movwf PP_AARGH
    return
__divide_u1616_
    clrf PP2H
    clrf PP2
__divide_int_u1616_
    movlw 0x10
    movwf PP3
__divide_u1616_loop_
    rlf PP0H,W
    rlf PP2,F
    rlf PP2H,F
    movf PP1,W
    subwf PP2,F
    movf PP1H,W
    subwfb PP2H,F
    btfsc STATUS,0
    bra __divide_u1616_k_
    movf PP1,W
    addwf PP2,F
    movf PP1H,W
    addwfc PP2H,F
    bcf STATUS,0
__divide_u1616_k_
    rlf PP0,F
    rlf PP0H,F
    decfsz PP3,F
    bra __divide_u1616_loop_
    movf PP0,W
    return
__multiply_u3232_
    movlw 32
    movwf PP3
    clrf PPZ
    clrf PPZH
    clrf PPZHH
    clrf PPZHHH
__multiply_u32_lp
    clrc
    btfss PP0,0
    goto __multiply_u32_br
    movf PP2,W
    addwf PPZ,F
    movf PP2H,W
    btfsc STATUS,0
    incfsz PP2H,W
    addwf PPZH,F
    movf PP2HH,W
    btfsc STATUS,0
    incfsz PP2HH,W
    addwf PPZHH,F
    movf PP2HHH,W
    btfsc STATUS,0
    incfsz PP2HHH,W
    addwf PPZHHH,F
__multiply_u32_br
    rrf PPZHHH,F
    rrf PPZHH,F
    rrf PPZH,F
    rrf PPZ,F
    rrf PP0HHH,F
    rrf PP0HH,F
    rrf PP0H,F
    rrf PP0,F
    decfsz PP3,F
    bra __multiply_u32_lp
    return
__multiply_u1616_
    movlw 0x10
    movwf PP6H
    clrf PP0H
    clrf PP0
    rrf PP3H,F
    rrf PP3,F
    btfss STATUS,0
    bra $ + 5
    movf PP1,W
    addwf PP0,F
    movf PP1H,W
    addwfc PP0H,F
    rrf PP0H,F
    rrf PP0,F
    rrf PP2H,F
    rrf PP2,F
    decfsz PP6H,F
    bra $ - 13
    movf PP2,W
    return
__exit_library__
__i_nt__
    movlb 0x00
    return
__val_dec32__
    clrf GEN4H
    movlw 128
    movwf RPFH
    goto __Dec_StreamIn_32
__val_hex32__
    clrf GEN4H
    movlw 128
    movwf RPFH
    goto __Hex_StreamIn_32
_compiler_main_start_
; CLEARING RAM FOR THE CLEAR COMMAND
    movlw 0xDF
    movwf FSR0L
    movlw 0x27
    movwf FSR0H
__clear__loop__
    clrf INDF0
    movlw 0x01
    subwf FSR0L,F
    movlw 0x00
    subwfb FSR0H,F
    movlw 0x1F
    subwf FSR0H,W
    btfss STATUS,2
    bra __clear__loop__
    movlw 0x40
    movwf _FP_FLAGS
    clrf BPF
;---------------------------------------------
; START OF THE USER'S PROGRAM CODE
F1_SOF equ $ ; POLYGENCODE.BAS
    movlb 0x3E
ram_bank = 62
    clrf ANSELA
    clrf ANSELB
    clrf ANSELC
    clrf SLRCONA
    clrf SLRCONB
    clrf SLRCONC
    clrf INLVLA
    clrf INLVLB
    clrf INLVLC
    clrf INLVLE
    movlb 0x13
ram_bank = 19
    clrf CM1CON0
    clrf CM2CON0
F1_000025 equ $ ; in [POLYGENCODE.BAS] ALL_DIGITAL = TRUE
F1_000054 equ $ ; in [POLYGENCODE.BAS] Seed $0345
    movlb 0x00
ram_bank = 0
    movlw 3
    movwf PP_RNDH
    movlw 69
    movwf PP_RND
F1_000387 equ $ ; in [POLYGENCODE.BAS] DelayMs 2
    movlw 2
    movlp ((__delay_ms_) >> 8)
    call __delay_ms_
ram_bank = 0
F1_000390 equ $ ; in [POLYGENCODE.BAS] goto Main
    _mjump Main
ISR_Handler
ram_bank = 0
F1_000393 equ $ ; in [POLYGENCODE.BAS] Context Save
    movlb 0x00
    movlw 0xC4
    movwf FSR0L
    movlw 0x26
    movwf FSR0H
    movf PBS_VAR0,W
    movwi INDF0++
    movf PP0,W
    movwi INDF0++
    movf PP0H,W
    movwi INDF0++
    movf SP__P9_,W
    movwf INDF0
F1_000394 equ $ ; in [POLYGENCODE.BAS] if RCSTA1.1 = 1 Or RCSTA1.2 = 1 Then
    movlw 0
    movlb 0x02
ram_bank = 2
    btfsc RCSTA1,1
    movlw 1
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlw 0
    movlb 0x02
ram_bank = 2
    btfsc RCSTA1,2
    movlw 1
    movlb 0x00
ram_bank = 0
    iorwf SP__P9_,F
    movlp ((_lbl__3) >> 8)
    btfsc STATUS,2
    goto _lbl__3
F1_000395 equ $ ; in [POLYGENCODE.BAS] RCSTA1.4 = 0
    movlb 0x02
ram_bank = 2
    bcf RCSTA1,4
F1_000396 equ $ ; in [POLYGENCODE.BAS] RCSTA1.4 = 1
    bsf RCSTA1,4
F1_000397 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__3
ram_bank = 0
F1_000398 equ $ ; in [POLYGENCODE.BAS] if RCSTA2.1 = 1 Or RCSTA2.2 = 1 Then
    movlw 0
    movlb 0x14
ram_bank = 20
    btfsc RCSTA2,1
    movlw 1
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlw 0
    movlb 0x14
ram_bank = 20
    btfsc RCSTA2,2
    movlw 1
    movlb 0x00
ram_bank = 0
    iorwf SP__P9_,F
    movlp ((_lbl__5) >> 8)
    btfsc STATUS,2
    goto _lbl__5
F1_000399 equ $ ; in [POLYGENCODE.BAS] RCSTA2.4 = 0
    movlb 0x14
ram_bank = 20
    bcf RCSTA2,4
F1_000400 equ $ ; in [POLYGENCODE.BAS] RCSTA2.4 = 1
    bsf RCSTA2,4
F1_000401 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__5
ram_bank = 0
F1_000402 equ $ ; in [POLYGENCODE.BAS] While PIR3.5=1
_lbl__6
    movlp ((_lbl__7) >> 8)
    movlb 0x0E
ram_bank = 14
    movf PIR3,W
    movlb 0x00
ram_bank = 0
    btfss WREG,5
    goto _lbl__7
F1_000403 equ $ ; in [POLYGENCODE.BAS] RX1BufferActive[RX1BufPos] =RC1REG
    movlb 0x05
ram_bank = 5
    movf RX1BufPos,W
    addlw 3
    movwf FSR0L
    movlw 0x21
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x02
ram_bank = 2
    movf RC1REG,W
    movwf INDF0
F1_000404 equ $ ; in [POLYGENCODE.BAS] if RX1BufferActive[RX1BufPos] =13 Then
    movlb 0x05
ram_bank = 5
    movf RX1BufPos,W
    addlw 3
    movwf FSR0L
    movlw 0x21
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR0
    movlw 13
    subwf PBS_VAR0,W
    movlp ((_lbl__9) >> 8)
    btfss STATUS,2
    goto _lbl__9
F1_000407 equ $ ; in [POLYGENCODE.BAS] Clear RX1BufferActive[RX1BufPos]
    movlb 0x05
ram_bank = 5
    movf RX1BufPos,W
    addlw 3
    movwf FSR0L
    movlw 0x21
    clrf FSR0H
    addwfc FSR0H,F
    clrf INDF0
F1_000408 equ $ ; in [POLYGENCODE.BAS] RX1Buffer=RX1BufferActive
    movlw 33
    movwf FSR0LH
    movlw 104
    movwf FSR0L
    movlw 0x21
    movwf FSR1LH
    movlw 0x03
    movwf FSR1L
    movlb 0x00
ram_bank = 0
    movlw 100
    movwf PP0
_pblb__10
    movf INDF1,F
    btfsc STATUS,2
    bra _pblb__11
    moviw INDF1++
    movwi INDF0++
    decfsz PP0,F
    bra _pblb__10
_pblb__11
    clrf INDF0
F1_000409 equ $ ; in [POLYGENCODE.BAS] Set RX1CommandReceived
    bsf _B__VR1,3
F1_000410 equ $ ; in [POLYGENCODE.BAS] Clear RX1BufPos
    movlb 0x05
ram_bank = 5
    clrf RX1BufPos
F1_000411 equ $ ; in [POLYGENCODE.BAS] Clear RX1Timeout
    movlb 0x0A
ram_bank = 10
    clrf RX1Timeout
    movlb 0x00
ram_bank = 0
    _mjump _lbl__12
_lbl__9
F1_000412 equ $ ; in [POLYGENCODE.BAS] else
F1_000413 equ $ ; in [POLYGENCODE.BAS] Inc RX1BufPos
    movlb 0x05
ram_bank = 5
    incf RX1BufPos,F
F1_000414 equ $ ; in [POLYGENCODE.BAS] RX1Timeout=8
    movlb 0x0A
ram_bank = 10
    movlw 8
    movwf RX1Timeout
F1_000415 equ $ ; in [POLYGENCODE.BAS] if RX1BufLen=RX1BufPos Then
    movlw 100
    movlb 0x05
ram_bank = 5
    subwf RX1BufPos,W
    movlp ((_lbl__14) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__14
F1_000416 equ $ ; in [POLYGENCODE.BAS] Dec RX1BufPos
    movlb 0x05
ram_bank = 5
    decf RX1BufPos,F
F1_000417 equ $ ; in [POLYGENCODE.BAS] Set RX1BufOverflow
    movlb 0x00
ram_bank = 0
    bsf _B__VR1,1
F1_000418 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__14
F1_000419 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__12
F1_000420 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__6
_lbl__7
F1_000422 equ $ ; in [POLYGENCODE.BAS] While PIR3.7=1
_lbl__15
    movlp ((_lbl__16) >> 8)
    movlb 0x0E
ram_bank = 14
    movf PIR3,W
    movlb 0x00
ram_bank = 0
    btfss WREG,7
    goto _lbl__16
F1_000423 equ $ ; in [POLYGENCODE.BAS] RX2Timeout=RX2TimeoutValue
    movlb 0x0D
ram_bank = 13
    movlw 5
    movwf RX2Timeout
F1_000424 equ $ ; in [POLYGENCODE.BAS] if RX2BufPos=0 Then
    movlb 0x05
ram_bank = 5
    movf RX2BufPos,F
    movlp ((_lbl__18) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__18
F1_000426 equ $ ; in [POLYGENCODE.BAS] RX2BufferTemp=RC2REG
    movlb 0x14
ram_bank = 20
    movf RC2REG,W
    movlb 0x05
ram_bank = 5
    movwf RX2BufferTemp
F1_000427 equ $ ; in [POLYGENCODE.BAS] if RX2BufferTemp=0x7E Then
    movlw 126
    subwf RX2BufferTemp,W
    movlp ((_lbl__20) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__20
F1_000428 equ $ ; in [POLYGENCODE.BAS] RX2Buffer[0] =RX2BufferTemp
    movlb 0x05
ram_bank = 5
    movf RX2BufferTemp,W
    movwf RX2Buffer#0
F1_000429 equ $ ; in [POLYGENCODE.BAS] Inc RX2BufPos
    incf RX2BufPos,F
F1_000430 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__20
    movlb 0x00
ram_bank = 0
    _mjump _lbl__21
_lbl__18
F1_000431 equ $ ; in [POLYGENCODE.BAS] else
F1_000432 equ $ ; in [POLYGENCODE.BAS] RX2Buffer[RX2BufPos] =RC2REG
    movlb 0x05
ram_bank = 5
    movf RX2BufPos,W
    addlw 205
    movwf FSR0L
    movlw 0x21
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x14
ram_bank = 20
    movf RC2REG,W
    movwf INDF0
F1_000433 equ $ ; in [POLYGENCODE.BAS] Inc RX2BufPos
    movlb 0x05
ram_bank = 5
    incf RX2BufPos,F
F1_000434 equ $ ; in [POLYGENCODE.BAS] if RX2BufLen=RX2BufPos Then
    movlw 10
    subwf RX2BufPos,W
    movlp ((_lbl__23) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__23
F1_000435 equ $ ; in [POLYGENCODE.BAS] Set RX2CommandReceived
    bsf _B__VR1,4
F1_000436 equ $ ; in [POLYGENCODE.BAS] Clear RX2BufPos
    movlb 0x05
ram_bank = 5
    clrf RX2BufPos
F1_000437 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__23
    movlb 0x00
ram_bank = 0
F1_000438 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__21
F1_000439 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__15
_lbl__16
F1_000442 equ $ ; in [POLYGENCODE.BAS] While PIR3.4=1 And TXInProgress=1
_lbl__24
    movlw 0
    movlb 0x0E
ram_bank = 14
    btfsc PIR3,4
    movlw 1
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlw 0
    btfsc _B__VR3,3
    movlw 1
    andwf SP__P9_,F
    movlp ((_lbl__25) >> 8)
    btfsc STATUS,2
    goto _lbl__25
F1_000443 equ $ ; in [POLYGENCODE.BAS] TXtmp=WiFiCMDActive[WiFiTXPos]
    movlb 0x0A
ram_bank = 10
    movf WiFiTXPos,W
    addlw 241
    movwf FSR0L
    movlw 0x22
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movwf TXtmp
F1_000445 equ $ ; in [POLYGENCODE.BAS] if TXtmp>0 Then
    movf TXtmp,F
    movlp ((_lbl__27) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__27
F1_000446 equ $ ; in [POLYGENCODE.BAS] TX1REG=TXtmp
    movlb 0x0A
ram_bank = 10
    movf TXtmp,W
    movlb 0x02
ram_bank = 2
    movwf TX1REG
F1_000447 equ $ ; in [POLYGENCODE.BAS] Inc WiFiTXPos
    movlb 0x0A
ram_bank = 10
    incf WiFiTXPos,F
    movlb 0x00
ram_bank = 0
    _mjump _lbl__28
_lbl__27
F1_000452 equ $ ; in [POLYGENCODE.BAS] else
F1_000453 equ $ ; in [POLYGENCODE.BAS] TX1REG=10
    movlb 0x02
ram_bank = 2
    movlw 10
    movwf TX1REG
F1_000454 equ $ ; in [POLYGENCODE.BAS] TXGapTimer=75
    movlb 0x0A
ram_bank = 10
    movlw 75
    movwf TXGapTimer
F1_000455 equ $ ; in [POLYGENCODE.BAS] Clear TXInProgress
    movlb 0x00
ram_bank = 0
    bcf _B__VR3,3
F1_000456 equ $ ; in [POLYGENCODE.BAS] Clear PIE3.4
    movlb 0x0E
ram_bank = 14
    bcf PIE3,4
F1_000458 equ $ ; in [POLYGENCODE.BAS] if WiFiPowerDownRequested=1 Then
    movlp ((_lbl__30) >> 8)
    movlb 0x00
ram_bank = 0
    btfss _B__VR3,4
    goto _lbl__30
F1_000459 equ $ ; in [POLYGENCODE.BAS] Clear WiFiPowerDownRequested
    bcf _B__VR3,4
F1_000460 equ $ ; in [POLYGENCODE.BAS] DelayUs 500
    movlw 1
    movwf PP0H
    movlw 244
    movlp ((__delay_us_wreg_) >> 8)
    call __delay_us_wreg_
ram_bank = 0
F1_000462 equ $ ; in [POLYGENCODE.BAS] Input SerialOutWiFi
    bsf TRISC,6
F1_000463 equ $ ; in [POLYGENCODE.BAS] Clear PIE3.5
    movlb 0x0E
ram_bank = 14
    bcf PIE3,5
F1_000466 equ $ ; in [POLYGENCODE.BAS] Clear RC1STA
    movlb 0x02
ram_bank = 2
    clrf RC1STA
F1_000467 equ $ ; in [POLYGENCODE.BAS] Clear TX1STA
    clrf TX1STA
F1_000468 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__30
    movlb 0x00
ram_bank = 0
F1_000469 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__28
F1_000470 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__24
_lbl__25
F1_000472 equ $ ; in [POLYGENCODE.BAS] if PIR3.4=1 And TXInProgress=0 Then
    movlw 0
    movlb 0x0E
ram_bank = 14
    btfsc PIR3,4
    movlw 1
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlw 1
    btfsc _B__VR3,3
    movlw 0
    andwf SP__P9_,F
    movlp ((_lbl__32) >> 8)
    btfsc STATUS,2
    goto _lbl__32
F1_000473 equ $ ; in [POLYGENCODE.BAS] PIE3.4=0
    movlb 0x0E
ram_bank = 14
    bcf PIE3,4
F1_000475 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__32
ram_bank = 0
F1_000477 equ $ ; in [POLYGENCODE.BAS] if PIR3.6=1 Then
    movlp ((_lbl__34) >> 8)
    movlb 0x0E
ram_bank = 14
    movf PIR3,W
    movlb 0x00
ram_bank = 0
    btfss WREG,6
    goto _lbl__34
F1_000478 equ $ ; in [POLYGENCODE.BAS] if SoundCmdPos<SoundCmdBufferLength Then
    movlw 10
    movlb 0x0B
ram_bank = 11
    subwf SoundCmdPos,W
    movlp ((_lbl__36) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__36
F1_000479 equ $ ; in [POLYGENCODE.BAS] TX2REG=SoundCmd[SoundCmdPos]
    movlb 0x0B
ram_bank = 11
    movf SoundCmdPos,W
    addlw 139
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x14
ram_bank = 20
    movwf TX2REG
F1_000480 equ $ ; in [POLYGENCODE.BAS] Inc SoundCmdPos
    movlb 0x0B
ram_bank = 11
    incf SoundCmdPos,F
F1_000481 equ $ ; in [POLYGENCODE.BAS] if SoundCmdPos=SoundCmdBufferLength Then
    movlw 10
    subwf SoundCmdPos,W
    movlp ((_lbl__38) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__38
F1_000483 equ $ ; in [POLYGENCODE.BAS] Clear PIE3.6
    movlb 0x0E
ram_bank = 14
    bcf PIE3,6
F1_000485 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__38
ram_bank = 0
F1_000486 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__36
F1_000487 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__34
F1_000489 equ $ ; in [POLYGENCODE.BAS] if PIR0.5=1 Then
    movlp ((_lbl__40) >> 8)
    movlb 0x0E
ram_bank = 14
    movf PIR0,W
    movlb 0x00
ram_bank = 0
    btfss WREG,5
    goto _lbl__40
F1_000490 equ $ ; in [POLYGENCODE.BAS] Clear PIR0.5
    movlb 0x0E
ram_bank = 14
    bcf PIR0,5
F1_000491 equ $ ; in [POLYGENCODE.BAS] if LEDFrame>0 Then Dec LEDFrame
    movlb 0x0D
ram_bank = 13
    movf LEDFrame,F
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    bra _cplb__2
    movlb 0x0D
ram_bank = 13
    movf LEDFrameH,F
    movlp ((_lbl__42) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__42
_cplb__2
ram_bank = 255
    movlw 1
    movlb 0x0D
ram_bank = 13
    subwf LEDFrame,F
    movlw 0
    subwfb LEDFrameH,F
_lbl__42
ram_bank = 0
F1_000492 equ $ ; in [POLYGENCODE.BAS] if FastTimer>0 Then Dec FastTimer
    movlb 0x0D
ram_bank = 13
    movf FastTimer,F
    movlp ((_lbl__44) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__44
    movlb 0x0D
ram_bank = 13
    decf FastTimer,F
_lbl__44
ram_bank = 0
F1_000493 equ $ ; in [POLYGENCODE.BAS] if DividerTimer>0 Then
    movlb 0x0D
ram_bank = 13
    movf DividerTimer,F
    movlp ((_lbl__46) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__46
F1_000494 equ $ ; in [POLYGENCODE.BAS] Dec DividerTimer
    movlb 0x0D
ram_bank = 13
    decf DividerTimer,F
    movlb 0x00
ram_bank = 0
    _mjump _lbl__47
_lbl__46
F1_000495 equ $ ; in [POLYGENCODE.BAS] else
F1_000496 equ $ ; in [POLYGENCODE.BAS] DividerTimer=5
    movlb 0x0D
ram_bank = 13
    movlw 5
    movwf DividerTimer
F1_000497 equ $ ; in [POLYGENCODE.BAS] if WiFiPowerOnTimeout>0 Then Dec WiFiPowerOnTimeout
    movlb 0x0A
ram_bank = 10
    movf WiFiPowerOnTimeout,F
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    bra _cplb__3
    movlb 0x0A
ram_bank = 10
    movf WiFiPowerOnTimeoutH,F
    movlp ((_lbl__49) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__49
_cplb__3
ram_bank = 255
    movlw 1
    movlb 0x0A
ram_bank = 10
    subwf WiFiPowerOnTimeout,F
    movlw 0
    subwfb WiFiPowerOnTimeoutH,F
_lbl__49
ram_bank = 0
F1_000498 equ $ ; in [POLYGENCODE.BAS] if SoundTimeout >0 Then Dec SoundTimeout
    movlb 0x0B
ram_bank = 11
    movf SoundTimeout,F
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    bra _cplb__4
    movlb 0x0B
ram_bank = 11
    movf SoundTimeoutH,F
    movlp ((_lbl__51) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__51
_cplb__4
ram_bank = 255
    movlw 1
    movlb 0x0B
ram_bank = 11
    subwf SoundTimeout,F
    movlw 0
    subwfb SoundTimeoutH,F
_lbl__51
ram_bank = 0
F1_000499 equ $ ; in [POLYGENCODE.BAS] if SoundPowerOnTimeout>0 Then Dec SoundPowerOnTimeout
    movlb 0x0B
ram_bank = 11
    movf SoundPowerOnTimeout,F
    movlp ((_lbl__53) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__53
    movlb 0x0B
ram_bank = 11
    decf SoundPowerOnTimeout,F
_lbl__53
ram_bank = 0
F1_000500 equ $ ; in [POLYGENCODE.BAS] if GeneralTimer>0 Then Dec GeneralTimer
    movlb 0x0D
ram_bank = 13
    movf GeneralTimer,F
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    bra _cplb__5
    movlb 0x0D
ram_bank = 13
    movf GeneralTimerH,F
    movlp ((_lbl__55) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__55
_cplb__5
ram_bank = 255
    movlw 1
    movlb 0x0D
ram_bank = 13
    subwf GeneralTimer,F
    movlw 0
    subwfb GeneralTimerH,F
_lbl__55
ram_bank = 0
F1_000501 equ $ ; in [POLYGENCODE.BAS] if TXGapTimer>0 Then Dec TXGapTimer
    movlb 0x0A
ram_bank = 10
    movf TXGapTimer,F
    movlp ((_lbl__57) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__57
    movlb 0x0A
ram_bank = 10
    decf TXGapTimer,F
_lbl__57
ram_bank = 0
F1_000502 equ $ ; in [POLYGENCODE.BAS] if EndWaitTime>0 Then Dec EndWaitTime
    movlb 0x0B
ram_bank = 11
    movf EndWaitTime,F
    movlp ((_lbl__59) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__59
    movlb 0x0B
ram_bank = 11
    decf EndWaitTime,F
_lbl__59
ram_bank = 0
F1_000503 equ $ ; in [POLYGENCODE.BAS] if TeamPickerTime>0 Then Dec TeamPickerTime
    movlb 0x0B
ram_bank = 11
    movf TeamPickerTime,F
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    bra _cplb__6
    movlb 0x0B
ram_bank = 11
    movf TeamPickerTimeH,F
    movlp ((_lbl__61) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__61
_cplb__6
ram_bank = 255
    movlw 1
    movlb 0x0B
ram_bank = 11
    subwf TeamPickerTime,F
    movlw 0
    subwfb TeamPickerTimeH,F
_lbl__61
ram_bank = 0
F1_000504 equ $ ; in [POLYGENCODE.BAS] if SoundStartDelay>0 Then Dec SoundStartDelay
    movlb 0x0B
ram_bank = 11
    movf SoundStartDelay,F
    movlp ((_lbl__63) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__63
    movlb 0x0B
ram_bank = 11
    decf SoundStartDelay,F
_lbl__63
ram_bank = 0
F1_000505 equ $ ; in [POLYGENCODE.BAS] if CaptureTimer>0 Then Dec CaptureTimer
    movlb 0x0D
ram_bank = 13
    movf CaptureTimer,F
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    bra _cplb__7
    movlb 0x0D
ram_bank = 13
    movf CaptureTimerH,F
    movlp ((_lbl__65) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__65
_cplb__7
ram_bank = 255
    movlw 1
    movlb 0x0D
ram_bank = 13
    subwf CaptureTimer,F
    movlw 0
    subwfb CaptureTimerH,F
_lbl__65
ram_bank = 0
F1_000506 equ $ ; in [POLYGENCODE.BAS] if SoundMinimumRun>0 Then
    movlb 0x0B
ram_bank = 11
    movf SoundMinimumRun,F
    movlp ((_lbl__67) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__67
F1_000507 equ $ ; in [POLYGENCODE.BAS] Dec SoundMinimumRun
    movlb 0x0B
ram_bank = 11
    decf SoundMinimumRun,F
F1_000508 equ $ ; in [POLYGENCODE.BAS] if SoundMinimumRun=0 Then
    movf SoundMinimumRun,F
    movlp ((_lbl__69) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__69
F1_000509 equ $ ; in [POLYGENCODE.BAS] Set NextSoundNow
    bsf _B__VR5,0
F1_000510 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__69
F1_000511 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__67
F1_000512 equ $ ; in [POLYGENCODE.BAS] if RX1Timeout>0 Then
    movlb 0x0A
ram_bank = 10
    movf RX1Timeout,F
    movlp ((_lbl__71) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__71
F1_000513 equ $ ; in [POLYGENCODE.BAS] Dec RX1Timeout
    movlb 0x0A
ram_bank = 10
    decf RX1Timeout,F
F1_000514 equ $ ; in [POLYGENCODE.BAS] if RX1Timeout=0 Then
    movf RX1Timeout,F
    movlp ((_lbl__73) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__73
F1_000515 equ $ ; in [POLYGENCODE.BAS] if RX1BufPos>0 Then
    movlb 0x05
ram_bank = 5
    movf RX1BufPos,F
    movlp ((_lbl__75) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__75
F1_000516 equ $ ; in [POLYGENCODE.BAS] RX1BufferActive[RX1BufPos] =0
    movlb 0x05
ram_bank = 5
    movf RX1BufPos,W
    addlw 3
    movwf FSR0L
    movlw 0x21
    clrf FSR0H
    addwfc FSR0H,F
    clrf INDF0
F1_000517 equ $ ; in [POLYGENCODE.BAS] Clear RX1BufPos
    clrf RX1BufPos
F1_000518 equ $ ; in [POLYGENCODE.BAS] RX1Buffer=RX1BufferActive
    movlw 33
    movwf FSR0LH
    movlw 104
    movwf FSR0L
    movlw 0x21
    movwf FSR1LH
    movlw 0x03
    movwf FSR1L
    movlb 0x00
ram_bank = 0
    movlw 100
    movwf PP0
_pblb__76
    movf INDF1,F
    btfsc STATUS,2
    bra _pblb__77
    moviw INDF1++
    movwi INDF0++
    decfsz PP0,F
    bra _pblb__76
_pblb__77
    clrf INDF0
F1_000519 equ $ ; in [POLYGENCODE.BAS] Set RX1CommandReceived
    bsf _B__VR1,3
F1_000520 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__75
F1_000521 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__73
F1_000522 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__71
F1_000523 equ $ ; in [POLYGENCODE.BAS] if RX2Timeout>0 Then
    movlb 0x0D
ram_bank = 13
    movf RX2Timeout,F
    movlp ((_lbl__79) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__79
F1_000524 equ $ ; in [POLYGENCODE.BAS] Dec RX2Timeout
    movlb 0x0D
ram_bank = 13
    decf RX2Timeout,F
F1_000525 equ $ ; in [POLYGENCODE.BAS] if RX2Timeout=0 Then
    movf RX2Timeout,F
    movlp ((_lbl__81) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__81
F1_000526 equ $ ; in [POLYGENCODE.BAS] if RX2BufPos>0 Then
    movlb 0x05
ram_bank = 5
    movf RX2BufPos,F
    movlp ((_lbl__83) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__83
F1_000527 equ $ ; in [POLYGENCODE.BAS] Clear RX2BufPos
    movlb 0x05
ram_bank = 5
    clrf RX2BufPos
F1_000528 equ $ ; in [POLYGENCODE.BAS] Set RX2CommandReceived
    movlb 0x00
ram_bank = 0
    bsf _B__VR1,4
F1_000529 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__83
F1_000530 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__81
F1_000531 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__79
F1_000532 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__47
F1_000533 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__40
F1_000535 equ $ ; in [POLYGENCODE.BAS] if PIR3.2=1 Then
    movlp ((_lbl__85) >> 8)
    movlb 0x0E
ram_bank = 14
    movf PIR3,W
    movlb 0x00
ram_bank = 0
    btfss WREG,2
    goto _lbl__85
F1_000536 equ $ ; in [POLYGENCODE.BAS] if ClockCount>0 Then
    movlb 0x0D
ram_bank = 13
    movf ClockCount,F
    movlp ((_lbl__87) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__87
F1_000537 equ $ ; in [POLYGENCODE.BAS] Clear PIR3.2
    movlb 0x0E
ram_bank = 14
    bcf PIR3,2
F1_000538 equ $ ; in [POLYGENCODE.BAS] Dec ClockCount
    movlb 0x0D
ram_bank = 13
    decf ClockCount,F
F1_000539 equ $ ; in [POLYGENCODE.BAS] if LEDActiveBuffer=0 Then
    movlp ((_lbl__89) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc _B__VR7,2
    goto _lbl__89
F1_000540 equ $ ; in [POLYGENCODE.BAS] SSP2BUF=LED1Data[ClockCount]
    movlb 0x0D
ram_bank = 13
    movf ClockCount,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x03
ram_bank = 3
    movwf SSP2BUF
    movlb 0x00
ram_bank = 0
    _mjump _lbl__90
_lbl__89
F1_000541 equ $ ; in [POLYGENCODE.BAS] else
F1_000542 equ $ ; in [POLYGENCODE.BAS] SSP2BUF=LED2Data[ClockCount]
    movlb 0x0D
ram_bank = 13
    movf ClockCount,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x03
ram_bank = 3
    movwf SSP2BUF
F1_000543 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__90
ram_bank = 0
F1_000544 equ $ ; in [POLYGENCODE.BAS] Clear SSP2STAT.0
    movlb 0x03
ram_bank = 3
    bcf SSP2STAT,0
    movlb 0x00
ram_bank = 0
    _mjump _lbl__91
_lbl__87
F1_000545 equ $ ; in [POLYGENCODE.BAS] else
F1_000546 equ $ ; in [POLYGENCODE.BAS] if LED1ByteCount>0 Then
    movlb 0x0D
ram_bank = 13
    movf LED1ByteCount,F
    movlp ((_lbl__93) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__93
F1_000547 equ $ ; in [POLYGENCODE.BAS] ClockCount=LED1ByteCount
    movlb 0x0D
ram_bank = 13
    movf LED1ByteCount,W
    movwf ClockCount
F1_000548 equ $ ; in [POLYGENCODE.BAS] Clear LED1ByteCount
    clrf LED1ByteCount
F1_000549 equ $ ; in [POLYGENCODE.BAS] Clear LEDActiveBuffer
    movlb 0x00
ram_bank = 0
    bcf _B__VR7,2
F1_000551 equ $ ; in [POLYGENCODE.BAS] if RA6PPS=1 Then
    movlw 1
    movlb 0x3E
ram_bank = 62
    subwf RA6PPS,W
    movlp ((_lbl__95) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__95
F1_000552 equ $ ; in [POLYGENCODE.BAS] While SSP2STAT.0=0
_lbl__96
    movlp ((_lbl__97) >> 8)
    movlb 0x03
ram_bank = 3
    movf SSP2STAT,W
    movlb 0x00
ram_bank = 0
    btfsc WREG,0
    goto _lbl__97
F1_000553 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__96
_lbl__97
F1_000554 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__95
F1_000556 equ $ ; in [POLYGENCODE.BAS] RA2PPS=1
    movlb 0x3E
ram_bank = 62
    movlw 1
    movwf RA2PPS
F1_000557 equ $ ; in [POLYGENCODE.BAS] RA6PPS=0
    clrf RA6PPS
F1_000558 equ $ ; in [POLYGENCODE.BAS] Set PIR3.2
    movlb 0x0E
ram_bank = 14
    bsf PIR3,2
    movlb 0x00
ram_bank = 0
    _mjump _lbl__92
F1_000559 equ $ ; in [POLYGENCODE.BAS] ElseIf LED2ByteCount>0 Then
_lbl__93
    movlb 0x0D
ram_bank = 13
    movf LED2ByteCount,F
    movlp ((_lbl__98) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__98
F1_000560 equ $ ; in [POLYGENCODE.BAS] ClockCount=LED2ByteCount
    movlb 0x0D
ram_bank = 13
    movf LED2ByteCount,W
    movwf ClockCount
F1_000561 equ $ ; in [POLYGENCODE.BAS] Clear LED2ByteCount
    clrf LED2ByteCount
F1_000562 equ $ ; in [POLYGENCODE.BAS] Set LEDActiveBuffer
    movlb 0x00
ram_bank = 0
    bsf _B__VR7,2
F1_000563 equ $ ; in [POLYGENCODE.BAS] if RA2PPS=1 Then
    movlw 1
    movlb 0x3E
ram_bank = 62
    subwf RA2PPS,W
    movlp ((_lbl__100) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__100
F1_000564 equ $ ; in [POLYGENCODE.BAS] While SSP2STAT.0=0
_lbl__101
    movlp ((_lbl__102) >> 8)
    movlb 0x03
ram_bank = 3
    movf SSP2STAT,W
    movlb 0x00
ram_bank = 0
    btfsc WREG,0
    goto _lbl__102
F1_000565 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__101
_lbl__102
F1_000566 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__100
F1_000567 equ $ ; in [POLYGENCODE.BAS] RA2PPS=0
    movlb 0x3E
ram_bank = 62
    clrf RA2PPS
F1_000568 equ $ ; in [POLYGENCODE.BAS] RA6PPS=1
    movlw 1
    movwf RA6PPS
F1_000569 equ $ ; in [POLYGENCODE.BAS] Set PIR3.2
    movlb 0x0E
ram_bank = 14
    bsf PIR3,2
    movlb 0x00
ram_bank = 0
    _mjump _lbl__103
_lbl__98
F1_000570 equ $ ; in [POLYGENCODE.BAS] else
F1_000571 equ $ ; in [POLYGENCODE.BAS] Clear PIR3.2
    movlb 0x0E
ram_bank = 14
    bcf PIR3,2
F1_000572 equ $ ; in [POLYGENCODE.BAS] Clear PIE3.2
    bcf PIE3,2
F1_000573 equ $ ; in [POLYGENCODE.BAS] RA2PPS=0
    movlb 0x3E
ram_bank = 62
    clrf RA2PPS
F1_000574 equ $ ; in [POLYGENCODE.BAS] RA6PPS=0
    clrf RA6PPS
F1_000575 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__103
ram_bank = 0
_lbl__92
F1_000576 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__91
F1_000577 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__85
F1_000580 equ $ ; in [POLYGENCODE.BAS] if RC1STA.1=1 Then
    movlp ((_lbl__105) >> 8)
    movlb 0x02
ram_bank = 2
    movf RC1STA,W
    movlb 0x00
ram_bank = 0
    btfss WREG,1
    goto _lbl__105
F1_000581 equ $ ; in [POLYGENCODE.BAS] Clear RC1STA.4
    movlb 0x02
ram_bank = 2
    bcf RC1STA,4
F1_000582 equ $ ; in [POLYGENCODE.BAS] Set RC1STA.4
    bsf RC1STA,4
F1_000583 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__105
ram_bank = 0
F1_000584 equ $ ; in [POLYGENCODE.BAS] if RC2STA.1=1 Then
    movlp ((_lbl__107) >> 8)
    movlb 0x14
ram_bank = 20
    movf RC2STA,W
    movlb 0x00
ram_bank = 0
    btfss WREG,1
    goto _lbl__107
F1_000585 equ $ ; in [POLYGENCODE.BAS] Clear RC2STA.4
    movlb 0x14
ram_bank = 20
    bcf RC2STA,4
F1_000586 equ $ ; in [POLYGENCODE.BAS] Set RC2STA.4
    bsf RC2STA,4
F1_000587 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__107
ram_bank = 0
F1_000591 equ $ ; in [POLYGENCODE.BAS] if IOCAF.0=1 Then
    movlp ((_lbl__109) >> 8)
    movlb 0x3E
ram_bank = 62
    movf IOCAF,W
    movlb 0x00
ram_bank = 0
    btfss WREG,0
    goto _lbl__109
F1_000592 equ $ ; in [POLYGENCODE.BAS] Clear IOCAF.0
    movlb 0x3E
ram_bank = 62
    bcf IOCAF,0
F1_000593 equ $ ; in [POLYGENCODE.BAS] if DisableTamperDetection=0 Then
    movlp ((_lbl__111) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc _B__VR5,4
    goto _lbl__111
F1_000594 equ $ ; in [POLYGENCODE.BAS] Set TamperLatch
    bsf _B__VR4,7
F1_000595 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__111
F1_000596 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__109
F1_000597 equ $ ; in [POLYGENCODE.BAS] Context Restore
    movlw 0xC4
    movwf FSR0L
    movlw 0x26
    movwf FSR0H
    moviw INDF0++
    movwf PBS_VAR0
    moviw INDF0++
    movwf PP0
    moviw INDF0++
    movwf PP0H
    movf INDF0,W
    movwf SP__P9_
    retfie
F1_000598 equ $ ; in [POLYGENCODE.BAS] return
    return
Main
F1_000605 equ $ ; in [POLYGENCODE.BAS] SSP1DATPPS=0x14
    movlb 0x3D
ram_bank = 61
    movlw 20
    movwf SSP1DATPPS
F1_000606 equ $ ; in [POLYGENCODE.BAS] SSP1CLKPPS=0x12
    movlw 18
    movwf SSP1CLKPPS
F1_000607 equ $ ; in [POLYGENCODE.BAS] RC2PPS=0x15
    movlb 0x3E
ram_bank = 62
    movlw 21
    movwf RC2PPS
F1_000608 equ $ ; in [POLYGENCODE.BAS] RC3PPS=0x16
    movlw 22
    movwf RC3PPS
F1_000611 equ $ ; in [POLYGENCODE.BAS] RB5PPS=0x11
    movlw 17
    movwf RB5PPS
F1_000612 equ $ ; in [POLYGENCODE.BAS] RX2DTPPS=0x0C
    movlb 0x3D
ram_bank = 61
    movlw 12
    movwf RX2DTPPS
F1_000615 equ $ ; in [POLYGENCODE.BAS] PinSet PowerControl
    movlb 0x00
ram_bank = 0
    bsf PORTB,1
F1_000628 equ $ ; in [POLYGENCODE.BAS] TRISC=%11010001
    movlw 209
    movwf TRISC
F1_000639 equ $ ; in [POLYGENCODE.BAS] TRISB=%10110101
    movlw 181
    movwf TRISB
F1_000651 equ $ ; in [POLYGENCODE.BAS] TRISA=%01110101
    movlw 117
    movwf TRISA
F1_000666 equ $ ; in [POLYGENCODE.BAS] Clear WIFIReset
    bcf LATA,3
F1_000672 equ $ ; in [POLYGENCODE.BAS] Clear DFRPower
    bcf LATB,3
F1_000683 equ $ ; in [POLYGENCODE.BAS] Clear NeoPixelPower1
    bcf LATA,1
F1_000684 equ $ ; in [POLYGENCODE.BAS] Clear NeoPixelPower2
    bcf LATA,7
F1_000731 equ $ ; in [POLYGENCODE.BAS] Clear RFIDShutdown
    bcf LATC,5
F1_000732 equ $ ; in [POLYGENCODE.BAS] SSP1CON1=%00000001
    movlb 0x03
ram_bank = 3
    movlw 1
    movwf SSP1CON1
F1_000733 equ $ ; in [POLYGENCODE.BAS] SSP1STAT.7=0
    bcf SSP1STAT,7
F1_000734 equ $ ; in [POLYGENCODE.BAS] SSP1STAT.6=1
    bsf SSP1STAT,6
F1_000735 equ $ ; in [POLYGENCODE.BAS] SSP1CON1.4=0
    bcf SSP1CON1,4
F1_000736 equ $ ; in [POLYGENCODE.BAS] Set SPIRFIDSelect
    movlb 0x00
ram_bank = 0
    bsf LATC,1
F1_000737 equ $ ; in [POLYGENCODE.BAS] Clear SSP1BUF
    movlb 0x03
ram_bank = 3
    clrf SSP1BUF
F1_000738 equ $ ; in [POLYGENCODE.BAS] Set SSP1CON1.5
    bsf SSP1CON1,5
F1_000740 equ $ ; in [POLYGENCODE.BAS] SoundLevel=12
    movlb 0x07
ram_bank = 7
    movlw 12
    movwf SoundLevel
F1_000742 equ $ ; in [POLYGENCODE.BAS] SoundCmdPos=10
    movlb 0x0B
ram_bank = 11
    movlw 10
    movwf SoundCmdPos
F1_000745 equ $ ; in [POLYGENCODE.BAS] Clear TMR0L
    clrf TMR0L
F1_000746 equ $ ; in [POLYGENCODE.BAS] Clear PIR0.5
    movlb 0x0E
ram_bank = 14
    bcf PIR0,5
F1_000747 equ $ ; in [POLYGENCODE.BAS] Set PIE0.5
    bsf PIE0,5
F1_000748 equ $ ; in [POLYGENCODE.BAS] TMR0H=156
    movlb 0x0B
ram_bank = 11
    movlw 156
    movwf TMR0H
F1_000749 equ $ ; in [POLYGENCODE.BAS] T0CON1=%01001000
    movlw 72
    movwf T0CON1
F1_000750 equ $ ; in [POLYGENCODE.BAS] T0CON0=%10000000
    movlw 128
    movwf T0CON0
F1_000755 equ $ ; in [POLYGENCODE.BAS] TeamColourHue[1] =40
    movlb 0x0D
ram_bank = 13
    clrf TeamColourHue#1H
    movlw 40
    movwf TeamColourHue#1
F1_000756 equ $ ; in [POLYGENCODE.BAS] TeamColourHue[2] =300
    movlw 1
    movwf TeamColourHue#2H
    movlw 44
    movwf TeamColourHue#2
F1_000758 equ $ ; in [POLYGENCODE.BAS] TeamColourHue[3] =798
    movlw 3
    movwf TeamColourHue#3H
    movlw 30
    movwf TeamColourHue#3
F1_000759 equ $ ; in [POLYGENCODE.BAS] TeamColourHue[4] =480
    movlw 1
    movwf TeamColourHue#4H
    movlw 224
    movwf TeamColourHue#4
F1_000760 equ $ ; in [POLYGENCODE.BAS] TotalTeams=4
    movlw 4
    movwf TotalTeams
F1_000761 equ $ ; in [POLYGENCODE.BAS] HSVs=255
    movlb 0x0E
ram_bank = 14
    movlw 255
    movwf HSVs
F1_000767 equ $ ; in [POLYGENCODE.BAS] IdleRFIDGap=5
    movlb 0x0D
ram_bank = 13
    movlw 5
    movwf IdleRFIDGap
F1_000768 equ $ ; in [POLYGENCODE.BAS] IdleAnimationDelay=4
    movlw 4
    movwf IdleAnimationDelay
F1_000769 equ $ ; in [POLYGENCODE.BAS] IdleDiagInterval=50
    clrf IdleDiagIntervalH
    movlw 50
    movwf IdleDiagInterval
F1_000770 equ $ ; in [POLYGENCODE.BAS] IdleAliveInterval=120
    clrf IdleAliveIntervalH
    movlw 120
    movwf IdleAliveInterval
F1_000773 equ $ ; in [POLYGENCODE.BAS] Set PIE0.4
    movlb 0x0E
ram_bank = 14
    bsf PIE0,4
F1_000774 equ $ ; in [POLYGENCODE.BAS] Set IOCAN.0
    movlb 0x3E
ram_bank = 62
    bsf IOCAN,0
F1_000777 equ $ ; in [POLYGENCODE.BAS] Set INTCON.7
    bsf INTCON,7
F1_000778 equ $ ; in [POLYGENCODE.BAS] Set INTCON.6
    bsf INTCON,6
F1_000780 equ $ ; in [POLYGENCODE.BAS] if TamperLatch=1 Then GoSub TamperDetected
    movlp ((_lbl__113) >> 8)
    movlb 0x00
ram_bank = 0
    btfss _B__VR4,7
    goto _lbl__113
    movlp ((TamperDetected) >> 8)
    call TamperDetected
ram_bank = 0
_lbl__113
F1_000785 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOnWiFi
    movlp ((PowerOnWiFi) >> 8)
    call PowerOnWiFi
ram_bank = 0
F1_000786 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOnSound
    movlp ((PowerOnSound) >> 8)
    call PowerOnSound
ram_bank = 0
F1_000789 equ $ ; in [POLYGENCODE.BAS] BootWiFiRetry=2
    movlb 0x0D
ram_bank = 13
    movlw 2
    movwf BootWiFiRetry
RetryPowerOnWifi
ram_bank = 0
F1_000792 equ $ ; in [POLYGENCODE.BAS] While WiFiPowerOnTimeout>0
_lbl__114
    movlb 0x0A
ram_bank = 10
    movf WiFiPowerOnTimeout,F
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    bra _cplb__8
    movlb 0x0A
ram_bank = 10
    movf WiFiPowerOnTimeoutH,F
    movlp ((_lbl__115) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__115
_cplb__8
ram_bank = 255
F1_000793 equ $ ; in [POLYGENCODE.BAS] if RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
    movlp ((_lbl__117) >> 8)
    movlb 0x00
ram_bank = 0
    btfss _B__VR1,3
    goto _lbl__117
    movlp ((ProcessWiFiMessage) >> 8)
    call ProcessWiFiMessage
ram_bank = 0
_lbl__117
F1_000794 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_000795 equ $ ; in [POLYGENCODE.BAS] if WiFiConnected=1 Then Break
    movlp ((_lbl__115) >> 8)
    btfsc _B__VR2,1
    goto _lbl__115
F1_000796 equ $ ; in [POLYGENCODE.BAS] if WifiConfigBad=1 Then Break
    movlp ((_lbl__115) >> 8)
    btfsc _B__VR3,1
    goto _lbl__115
F1_000797 equ $ ; in [POLYGENCODE.BAS] if TamperLatch=1 Then GoSub TamperDetected
    movlp ((_lbl__123) >> 8)
    btfss _B__VR4,7
    goto _lbl__123
    movlp ((TamperDetected) >> 8)
    call TamperDetected
ram_bank = 0
_lbl__123
F1_000798 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__114
_lbl__115
F1_000800 equ $ ; in [POLYGENCODE.BAS] GoSub GetBatteryVoltage
    movlp ((GetBatteryVoltage) >> 8)
    call GetBatteryVoltage
ram_bank = 0
F1_000801 equ $ ; in [POLYGENCODE.BAS] if BatteryVoltage<CritialBatteryThreshold Then
    movlw 1
    movlb 0x03
ram_bank = 3
    subwf BatteryVoltageH,W
    movlw 254
    btfsc STATUS,2
    subwf BatteryVoltage,W
    movlp ((_lbl__125) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__125
F1_000802 equ $ ; in [POLYGENCODE.BAS] GoSub SayBatteryVoltage
    movlp ((SayBatteryVoltage) >> 8)
    call SayBatteryVoltage
ram_bank = 0
F1_000803 equ $ ; in [POLYGENCODE.BAS] GoSub WaitForSound
    movlp ((WaitForSound) >> 8)
    call WaitForSound
ram_bank = 0
F1_000804 equ $ ; in [POLYGENCODE.BAS] GoSub FlatBattery
    movlp ((FlatBattery) >> 8)
    call FlatBattery
ram_bank = 0
F1_000805 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__125
F1_000807 equ $ ; in [POLYGENCODE.BAS] if WiFiConnected=0 And WifiConfigBad=0 Then
    movlw 1
    btfsc _B__VR2,1
    movlw 0
    movwf SP__P9_
    movlw 1
    btfsc _B__VR3,1
    movlw 0
    andwf SP__P9_,F
    movlp ((_lbl__127) >> 8)
    btfsc STATUS,2
    goto _lbl__127
F1_000808 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOffWiFi
    movlp ((PowerOffWiFi) >> 8)
    call PowerOffWiFi
ram_bank = 0
F1_000809 equ $ ; in [POLYGENCODE.BAS] DelayMs 500
    movlw 1
    movwf PP1H
    movlw 244
    movlp ((__delay_ms_wreg_) >> 8)
    call __delay_ms_wreg_
ram_bank = 0
F1_000810 equ $ ; in [POLYGENCODE.BAS] if RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
    movlp ((_lbl__129) >> 8)
    btfss _B__VR1,3
    goto _lbl__129
    movlp ((ProcessWiFiMessage) >> 8)
    call ProcessWiFiMessage
ram_bank = 0
_lbl__129
F1_000811 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOnWiFi
    movlp ((PowerOnWiFi) >> 8)
    call PowerOnWiFi
ram_bank = 0
F1_000812 equ $ ; in [POLYGENCODE.BAS] Dec BootWiFiRetry
    movlb 0x0D
ram_bank = 13
    decf BootWiFiRetry,F
F1_000813 equ $ ; in [POLYGENCODE.BAS] if BootWiFiRetry>0 Then
    movf BootWiFiRetry,F
    movlp ((_lbl__131) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__131
F1_000814 equ $ ; in [POLYGENCODE.BAS] goto RetryPowerOnWifi
    _mjump RetryPowerOnWifi
    _mjump _lbl__132
_lbl__131
F1_000815 equ $ ; in [POLYGENCODE.BAS] else
F1_000816 equ $ ; in [POLYGENCODE.BAS] SoundTemp=18
    movlb 0x0B
ram_bank = 11
    movlw 18
    movwf SoundTemp
F1_000817 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_000818 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_000819 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__132
F1_000820 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__127
F1_000822 equ $ ; in [POLYGENCODE.BAS] PeriodicDiags=DiagInterval
    movlb 0x03
ram_bank = 3
    movlw 50
    movwf PeriodicDiags
F1_000824 equ $ ; in [POLYGENCODE.BAS] RecentCapture=RecentCaptureValue
    movlb 0x07
ram_bank = 7
    movlw 6
    movwf RecentCapture
F1_000826 equ $ ; in [POLYGENCODE.BAS] if WiFiConnected=1 Then
    movlp ((_lbl__134) >> 8)
    movlb 0x00
ram_bank = 0
    btfss _B__VR2,1
    goto _lbl__134
F1_000828 equ $ ; in [POLYGENCODE.BAS] GoSub DoAlivePoll
    movlp ((DoAlivePoll) >> 8)
    call DoAlivePoll
ram_bank = 0
F1_000829 equ $ ; in [POLYGENCODE.BAS] GeneralTimer=200
    movlb 0x0D
ram_bank = 13
    clrf GeneralTimerH
    movlw 200
    movwf GeneralTimer
F1_000830 equ $ ; in [POLYGENCODE.BAS] While TXInProgress=1 And GeneralTimer>0
_lbl__135
    movlb 0x00
ram_bank = 0
    movlw 0
    btfsc _B__VR3,3
    movlw 1
    movwf SP__P9_
    movlb 0x0D
ram_bank = 13
    movf GeneralTimer,W
    iorwf GeneralTimerH,W
    movlp ((_cplb__9) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _cplb__9
_cplb__10
ram_bank = 255
    clrw
    btfss STATUS,2
_cplb__9
    movlw 1
    movlb 0x00
ram_bank = 0
    andwf SP__P9_,F
    movlp ((_lbl__136) >> 8)
    btfsc STATUS,2
    goto _lbl__136
F1_000831 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_000832 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__135
_lbl__136
F1_000834 equ $ ; in [POLYGENCODE.BAS] GeneralTimer=50
    movlb 0x0D
ram_bank = 13
    clrf GeneralTimerH
    movlw 50
    movwf GeneralTimer
F1_000835 equ $ ; in [POLYGENCODE.BAS] While GeneralTimer>0 And AliveAcknowledged=0
_lbl__137
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movf GeneralTimer,W
    iorwf GeneralTimerH,W
    movlp ((_cplb__11) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _cplb__11
_cplb__12
ram_bank = 255
    clrw
    btfss STATUS,2
_cplb__11
    movlw 1
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlw 1
    btfsc _B__VR3,2
    movlw 0
    andwf SP__P9_,F
    movlp ((_lbl__138) >> 8)
    btfsc STATUS,2
    goto _lbl__138
F1_000836 equ $ ; in [POLYGENCODE.BAS] if RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
    movlp ((_lbl__140) >> 8)
    btfss _B__VR1,3
    goto _lbl__140
    movlp ((ProcessWiFiMessage) >> 8)
    call ProcessWiFiMessage
ram_bank = 0
_lbl__140
F1_000837 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_000838 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__137
_lbl__138
F1_000840 equ $ ; in [POLYGENCODE.BAS] GameStatus=2
    movlb 0x07
ram_bank = 7
    movlw 2
    movwf GameStatus
F1_000842 equ $ ; in [POLYGENCODE.BAS] GoSub DoGameStatusQuery
    movlb 0x00
ram_bank = 0
    movlp ((DoGameStatusQuery) >> 8)
    call DoGameStatusQuery
ram_bank = 0
F1_000844 equ $ ; in [POLYGENCODE.BAS] GeneralTimer=200
    movlb 0x0D
ram_bank = 13
    clrf GeneralTimerH
    movlw 200
    movwf GeneralTimer
F1_000845 equ $ ; in [POLYGENCODE.BAS] While GeneralTimer>0
_lbl__141
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movf GeneralTimer,F
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    bra _cplb__13
    movlb 0x0D
ram_bank = 13
    movf GeneralTimerH,F
    movlp ((_lbl__142) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__142
_cplb__13
ram_bank = 255
F1_000846 equ $ ; in [POLYGENCODE.BAS] if RX1CommandReceived=1 Then
    movlp ((_lbl__144) >> 8)
    movlb 0x00
ram_bank = 0
    btfss _B__VR1,3
    goto _lbl__144
F1_000847 equ $ ; in [POLYGENCODE.BAS] GoSub ProcessWiFiMessage
    movlp ((ProcessWiFiMessage) >> 8)
    call ProcessWiFiMessage
ram_bank = 0
F1_000848 equ $ ; in [POLYGENCODE.BAS] if ReceivedGameStatus=1 Then Break
    movlp ((_lbl__142) >> 8)
    btfsc _B__VR4,4
    goto _lbl__142
F1_000849 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__144
F1_000850 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__141
_lbl__142
F1_000852 equ $ ; in [POLYGENCODE.BAS] GoSub DoOwnerStatusQuery
    movlp ((DoOwnerStatusQuery) >> 8)
    call DoOwnerStatusQuery
ram_bank = 0
F1_000854 equ $ ; in [POLYGENCODE.BAS] GeneralTimer=200
    movlb 0x0D
ram_bank = 13
    clrf GeneralTimerH
    movlw 200
    movwf GeneralTimer
F1_000855 equ $ ; in [POLYGENCODE.BAS] While GeneralTimer>0
_lbl__147
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movf GeneralTimer,F
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    bra _cplb__14
    movlb 0x0D
ram_bank = 13
    movf GeneralTimerH,F
    movlp ((_lbl__148) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__148
_cplb__14
ram_bank = 255
F1_000856 equ $ ; in [POLYGENCODE.BAS] if RX1CommandReceived=1 Then
    movlp ((_lbl__150) >> 8)
    movlb 0x00
ram_bank = 0
    btfss _B__VR1,3
    goto _lbl__150
F1_000857 equ $ ; in [POLYGENCODE.BAS] GoSub ProcessWiFiMessage
    movlp ((ProcessWiFiMessage) >> 8)
    call ProcessWiFiMessage
ram_bank = 0
F1_000858 equ $ ; in [POLYGENCODE.BAS] Break
    _mjump _lbl__148
F1_000859 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__150
F1_000860 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__147
_lbl__148
F1_000862 equ $ ; in [POLYGENCODE.BAS] if DiscCurrentStatus<4 Then
    movlw 4
    movlb 0x07
ram_bank = 7
    subwf DiscCurrentStatus,W
    movlp ((_lbl__152) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__152
F1_000863 equ $ ; in [POLYGENCODE.BAS] SoundTemp=42
    movlb 0x0B
ram_bank = 11
    movlw 42
    movwf SoundTemp
    movlb 0x00
ram_bank = 0
    _mjump _lbl__151
F1_000864 equ $ ; in [POLYGENCODE.BAS] ElseIf DiscCurrentStatus=6 Then
_lbl__152
    movlw 6
    movlb 0x07
ram_bank = 7
    subwf DiscCurrentStatus,W
    movlp ((_lbl__153) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__153
F1_000865 equ $ ; in [POLYGENCODE.BAS] SoundTemp=028
    movlb 0x0B
ram_bank = 11
    movlw 28
    movwf SoundTemp
    movlb 0x00
ram_bank = 0
    _mjump _lbl__154
_lbl__153
F1_000866 equ $ ; in [POLYGENCODE.BAS] else
F1_000867 equ $ ; in [POLYGENCODE.BAS] SoundTemp=030
    movlb 0x0B
ram_bank = 11
    movlw 30
    movwf SoundTemp
F1_000868 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_000869 equ $ ; in [POLYGENCODE.BAS] SoundTemp=DiscCurrentStatus
    movlb 0x07
ram_bank = 7
    movf DiscCurrentStatus,W
    movlb 0x0B
ram_bank = 11
    movwf SoundTemp
F1_000870 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__154
    movlb 0x00
ram_bank = 0
_lbl__151
F1_000871 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
    _mjump _lbl__155
_lbl__134
F1_000872 equ $ ; in [POLYGENCODE.BAS] else
F1_000873 equ $ ; in [POLYGENCODE.BAS] if WifiConfigBad=1 Then
    movlp ((_lbl__157) >> 8)
    btfss _B__VR3,1
    goto _lbl__157
F1_000874 equ $ ; in [POLYGENCODE.BAS] SoundTemp=035
    movlb 0x0B
ram_bank = 11
    movlw 35
    movwf SoundTemp
F1_000875 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_000876 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__157
F1_000877 equ $ ; in [POLYGENCODE.BAS] if WifiConfigValid=1 Then
    movlp ((_lbl__159) >> 8)
    btfss _B__VR3,0
    goto _lbl__159
F1_000878 equ $ ; in [POLYGENCODE.BAS] SoundTemp=038
    movlb 0x0B
ram_bank = 11
    movlw 38
    movwf SoundTemp
F1_000879 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_000880 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__159
F1_000881 equ $ ; in [POLYGENCODE.BAS] if WiFiFailedToJoinSSID=1 Then
    movlp ((_lbl__161) >> 8)
    btfss _B__VR4,1
    goto _lbl__161
F1_000882 equ $ ; in [POLYGENCODE.BAS] SoundTemp=029
    movlb 0x0B
ram_bank = 11
    movlw 29
    movwf SoundTemp
F1_000883 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_000884 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__161
F1_000885 equ $ ; in [POLYGENCODE.BAS] if  WiFiMQTTFailed=1 Then
    movlp ((_lbl__163) >> 8)
    btfss _B__VR2,2
    goto _lbl__163
F1_000886 equ $ ; in [POLYGENCODE.BAS] SoundTemp=26
    movlb 0x0B
ram_bank = 11
    movlw 26
    movwf SoundTemp
F1_000887 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_000888 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__163
F1_000889 equ $ ; in [POLYGENCODE.BAS] if WiFiTimeFailed=1 Then
    movlp ((_lbl__165) >> 8)
    btfss _B__VR2,3
    goto _lbl__165
F1_000890 equ $ ; in [POLYGENCODE.BAS] SoundTemp=25
    movlb 0x0B
ram_bank = 11
    movlw 25
    movwf SoundTemp
F1_000891 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_000892 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__165
F1_000893 equ $ ; in [POLYGENCODE.BAS] GeneralTimer=50
    movlb 0x0D
ram_bank = 13
    clrf GeneralTimerH
    movlw 50
    movwf GeneralTimer
F1_000894 equ $ ; in [POLYGENCODE.BAS] While GeneralTimer>0
_lbl__166
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movf GeneralTimer,F
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    bra _cplb__15
    movlb 0x0D
ram_bank = 13
    movf GeneralTimerH,F
    movlp ((_lbl__167) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__167
_cplb__15
ram_bank = 255
F1_000895 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlb 0x00
ram_bank = 0
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_000896 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__166
_lbl__167
F1_000897 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__155
F1_000900 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOffWiFi
    movlp ((PowerOffWiFi) >> 8)
    call PowerOffWiFi
ram_bank = 0
F1_000901 equ $ ; in [POLYGENCODE.BAS] GoSub WaitForSound
    movlp ((WaitForSound) >> 8)
    call WaitForSound
ram_bank = 0
F1_000909 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOffSound
    movlp ((PowerOffSound) >> 8)
    call PowerOffSound
ram_bank = 0
F1_000911 equ $ ; in [POLYGENCODE.BAS] Clear NextPoll
    movlb 0x07
ram_bank = 7
    clrf NextPollH
    clrf NextPoll
F1_000912 equ $ ; in [POLYGENCODE.BAS] GoSub IdleCentreUpdate
    movlb 0x00
ram_bank = 0
    movlp ((IdleCentreUpdate) >> 8)
    call IdleCentreUpdate
ram_bank = 0
F1_000917 equ $ ; in [POLYGENCODE.BAS] PeriodicDiags=IdleDiagInterval
    movlb 0x0D
ram_bank = 13
    movf IdleDiagInterval,W
    movlb 0x03
ram_bank = 3
    movwf PeriodicDiags
F1_000918 equ $ ; in [POLYGENCODE.BAS] NextPoll=IdleAliveInterval
    movlb 0x0D
ram_bank = 13
    movf IdleAliveIntervalH,W
    movlb 0x07
ram_bank = 7
    movwf NextPollH
    movlb 0x0D
ram_bank = 13
    movf IdleAliveInterval,W
    movlb 0x07
ram_bank = 7
    movwf NextPoll
DetectionLoop
ram_bank = 0
F1_000921 equ $ ; in [POLYGENCODE.BAS] Clear PaymentCardType
    movlb 0x03
ram_bank = 3
    clrf PaymentCardType
F1_000922 equ $ ; in [POLYGENCODE.BAS] GoSub DetectRFID
    movlb 0x00
ram_bank = 0
    movlp ((DetectRFID) >> 8)
    call DetectRFID
ram_bank = 0
F1_000923 equ $ ; in [POLYGENCODE.BAS] if CommandMatched=1 Then
    movlp ((_lbl__169) >> 8)
    btfss _B__VR1,7
    goto _lbl__169
F1_000925 equ $ ; in [POLYGENCODE.BAS] GoSub CommandMode
    movlp ((CommandMode) >> 8)
    call CommandMode
ram_bank = 0
F1_000926 equ $ ; in [POLYGENCODE.BAS] Clear CommandMatched
    bcf _B__VR1,7
    _mjump _lbl__168
F1_000927 equ $ ; in [POLYGENCODE.BAS] ElseIf DiscCurrentStatus=6 Then
_lbl__169
    movlw 6
    movlb 0x07
ram_bank = 7
    subwf DiscCurrentStatus,W
    movlp ((_lbl__170) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__170
F1_000928 equ $ ; in [POLYGENCODE.BAS] if DetectResult=1 Then
    movlw 1
    movlb 0x07
ram_bank = 7
    subwf DetectResult,W
    movlp ((_lbl__172) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__172
F1_000929 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOnSoundAndWait
    movlp ((PowerOnSoundAndWait) >> 8)
    call PowerOnSoundAndWait
ram_bank = 0
F1_000934 equ $ ; in [POLYGENCODE.BAS] SoundTemp=028
    movlb 0x0B
ram_bank = 11
    movlw 28
    movwf SoundTemp
F1_000935 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_000936 equ $ ; in [POLYGENCODE.BAS] GoSub WaitForSound
    movlp ((WaitForSound) >> 8)
    call WaitForSound
ram_bank = 0
F1_000937 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOffSound
    movlp ((PowerOffSound) >> 8)
    call PowerOffSound
ram_bank = 0
F1_000938 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__172
    _mjump _lbl__173
_lbl__170
F1_000939 equ $ ; in [POLYGENCODE.BAS] else
F1_000940 equ $ ; in [POLYGENCODE.BAS] Select GameStatus
F1_000941 equ $ ; in [POLYGENCODE.BAS] Case 1
    movlw 1
    movlb 0x07
ram_bank = 7
    subwf GameStatus,W
    movlp ((_lbl__175) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__175
F1_000942 equ $ ; in [POLYGENCODE.BAS] if DetectResult=1 Then
    movlw 1
    movlb 0x07
ram_bank = 7
    subwf DetectResult,W
    movlp ((_lbl__178) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__178
F1_000943 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOnSound
    movlp ((PowerOnSound) >> 8)
    call PowerOnSound
ram_bank = 0
F1_000944 equ $ ; in [POLYGENCODE.BAS] GeneralTimer=600
    movlb 0x0D
ram_bank = 13
    movlw 2
    movwf GeneralTimerH
    movlw 88
    movwf GeneralTimer
F1_000945 equ $ ; in [POLYGENCODE.BAS] While SoundStatus<4 And GeneralTimer>0
_lbl__179
ram_bank = 0
    movlw 4
    movlb 0x0D
ram_bank = 13
    subwf SoundStatus,W
    movlw 1
    btfsc STATUS,0
    movlw 0
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlb 0x0D
ram_bank = 13
    movf GeneralTimer,W
    iorwf GeneralTimerH,W
    movlp ((_cplb__16) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _cplb__16
_cplb__17
ram_bank = 255
    clrw
    btfss STATUS,2
_cplb__16
    movlw 1
    movlb 0x00
ram_bank = 0
    andwf SP__P9_,F
    movlp ((_lbl__180) >> 8)
    btfsc STATUS,2
    goto _lbl__180
F1_000946 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_000947 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__179
_lbl__180
F1_000948 equ $ ; in [POLYGENCODE.BAS] SoundTemp=125
    movlb 0x0B
ram_bank = 11
    movlw 125
    movwf SoundTemp
F1_000949 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_000950 equ $ ; in [POLYGENCODE.BAS] GoSub WaitForSound
    movlp ((WaitForSound) >> 8)
    call WaitForSound
ram_bank = 0
F1_000951 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOffSound
    movlp ((PowerOffSound) >> 8)
    call PowerOffSound
ram_bank = 0
F1_000952 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__178
    _mjump _lbl__174
_lbl__175
F1_000953 equ $ ; in [POLYGENCODE.BAS] Case 2
    movlw 2
    movlb 0x07
ram_bank = 7
    subwf GameStatus,W
    movlp ((_lbl__182) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__182
F1_000954 equ $ ; in [POLYGENCODE.BAS] if DetectResult=1 Then
    movlw 1
    movlb 0x07
ram_bank = 7
    subwf DetectResult,W
    movlp ((_lbl__184) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__184
F1_000955 equ $ ; in [POLYGENCODE.BAS] GoSub TokenPresented
    movlp ((TokenPresented) >> 8)
    call TokenPresented
ram_bank = 0
F1_000956 equ $ ; in [POLYGENCODE.BAS] GoSub IdleCentreUpdate
    movlp ((IdleCentreUpdate) >> 8)
    call IdleCentreUpdate
ram_bank = 0
F1_000957 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__184
F1_000958 equ $ ; in [POLYGENCODE.BAS] if AnimationCycles>0 Then
    movlb 0x0D
ram_bank = 13
    movf AnimationCycles,F
    movlp ((_lbl__186) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__186
F1_000959 equ $ ; in [POLYGENCODE.BAS] Dec AnimationCycles
    movlb 0x0D
ram_bank = 13
    decf AnimationCycles,F
    movlb 0x00
ram_bank = 0
    _mjump _lbl__187
_lbl__186
F1_000960 equ $ ; in [POLYGENCODE.BAS] else
F1_000961 equ $ ; in [POLYGENCODE.BAS] AnimationCycles=IdleAnimationDelay
    movlb 0x0D
ram_bank = 13
    movf IdleAnimationDelay,W
    movwf AnimationCycles
F1_000962 equ $ ; in [POLYGENCODE.BAS] GoSub PlayOwnerAnimation
    movlb 0x00
ram_bank = 0
    movlp ((PlayOwnerAnimation) >> 8)
    call PlayOwnerAnimation
ram_bank = 0
F1_000963 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__187
    _mjump _lbl__174
_lbl__182
F1_000964 equ $ ; in [POLYGENCODE.BAS] Case 3
    movlw 3
    movlb 0x07
ram_bank = 7
    subwf GameStatus,W
    movlp ((_lbl__189) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__189
F1_000965 equ $ ; in [POLYGENCODE.BAS] if DetectResult=1 Then
    movlw 1
    movlb 0x07
ram_bank = 7
    subwf DetectResult,W
    movlp ((_lbl__191) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__191
F1_000966 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOnSound
    movlp ((PowerOnSound) >> 8)
    call PowerOnSound
ram_bank = 0
F1_000967 equ $ ; in [POLYGENCODE.BAS] GeneralTimer=600
    movlb 0x0D
ram_bank = 13
    movlw 2
    movwf GeneralTimerH
    movlw 88
    movwf GeneralTimer
F1_000968 equ $ ; in [POLYGENCODE.BAS] While SoundStatus<4 And GeneralTimer>0
_lbl__192
ram_bank = 0
    movlw 4
    movlb 0x0D
ram_bank = 13
    subwf SoundStatus,W
    movlw 1
    btfsc STATUS,0
    movlw 0
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlb 0x0D
ram_bank = 13
    movf GeneralTimer,W
    iorwf GeneralTimerH,W
    movlp ((_cplb__18) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _cplb__18
_cplb__19
ram_bank = 255
    clrw
    btfss STATUS,2
_cplb__18
    movlw 1
    movlb 0x00
ram_bank = 0
    andwf SP__P9_,F
    movlp ((_lbl__193) >> 8)
    btfsc STATUS,2
    goto _lbl__193
F1_000969 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_000970 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__192
_lbl__193
F1_000971 equ $ ; in [POLYGENCODE.BAS] SoundTemp=126
    movlb 0x0B
ram_bank = 11
    movlw 126
    movwf SoundTemp
F1_000972 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_000973 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_000974 equ $ ; in [POLYGENCODE.BAS] SoundTemp=100+WinningTeam+TeamSoundOffset[WinningTeam]
    movlw 100
    movlb 0x07
ram_bank = 7
    addwf WinningTeam,W
    movlb 0x00
ram_bank = 0
    clrf PP7H
    movwf PP7
    rlf PP7H,F
    movlb 0x07
ram_bank = 7
    movf WinningTeam,W
    addlw 55
    movwf FSR0L
    movlw 0x24
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR0
    movf PBS_VAR0,W
    addwf PP7,W
    movlb 0x0B
ram_bank = 11
    movwf SoundTemp
F1_000975 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_000976 equ $ ; in [POLYGENCODE.BAS] GoSub WaitForSound
    movlp ((WaitForSound) >> 8)
    call WaitForSound
ram_bank = 0
F1_000977 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOffSound
    movlp ((PowerOffSound) >> 8)
    call PowerOffSound
ram_bank = 0
F1_000978 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__191
F1_000979 equ $ ; in [POLYGENCODE.BAS] RecentCapture=RecentCaptureValue
    movlb 0x07
ram_bank = 7
    movlw 6
    movwf RecentCapture
F1_000980 equ $ ; in [POLYGENCODE.BAS] GoSub PlayWinnerAnimation
    movlb 0x00
ram_bank = 0
    movlp ((PlayWinnerAnimation) >> 8)
    call PlayWinnerAnimation
ram_bank = 0
F1_000981 equ $ ; in [POLYGENCODE.BAS] EndSelect
_lbl__189
_lbl__174
F1_000982 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__173
_lbl__168
F1_000984 equ $ ; in [POLYGENCODE.BAS] if GameStatus<3 Then
    movlw 3
    movlb 0x07
ram_bank = 7
    subwf GameStatus,W
    movlp ((_lbl__195) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__195
F1_000985 equ $ ; in [POLYGENCODE.BAS] Select IdleRFIDGap
F1_000986 equ $ ; in [POLYGENCODE.BAS] Case 1
    movlw 1
    movlb 0x0D
ram_bank = 13
    subwf IdleRFIDGap,W
    movlp ((_lbl__197) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__197
F1_000987 equ $ ; in [POLYGENCODE.BAS] GoSub Snooze128ms
    movlp ((Snooze128ms) >> 8)
    call Snooze128ms
ram_bank = 0
    _mjump _lbl__196
_lbl__197
F1_000988 equ $ ; in [POLYGENCODE.BAS] Case 2
    movlw 2
    movlb 0x0D
ram_bank = 13
    subwf IdleRFIDGap,W
    movlp ((_lbl__200) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__200
F1_000989 equ $ ; in [POLYGENCODE.BAS] GoSub Snooze256ms
    movlp ((Snooze256ms) >> 8)
    call Snooze256ms
ram_bank = 0
    _mjump _lbl__196
_lbl__200
F1_000990 equ $ ; in [POLYGENCODE.BAS] Case 3
    movlw 3
    movlb 0x0D
ram_bank = 13
    subwf IdleRFIDGap,W
    movlp ((_lbl__202) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__202
F1_000991 equ $ ; in [POLYGENCODE.BAS] GoSub Snooze512ms
    movlp ((Snooze512ms) >> 8)
    call Snooze512ms
ram_bank = 0
    _mjump _lbl__196
_lbl__202
F1_000992 equ $ ; in [POLYGENCODE.BAS] Case 4
    movlw 4
    movlb 0x0D
ram_bank = 13
    subwf IdleRFIDGap,W
    movlp ((_lbl__204) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__204
F1_000993 equ $ ; in [POLYGENCODE.BAS] GoSub Snooze512ms
    movlp ((Snooze512ms) >> 8)
    call Snooze512ms
ram_bank = 0
F1_000994 equ $ ; in [POLYGENCODE.BAS] GoSub Snooze256ms
    movlp ((Snooze256ms) >> 8)
    call Snooze256ms
ram_bank = 0
    _mjump _lbl__196
_lbl__204
F1_000995 equ $ ; in [POLYGENCODE.BAS] Case 5
    movlw 5
    movlb 0x0D
ram_bank = 13
    subwf IdleRFIDGap,W
    movlp ((_lbl__206) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__206
F1_000996 equ $ ; in [POLYGENCODE.BAS] GoSub Snooze1s
    movlp ((Snooze1s) >> 8)
    call Snooze1s
ram_bank = 0
    _mjump _lbl__196
_lbl__206
F1_000997 equ $ ; in [POLYGENCODE.BAS] Case 6
    movlw 6
    movlb 0x0D
ram_bank = 13
    subwf IdleRFIDGap,W
    movlp ((_lbl__208) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__208
F1_000998 equ $ ; in [POLYGENCODE.BAS] GoSub Snooze1s
    movlp ((Snooze1s) >> 8)
    call Snooze1s
ram_bank = 0
F1_000999 equ $ ; in [POLYGENCODE.BAS] GoSub Snooze256ms
    movlp ((Snooze256ms) >> 8)
    call Snooze256ms
ram_bank = 0
    _mjump _lbl__196
_lbl__208
F1_001000 equ $ ; in [POLYGENCODE.BAS] Case 7
    movlw 7
    movlb 0x0D
ram_bank = 13
    subwf IdleRFIDGap,W
    movlp ((_lbl__210) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__210
F1_001001 equ $ ; in [POLYGENCODE.BAS] GoSub Snooze1s
    movlp ((Snooze1s) >> 8)
    call Snooze1s
ram_bank = 0
F1_001002 equ $ ; in [POLYGENCODE.BAS] GoSub Snooze512ms
    movlp ((Snooze512ms) >> 8)
    call Snooze512ms
ram_bank = 0
    _mjump _lbl__196
_lbl__210
F1_001003 equ $ ; in [POLYGENCODE.BAS] Case 8
    movlw 8
    movlb 0x0D
ram_bank = 13
    subwf IdleRFIDGap,W
    movlp ((_lbl__212) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__212
F1_001004 equ $ ; in [POLYGENCODE.BAS] GoSub Snooze1s
    movlp ((Snooze1s) >> 8)
    call Snooze1s
ram_bank = 0
F1_001005 equ $ ; in [POLYGENCODE.BAS] GoSub Snooze512ms
    movlp ((Snooze512ms) >> 8)
    call Snooze512ms
ram_bank = 0
F1_001006 equ $ ; in [POLYGENCODE.BAS] GoSub Snooze256ms
    movlp ((Snooze256ms) >> 8)
    call Snooze256ms
ram_bank = 0
    _mjump _lbl__196
_lbl__212
F1_001007 equ $ ; in [POLYGENCODE.BAS] Case 9
    movlw 9
    movlb 0x0D
ram_bank = 13
    subwf IdleRFIDGap,W
    movlp ((_lbl__214) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__214
F1_001008 equ $ ; in [POLYGENCODE.BAS] GoSub Snooze2s
    movlp ((Snooze2s) >> 8)
    call Snooze2s
ram_bank = 0
F1_001009 equ $ ; in [POLYGENCODE.BAS] EndSelect
_lbl__214
_lbl__196
F1_001011 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__195
F1_001012 equ $ ; in [POLYGENCODE.BAS] if TamperLatch=1 Then GoSub TamperDetected
    movlp ((_lbl__216) >> 8)
    btfss _B__VR4,7
    goto _lbl__216
    movlp ((TamperDetected) >> 8)
    call TamperDetected
ram_bank = 0
_lbl__216
F1_001014 equ $ ; in [POLYGENCODE.BAS] if RecentCapture>0 Then
    movlb 0x07
ram_bank = 7
    movf RecentCapture,F
    movlp ((_lbl__218) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__218
F1_001015 equ $ ; in [POLYGENCODE.BAS] Dec RecentCapture
    movlb 0x07
ram_bank = 7
    decf RecentCapture,F
F1_001016 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__218
ram_bank = 0
F1_001018 equ $ ; in [POLYGENCODE.BAS] if EarlyCheckin>0 Then
    movlb 0x0D
ram_bank = 13
    movf EarlyCheckin,F
    movlp ((_lbl__220) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__220
F1_001019 equ $ ; in [POLYGENCODE.BAS] Dec EarlyCheckin
    movlb 0x0D
ram_bank = 13
    decf EarlyCheckin,F
F1_001020 equ $ ; in [POLYGENCODE.BAS] if EarlyCheckin=0 Then
    movf EarlyCheckin,F
    movlp ((_lbl__222) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__222
F1_001021 equ $ ; in [POLYGENCODE.BAS] Clear NextPoll
    movlb 0x07
ram_bank = 7
    clrf NextPollH
    clrf NextPoll
F1_001022 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__222
ram_bank = 0
F1_001023 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__220
F1_001024 equ $ ; in [POLYGENCODE.BAS] if NextPoll=0 And WifiConfigBad=0 Then
    movlb 0x07
ram_bank = 7
    movf NextPollH,W
    iorwf NextPoll,W
    movlp ((_cplb__20) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _cplb__20
    clrw
    btfss STATUS,2
_cplb__20
    movlw 1
    movwf SP__P9_
    movlw 1
    btfsc _B__VR3,1
    movlw 0
    andwf SP__P9_,F
    movlp ((_lbl__224) >> 8)
    btfsc STATUS,2
    goto _lbl__224
F1_001025 equ $ ; in [POLYGENCODE.BAS] if PeriodicDiags=0 Then
    movlb 0x03
ram_bank = 3
    movf PeriodicDiags,F
    movlp ((_lbl__226) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__226
F1_001026 equ $ ; in [POLYGENCODE.BAS] Set DiagSilent
    bsf _B__VR5,6
F1_001027 equ $ ; in [POLYGENCODE.BAS] GoSub SelfTest
    movlp ((SelfTest) >> 8)
    call SelfTest
ram_bank = 0
F1_001028 equ $ ; in [POLYGENCODE.BAS] PeriodicDiags=IdleDiagInterval
    movlb 0x0D
ram_bank = 13
    movf IdleDiagInterval,W
    movlb 0x03
ram_bank = 3
    movwf PeriodicDiags
    movlb 0x00
ram_bank = 0
    _mjump _lbl__227
_lbl__226
F1_001029 equ $ ; in [POLYGENCODE.BAS] else
F1_001030 equ $ ; in [POLYGENCODE.BAS] Dec PeriodicDiags
    movlb 0x03
ram_bank = 3
    decf PeriodicDiags,F
F1_001031 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__227
ram_bank = 0
F1_001032 equ $ ; in [POLYGENCODE.BAS] NextPoll=IdleAliveInterval
    movlb 0x0D
ram_bank = 13
    movf IdleAliveIntervalH,W
    movlb 0x07
ram_bank = 7
    movwf NextPollH
    movlb 0x0D
ram_bank = 13
    movf IdleAliveInterval,W
    movlb 0x07
ram_bank = 7
    movwf NextPoll
F1_001034 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOnWiFi
    movlb 0x00
ram_bank = 0
    movlp ((PowerOnWiFi) >> 8)
    call PowerOnWiFi
ram_bank = 0
F1_001035 equ $ ; in [POLYGENCODE.BAS] While WiFiPowerOnTimeout>0 And WiFiConnected=0
_lbl__228
    movlb 0x0A
ram_bank = 10
    movf WiFiPowerOnTimeout,W
    iorwf WiFiPowerOnTimeoutH,W
    movlp ((_cplb__21) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _cplb__21
_cplb__22
ram_bank = 255
    clrw
    btfss STATUS,2
_cplb__21
    movlw 1
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlw 1
    btfsc _B__VR2,1
    movlw 0
    andwf SP__P9_,F
    movlp ((_lbl__229) >> 8)
    btfsc STATUS,2
    goto _lbl__229
F1_001036 equ $ ; in [POLYGENCODE.BAS] if RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
    movlp ((_lbl__231) >> 8)
    btfss _B__VR1,3
    goto _lbl__231
    movlp ((ProcessWiFiMessage) >> 8)
    call ProcessWiFiMessage
ram_bank = 0
_lbl__231
F1_001037 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__228
_lbl__229
F1_001038 equ $ ; in [POLYGENCODE.BAS] if WiFiConnected=1 Then
    movlp ((_lbl__233) >> 8)
    btfss _B__VR2,1
    goto _lbl__233
F1_001039 equ $ ; in [POLYGENCODE.BAS] Clear ReceivedGameStatus
    bcf _B__VR4,4
F1_001040 equ $ ; in [POLYGENCODE.BAS] Clear AliveAcknowledged
    bcf _B__VR3,2
F1_001041 equ $ ; in [POLYGENCODE.BAS] GeneralTimer=200
    movlb 0x0D
ram_bank = 13
    clrf GeneralTimerH
    movlw 200
    movwf GeneralTimer
F1_001042 equ $ ; in [POLYGENCODE.BAS] if OwnerStatusReceived=0 Then GoSub DoOwnerStatusQuery
    movlp ((_lbl__235) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc _B__VR4,3
    goto _lbl__235
    movlp ((DoOwnerStatusQuery) >> 8)
    call DoOwnerStatusQuery
ram_bank = 0
_lbl__235
F1_001044 equ $ ; in [POLYGENCODE.BAS] GoSub DoAlivePoll
    movlp ((DoAlivePoll) >> 8)
    call DoAlivePoll
ram_bank = 0
F1_001045 equ $ ; in [POLYGENCODE.BAS] While GeneralTimer>0
_lbl__236
    movlb 0x0D
ram_bank = 13
    movf GeneralTimer,F
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    bra _cplb__23
    movlb 0x0D
ram_bank = 13
    movf GeneralTimerH,F
    movlp ((_lbl__237) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__237
_cplb__23
ram_bank = 255
F1_001046 equ $ ; in [POLYGENCODE.BAS] if RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
    movlp ((_lbl__239) >> 8)
    movlb 0x00
ram_bank = 0
    btfss _B__VR1,3
    goto _lbl__239
    movlp ((ProcessWiFiMessage) >> 8)
    call ProcessWiFiMessage
ram_bank = 0
_lbl__239
F1_001047 equ $ ; in [POLYGENCODE.BAS] if ReceivedGameStatus=1 Or AliveAcknowledged=1 Then Break
    movlw 0
    btfsc _B__VR4,4
    movlw 1
    movwf SP__P9_
    movlw 0
    btfsc _B__VR3,2
    movlw 1
    iorwf SP__P9_,F
    movlp ((_lbl__241) >> 8)
    btfsc STATUS,2
    goto _lbl__241
    _mjump _lbl__237
_lbl__241
F1_001048 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__236
_lbl__237
F1_001049 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__233
F1_001050 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOffWiFi
    movlp ((PowerOffWiFi) >> 8)
    call PowerOffWiFi
ram_bank = 0
    _mjump _lbl__242
_lbl__224
F1_001051 equ $ ; in [POLYGENCODE.BAS] else
F1_001052 equ $ ; in [POLYGENCODE.BAS] Dec NextPoll
    movlw 1
    movlb 0x07
ram_bank = 7
    subwf NextPoll,F
    movlw 0
    subwfb NextPollH,F
F1_001053 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__242
    movlb 0x00
ram_bank = 0
F1_001054 equ $ ; in [POLYGENCODE.BAS] GoSub IdleCentreUpdate
    movlp ((IdleCentreUpdate) >> 8)
    call IdleCentreUpdate
ram_bank = 0
F1_001055 equ $ ; in [POLYGENCODE.BAS] goto DetectionLoop
    _mjump DetectionLoop
DoGameStatusQuery
F1_001058 equ $ ; in [POLYGENCODE.BAS] WiFiCMD[1] ="S"
    movlb 0x07
ram_bank = 7
    movlw 115
    movwf WiFiCMD#1
F1_001059 equ $ ; in [POLYGENCODE.BAS] goto GeneralStatusQuery
    movlb 0x00
ram_bank = 0
    _mjump GeneralStatusQuery
DoOwnerStatusQuery
F1_001063 equ $ ; in [POLYGENCODE.BAS] WiFiCMD[1] ="O"
    movlb 0x07
ram_bank = 7
    movlw 111
    movwf WiFiCMD#1
GeneralStatusQuery
ram_bank = 0
F1_001066 equ $ ; in [POLYGENCODE.BAS] WiFiCMD[0] ="Q"
    movlb 0x07
ram_bank = 7
    movlw 81
    movwf WiFiCMD#0
F1_001067 equ $ ; in [POLYGENCODE.BAS] WiFiCMD[2] =0
    clrf WiFiCMD#2
F1_001068 equ $ ; in [POLYGENCODE.BAS] GoSub SendWiFiCMD
    movlb 0x00
ram_bank = 0
    movlp ((SendWiFiCMD) >> 8)
    call SendWiFiCMD
ram_bank = 0
F1_001069 equ $ ; in [POLYGENCODE.BAS] GeneralTimer=100
    movlb 0x0D
ram_bank = 13
    clrf GeneralTimerH
    movlw 100
    movwf GeneralTimer
F1_001070 equ $ ; in [POLYGENCODE.BAS] While TXInProgress=1 And GeneralTimer>0
_lbl__243
    movlb 0x00
ram_bank = 0
    movlw 0
    btfsc _B__VR3,3
    movlw 1
    movwf SP__P9_
    movlb 0x0D
ram_bank = 13
    movf GeneralTimer,W
    iorwf GeneralTimerH,W
    movlp ((_cplb__24) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _cplb__24
_cplb__25
ram_bank = 255
    clrw
    btfss STATUS,2
_cplb__24
    movlw 1
    movlb 0x00
ram_bank = 0
    andwf SP__P9_,F
    movlp ((_lbl__244) >> 8)
    btfsc STATUS,2
    goto _lbl__244
F1_001071 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__243
_lbl__244
F1_001072 equ $ ; in [POLYGENCODE.BAS] return
    return
IdleCentreUpdate
F1_001075 equ $ ; in [POLYGENCODE.BAS] GoSub LED2PowerOn
    movlp ((LED2PowerOn) >> 8)
    call LED2PowerOn
ram_bank = 0
F1_001077 equ $ ; in [POLYGENCODE.BAS] HSVv=80
    movlb 0x0E
ram_bank = 14
    movlw 80
    movwf HSVv
F1_001078 equ $ ; in [POLYGENCODE.BAS] HSVs=255
    movlw 255
    movwf HSVs
F1_001079 equ $ ; in [POLYGENCODE.BAS] Select GameStatus
F1_001080 equ $ ; in [POLYGENCODE.BAS] Case 1
    movlw 1
    movlb 0x07
ram_bank = 7
    subwf GameStatus,W
    movlp ((_lbl__246) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__246
F1_001081 equ $ ; in [POLYGENCODE.BAS] Clear HSVs
    movlb 0x0E
ram_bank = 14
    clrf HSVs
    movlb 0x00
ram_bank = 0
    _mjump _lbl__245
_lbl__246
F1_001083 equ $ ; in [POLYGENCODE.BAS] Case 2
    movlw 2
    movlb 0x07
ram_bank = 7
    subwf GameStatus,W
    movlp ((_lbl__249) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__249
F1_001084 equ $ ; in [POLYGENCODE.BAS] if discs_OwnerTeam>0 Then
    movlb 0x06
ram_bank = 6
    movf discs_OwnerTeam,F
    movlp ((_lbl__251) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__251
F1_001085 equ $ ; in [POLYGENCODE.BAS] HSVh=TeamColourHue[discs_OwnerTeam]
    movlb 0x06
ram_bank = 6
    lslf discs_OwnerTeam,W
    movwf FSR0L
    clrf FSR0H
    rlf FSR0H,F
    movlw 0x23
    addwf FSR0L,F
    movlw 0x24
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x0E
ram_bank = 14
    movwf HSVh
    moviw ++INDF0
    movwf HSVhH
    movlb 0x00
ram_bank = 0
    _mjump _lbl__252
_lbl__251
F1_001086 equ $ ; in [POLYGENCODE.BAS] else
F1_001087 equ $ ; in [POLYGENCODE.BAS] Clear HSVs
    movlb 0x0E
ram_bank = 14
    clrf HSVs
F1_001089 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__252
    movlb 0x00
ram_bank = 0
    _mjump _lbl__245
_lbl__249
F1_001090 equ $ ; in [POLYGENCODE.BAS] Case 3
    movlw 3
    movlb 0x07
ram_bank = 7
    subwf GameStatus,W
    movlp ((_lbl__254) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__254
F1_001091 equ $ ; in [POLYGENCODE.BAS] if WinningTeam>0 Then
    movlb 0x07
ram_bank = 7
    movf WinningTeam,F
    movlp ((_lbl__256) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__256
F1_001092 equ $ ; in [POLYGENCODE.BAS] HSVh=TeamColourHue[WinningTeam]
    movlb 0x07
ram_bank = 7
    lslf WinningTeam,W
    movwf FSR0L
    clrf FSR0H
    rlf FSR0H,F
    movlw 0x23
    addwf FSR0L,F
    movlw 0x24
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x0E
ram_bank = 14
    movwf HSVh
    moviw ++INDF0
    movwf HSVhH
    movlb 0x00
ram_bank = 0
    _mjump _lbl__257
_lbl__256
F1_001093 equ $ ; in [POLYGENCODE.BAS] else
F1_001095 equ $ ; in [POLYGENCODE.BAS] Clear HSVs
    movlb 0x0E
ram_bank = 14
    clrf HSVs
F1_001096 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__257
    movlb 0x00
ram_bank = 0
F1_001097 equ $ ; in [POLYGENCODE.BAS] Case else
    _mjump _lbl__259
_lbl__254
F1_001098 equ $ ; in [POLYGENCODE.BAS] Clear HSVs
    movlb 0x0E
ram_bank = 14
    clrf HSVs
F1_001100 equ $ ; in [POLYGENCODE.BAS] EndSelect
_lbl__259
    movlb 0x00
ram_bank = 0
_lbl__245
F1_001102 equ $ ; in [POLYGENCODE.BAS] GoSub HSV2RGB
    movlp ((HSV2RGB) >> 8)
    call HSV2RGB
ram_bank = 0
F1_001103 equ $ ; in [POLYGENCODE.BAS] GoSub BlankAllLED2s
    movlp ((BlankAllLED2s) >> 8)
    call BlankAllLED2s
ram_bank = 0
F1_001104 equ $ ; in [POLYGENCODE.BAS] Inc LEDIdleLocation
    movlb 0x0D
ram_bank = 13
    incf LEDIdleLocation,F
F1_001105 equ $ ; in [POLYGENCODE.BAS] if LEDIdleLocation>11 Then Clear LEDIdleLocation
    movlw 12
    subwf LEDIdleLocation,W
    movlp ((_lbl__261) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _lbl__261
    movlb 0x0D
ram_bank = 13
    clrf LEDIdleLocation
_lbl__261
ram_bank = 0
F1_001106 equ $ ; in [POLYGENCODE.BAS] C=LEDIdleLocation*3
    movlb 0x0D
ram_bank = 13
    lslf LEDIdleLocation,W
    addwf LEDIdleLocation,W
    movwf _C
F1_001107 equ $ ; in [POLYGENCODE.BAS] LED2Data[C] =OutB
    movf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutB,W
    movwf INDF0
F1_001108 equ $ ; in [POLYGENCODE.BAS] Inc C
    movlb 0x0D
ram_bank = 13
    incf _C,F
F1_001109 equ $ ; in [POLYGENCODE.BAS] LED2Data[C] =OutR
    movf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutR,W
    movwf INDF0
F1_001110 equ $ ; in [POLYGENCODE.BAS] Inc C
    movlb 0x0D
ram_bank = 13
    incf _C,F
F1_001111 equ $ ; in [POLYGENCODE.BAS] LED2Data[C] =OutG
    movf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutG,W
    movwf INDF0
F1_001112 equ $ ; in [POLYGENCODE.BAS] LED2ByteCount=36
    movlb 0x0D
ram_bank = 13
    movlw 36
    movwf LED2ByteCount
F1_001113 equ $ ; in [POLYGENCODE.BAS] GoSub SendLEDData
    movlb 0x00
ram_bank = 0
    movlp ((SendLEDData) >> 8)
    call SendLEDData
ram_bank = 0
IdleCentreWait
F1_001115 equ $ ; in [POLYGENCODE.BAS] if LED2ByteCount>0 Then goto IdleCentreWait
    movlb 0x0D
ram_bank = 13
    movf LED2ByteCount,F
    movlp ((IdleCentreWait) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto IdleCentreWait
F1_001116 equ $ ; in [POLYGENCODE.BAS] if ClockCount>0 Then goto IdleCentreWait
    movlb 0x0D
ram_bank = 13
    movf ClockCount,F
    movlp ((IdleCentreWait) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto IdleCentreWait
F1_001117 equ $ ; in [POLYGENCODE.BAS] DelayMs 1
    movlw 1
    movlp ((__delay_ms_) >> 8)
    call __delay_ms_
ram_bank = 0
F1_001118 equ $ ; in [POLYGENCODE.BAS] GoSub LEDTurnOffHardware
    movlp ((LEDTurnOffHardware) >> 8)
    call LEDTurnOffHardware
ram_bank = 0
F1_001119 equ $ ; in [POLYGENCODE.BAS] return
    return
GetBatteryVoltage
F1_001122 equ $ ; in [POLYGENCODE.BAS] Input VoltageSensor
    bsf TRISC,0
F1_001123 equ $ ; in [POLYGENCODE.BAS] Set ANSELC.0
    movlb 0x3E
ram_bank = 62
    bsf ANSELC,0
F1_001124 equ $ ; in [POLYGENCODE.BAS] FVRCON=%10000010
    movlb 0x12
ram_bank = 18
    movlw 130
    movwf FVRCON
WaitForFVR
ram_bank = 0
F1_001126 equ $ ; in [POLYGENCODE.BAS] if FVRCON.6=0 Then goto WaitForFVR
    movlp ((WaitForFVR) >> 8)
    movlb 0x12
ram_bank = 18
    movf FVRCON,W
    movlb 0x00
ram_bank = 0
    btfss WREG,6
    goto WaitForFVR
F1_001129 equ $ ; in [POLYGENCODE.BAS] ADCON1=%11100011
    movlb 0x01
ram_bank = 1
    movlw 227
    movwf ADCON1
F1_001130 equ $ ; in [POLYGENCODE.BAS] ADCON0=%01000001
    movlw 65
    movwf ADCON0
F1_001131 equ $ ; in [POLYGENCODE.BAS] DelayMs 2
    movlw 2
    movlb 0x00
ram_bank = 0
    movlp ((__delay_ms_) >> 8)
    call __delay_ms_
ram_bank = 0
F1_001132 equ $ ; in [POLYGENCODE.BAS] Set ADCON0.1
    movlb 0x01
ram_bank = 1
    bsf ADCON0,1
WaitForBatteryRead
ram_bank = 0
F1_001134 equ $ ; in [POLYGENCODE.BAS] if ADCON0.1=1 Then goto WaitForBatteryRead
    movlp ((WaitForBatteryRead) >> 8)
    movlb 0x01
ram_bank = 1
    movf ADCON0,W
    movlb 0x00
ram_bank = 0
    btfsc WREG,1
    goto WaitForBatteryRead
F1_001135 equ $ ; in [POLYGENCODE.BAS] nop
    nop
F1_001136 equ $ ; in [POLYGENCODE.BAS] BatteryVoltage.LowByte=ADRESL
    movlb 0x01
ram_bank = 1
    movf ADRESL,W
    movlb 0x03
ram_bank = 3
    movwf BatteryVoltage
F1_001137 equ $ ; in [POLYGENCODE.BAS] BatteryVoltage.HighByte=ADRESH
    movlb 0x01
ram_bank = 1
    movf ADRESH,W
    movlb 0x03
ram_bank = 3
    movwf BatteryVoltageH
F1_001138 equ $ ; in [POLYGENCODE.BAS] Clear ADCON0
    movlb 0x01
ram_bank = 1
    clrf ADCON0
F1_001139 equ $ ; in [POLYGENCODE.BAS] Clear ANSELC.0
    movlb 0x3E
ram_bank = 62
    bcf ANSELC,0
F1_001140 equ $ ; in [POLYGENCODE.BAS] Clear FVRCON
    movlb 0x12
ram_bank = 18
    clrf FVRCON
F1_001141 equ $ ; in [POLYGENCODE.BAS] return
    movlb 0x00
ram_bank = 0
    return
CommandMode
F1_001147 equ $ ; in [POLYGENCODE.BAS] Clear cmdMenu
    movlb 0x0D
ram_bank = 13
    clrf cmdMenu
F1_001148 equ $ ; in [POLYGENCODE.BAS] SavedSoundLevel=SoundLevel
    movlb 0x07
ram_bank = 7
    movf SoundLevel,W
    movlb 0x0D
ram_bank = 13
    movwf SavedSoundLevel
F1_001149 equ $ ; in [POLYGENCODE.BAS] SoundLevel=25
    movlb 0x07
ram_bank = 7
    movlw 25
    movwf SoundLevel
F1_001150 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOnSound
    movlb 0x00
ram_bank = 0
    movlp ((PowerOnSound) >> 8)
    call PowerOnSound
ram_bank = 0
F1_001151 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOnWiFi
    movlp ((PowerOnWiFi) >> 8)
    call PowerOnWiFi
ram_bank = 0
F1_001152 equ $ ; in [POLYGENCODE.BAS] GoSub LED1PowerOn
    movlp ((LED1PowerOn) >> 8)
    call LED1PowerOn
ram_bank = 0
F1_001153 equ $ ; in [POLYGENCODE.BAS] GoSub LED2PowerOn
    movlp ((LED2PowerOn) >> 8)
    call LED2PowerOn
ram_bank = 0
F1_001155 equ $ ; in [POLYGENCODE.BAS] CaptureTimer=600
    movlb 0x0D
ram_bank = 13
    movlw 2
    movwf CaptureTimerH
    movlw 88
    movwf CaptureTimer
F1_001156 equ $ ; in [POLYGENCODE.BAS] While CaptureTimer>0 And SoundStatus<3
_lbl__270
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movf CaptureTimer,W
    iorwf CaptureTimerH,W
    movlp ((_cplb__26) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _cplb__26
_cplb__27
ram_bank = 255
    clrw
    btfss STATUS,2
_cplb__26
    movlw 1
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlw 3
    movlb 0x0D
ram_bank = 13
    subwf SoundStatus,W
    movlw 1
    btfsc STATUS,0
    movlw 0
    movlb 0x00
ram_bank = 0
    andwf SP__P9_,F
    movlp ((_lbl__271) >> 8)
    btfsc STATUS,2
    goto _lbl__271
F1_001157 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_001159 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__270
_lbl__271
F1_001160 equ $ ; in [POLYGENCODE.BAS] LEDActiveAnimation=8
    movlb 0x0D
ram_bank = 13
    movlw 8
    movwf LEDActiveAnimation
F1_001161 equ $ ; in [POLYGENCODE.BAS] GoSub PlayAnimation
    movlb 0x00
ram_bank = 0
    movlp ((PlayAnimation) >> 8)
    call PlayAnimation
ram_bank = 0
F1_001163 equ $ ; in [POLYGENCODE.BAS] SoundTemp=79
    movlb 0x0B
ram_bank = 11
    movlw 79
    movwf SoundTemp
F1_001164 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001165 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_001168 equ $ ; in [POLYGENCODE.BAS] cmdMenu=5
    movlb 0x0D
ram_bank = 13
    movlw 5
    movwf cmdMenu
F1_001170 equ $ ; in [POLYGENCODE.BAS] Set InhibitCommand
    movlb 0x00
ram_bank = 0
    bsf _B__VR5,5
F1_001171 equ $ ; in [POLYGENCODE.BAS] CaptureTimer=150
    movlb 0x0D
ram_bank = 13
    clrf CaptureTimerH
    movlw 150
    movwf CaptureTimer
CMLoop
ram_bank = 0
F1_001174 equ $ ; in [POLYGENCODE.BAS] if CaptureTimer=0 And cmdMenu<90 Then
    movlb 0x0D
ram_bank = 13
    movf CaptureTimerH,W
    iorwf CaptureTimer,W
    movlp ((_cplb__28) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _cplb__28
    clrw
    btfss STATUS,2
_cplb__28
    movlw 1
    movwf SP__P9_
    movlw 90
    movlb 0x0D
ram_bank = 13
    subwf cmdMenu,W
    movlw 1
    btfsc STATUS,0
    movlw 0
    movlb 0x00
ram_bank = 0
    andwf SP__P9_,F
    movlp ((_lbl__273) >> 8)
    btfsc STATUS,2
    goto _lbl__273
F1_001175 equ $ ; in [POLYGENCODE.BAS] if cmdMenu>=11 Then Clear cmdMenu
    movlw 11
    movlb 0x0D
ram_bank = 13
    subwf cmdMenu,W
    movlp ((_lbl__275) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _lbl__275
    movlb 0x0D
ram_bank = 13
    clrf cmdMenu
_lbl__275
ram_bank = 0
F1_001176 equ $ ; in [POLYGENCODE.BAS] Inc cmdMenu
    movlb 0x0D
ram_bank = 13
    incf cmdMenu,F
F1_001177 equ $ ; in [POLYGENCODE.BAS] Clear InhibitCommand
    movlb 0x00
ram_bank = 0
    bcf _B__VR5,5
F1_001178 equ $ ; in [POLYGENCODE.BAS] SoundTemp=cmdMenu + 80
    movlw 80
    movlb 0x0D
ram_bank = 13
    addwf cmdMenu,W
    movlb 0x0B
ram_bank = 11
    movwf SoundTemp
F1_001179 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001180 equ $ ; in [POLYGENCODE.BAS] CaptureTimer=125
    movlb 0x0D
ram_bank = 13
    clrf CaptureTimerH
    movlw 125
    movwf CaptureTimer
F1_001181 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__273
ram_bank = 0
F1_001203 equ $ ; in [POLYGENCODE.BAS] if cmdMenu<90 And InhibitCommand=0 Then
    movlw 90
    movlb 0x0D
ram_bank = 13
    subwf cmdMenu,W
    movlw 1
    btfsc STATUS,0
    movlw 0
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlw 1
    btfsc _B__VR5,5
    movlw 0
    andwf SP__P9_,F
    movlp ((_lbl__277) >> 8)
    btfsc STATUS,2
    goto _lbl__277
F1_001204 equ $ ; in [POLYGENCODE.BAS] Clear CommandMatched
    bcf _B__VR1,7
F1_001205 equ $ ; in [POLYGENCODE.BAS] GoSub DetectRFID
    movlp ((DetectRFID) >> 8)
    call DetectRFID
ram_bank = 0
F1_001206 equ $ ; in [POLYGENCODE.BAS] if ReqSetLocation=1 Then
    movlp ((_lbl__279) >> 8)
    btfss _B__VR8,4
    goto _lbl__279
F1_001207 equ $ ; in [POLYGENCODE.BAS] cmdMenu=8
    movlb 0x0D
ram_bank = 13
    movlw 8
    movwf cmdMenu
F1_001208 equ $ ; in [POLYGENCODE.BAS] Set CommandMatched
    movlb 0x00
ram_bank = 0
    bsf _B__VR1,7
F1_001209 equ $ ; in [POLYGENCODE.BAS] Clear ReqSetLocation
    bcf _B__VR8,4
F1_001210 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__279
F1_001211 equ $ ; in [POLYGENCODE.BAS] if ReqPowerOff=1 Then
    movlp ((_lbl__281) >> 8)
    btfss _B__VR8,5
    goto _lbl__281
F1_001212 equ $ ; in [POLYGENCODE.BAS] cmdMenu=7
    movlb 0x0D
ram_bank = 13
    movlw 7
    movwf cmdMenu
F1_001213 equ $ ; in [POLYGENCODE.BAS] Set CommandMatched
    movlb 0x00
ram_bank = 0
    bsf _B__VR1,7
F1_001214 equ $ ; in [POLYGENCODE.BAS] Clear ReqPowerOff
    bcf _B__VR8,5
F1_001215 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__281
F1_001216 equ $ ; in [POLYGENCODE.BAS] if ReqExitCMD=1 Then
    movlp ((_lbl__283) >> 8)
    btfss _B__VR8,6
    goto _lbl__283
F1_001217 equ $ ; in [POLYGENCODE.BAS] cmdMenu=1
    movlb 0x0D
ram_bank = 13
    movlw 1
    movwf cmdMenu
F1_001218 equ $ ; in [POLYGENCODE.BAS] Set CommandMatched
    movlb 0x00
ram_bank = 0
    bsf _B__VR1,7
F1_001219 equ $ ; in [POLYGENCODE.BAS] Clear ReqExitCMD
    bcf _B__VR8,6
F1_001220 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__283
F1_001221 equ $ ; in [POLYGENCODE.BAS] if ReqDiags=1 Then
    movlp ((_lbl__285) >> 8)
    btfss _B__VR8,7
    goto _lbl__285
F1_001222 equ $ ; in [POLYGENCODE.BAS] cmdMenu=2
    movlb 0x0D
ram_bank = 13
    movlw 2
    movwf cmdMenu
F1_001223 equ $ ; in [POLYGENCODE.BAS] Set CommandMatched
    movlb 0x00
ram_bank = 0
    bsf _B__VR1,7
F1_001224 equ $ ; in [POLYGENCODE.BAS] Clear ReqDiags
    bcf _B__VR8,7
F1_001225 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__285
F1_001226 equ $ ; in [POLYGENCODE.BAS] if JumpCMDFound=1 Then
    movlp ((_lbl__287) >> 8)
    btfss _B__VR9,0
    goto _lbl__287
F1_001227 equ $ ; in [POLYGENCODE.BAS] SoundTemp=cmdMenu + 80
    movlw 80
    movlb 0x0D
ram_bank = 13
    addwf cmdMenu,W
    movlb 0x0B
ram_bank = 11
    movwf SoundTemp
F1_001228 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001229 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_001230 equ $ ; in [POLYGENCODE.BAS] GoSub WaitForSound
    movlp ((WaitForSound) >> 8)
    call WaitForSound
ram_bank = 0
F1_001231 equ $ ; in [POLYGENCODE.BAS] Clear JumpCMDFound
    bcf _B__VR9,0
F1_001232 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__287
F1_001233 equ $ ; in [POLYGENCODE.BAS] if CommandMatched=1 Then
    movlp ((_lbl__289) >> 8)
    btfss _B__VR1,7
    goto _lbl__289
F1_001234 equ $ ; in [POLYGENCODE.BAS] Select cmdMenu
F1_001235 equ $ ; in [POLYGENCODE.BAS] Case 1
    movlw 1
    movlb 0x0D
ram_bank = 13
    subwf cmdMenu,W
    movlp ((_lbl__291) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__291
F1_001236 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOffWiFi
    movlp ((PowerOffWiFi) >> 8)
    call PowerOffWiFi
ram_bank = 0
F1_001237 equ $ ; in [POLYGENCODE.BAS] GoSub LED1PowerOff
    movlp ((LED1PowerOff) >> 8)
    call LED1PowerOff
ram_bank = 0
F1_001238 equ $ ; in [POLYGENCODE.BAS] GoSub LED2PowerOff
    movlp ((LED2PowerOff) >> 8)
    call LED2PowerOff
ram_bank = 0
F1_001239 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOffSound
    movlp ((PowerOffSound) >> 8)
    call PowerOffSound
ram_bank = 0
F1_001240 equ $ ; in [POLYGENCODE.BAS] DelayMs 2000
    movlw 7
    movwf PP1H
    movlw 208
    movlp ((__delay_ms_wreg_) >> 8)
    call __delay_ms_wreg_
ram_bank = 0
F1_001241 equ $ ; in [POLYGENCODE.BAS] Clear cmdMenu
    movlb 0x0D
ram_bank = 13
    clrf cmdMenu
F1_001242 equ $ ; in [POLYGENCODE.BAS] SoundLevel=SavedSoundLevel
    movf SavedSoundLevel,W
    movlb 0x07
ram_bank = 7
    movwf SoundLevel
F1_001243 equ $ ; in [POLYGENCODE.BAS] return
    movlb 0x00
ram_bank = 0
    return
    _mjump _lbl__290
_lbl__291
F1_001247 equ $ ; in [POLYGENCODE.BAS] Case 2
    movlw 2
    movlb 0x0D
ram_bank = 13
    subwf cmdMenu,W
    movlp ((_lbl__294) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__294
F1_001248 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOffWiFi
    movlp ((PowerOffWiFi) >> 8)
    call PowerOffWiFi
ram_bank = 0
F1_001249 equ $ ; in [POLYGENCODE.BAS] Clear DiagSilent
    bcf _B__VR5,6
F1_001250 equ $ ; in [POLYGENCODE.BAS] GoSub SelfTest
    movlp ((SelfTest) >> 8)
    call SelfTest
ram_bank = 0
    _mjump _lbl__290
_lbl__294
F1_001251 equ $ ; in [POLYGENCODE.BAS] Case 3
    movlw 3
    movlb 0x0D
ram_bank = 13
    subwf cmdMenu,W
    movlp ((_lbl__296) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__296
F1_001252 equ $ ; in [POLYGENCODE.BAS] SoundTemp=092
    movlb 0x0B
ram_bank = 11
    movlw 92
    movwf SoundTemp
F1_001253 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001254 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_001255 equ $ ; in [POLYGENCODE.BAS] While WiFiPowerOnTimeout>0 And WiFiConnected=0
_lbl__297
    movlb 0x0A
ram_bank = 10
    movf WiFiPowerOnTimeout,W
    iorwf WiFiPowerOnTimeoutH,W
    movlp ((_cplb__29) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _cplb__29
_cplb__30
ram_bank = 255
    clrw
    btfss STATUS,2
_cplb__29
    movlw 1
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlw 1
    btfsc _B__VR2,1
    movlw 0
    andwf SP__P9_,F
    movlp ((_lbl__298) >> 8)
    btfsc STATUS,2
    goto _lbl__298
F1_001256 equ $ ; in [POLYGENCODE.BAS] GoSub IdleTasks
    movlp ((IdleTasks) >> 8)
    call IdleTasks
ram_bank = 0
F1_001257 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__297
_lbl__298
F1_001258 equ $ ; in [POLYGENCODE.BAS] if WiFiConnected=0 Then
    movlp ((_lbl__300) >> 8)
    btfsc _B__VR2,1
    goto _lbl__300
F1_001259 equ $ ; in [POLYGENCODE.BAS] SoundTemp=069
    movlb 0x0B
ram_bank = 11
    movlw 69
    movwf SoundTemp
F1_001260 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
    _mjump _lbl__301
_lbl__300
F1_001261 equ $ ; in [POLYGENCODE.BAS] else
F1_001262 equ $ ; in [POLYGENCODE.BAS] WiFiCMD[0] ="O"
    movlb 0x07
ram_bank = 7
    movlw 79
    movwf WiFiCMD#0
F1_001263 equ $ ; in [POLYGENCODE.BAS] Clear WiFiCMD[1]
    clrf WiFiCMD#1
F1_001264 equ $ ; in [POLYGENCODE.BAS] GoSub SendWiFiCMD
    movlb 0x00
ram_bank = 0
    movlp ((SendWiFiCMD) >> 8)
    call SendWiFiCMD
ram_bank = 0
F1_001265 equ $ ; in [POLYGENCODE.BAS] SoundTemp=070
    movlb 0x0B
ram_bank = 11
    movlw 70
    movwf SoundTemp
F1_001266 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001267 equ $ ; in [POLYGENCODE.BAS] CaptureTimer=500
    movlb 0x0D
ram_bank = 13
    movlw 1
    movwf CaptureTimerH
    movlw 244
    movwf CaptureTimer
F1_001268 equ $ ; in [POLYGENCODE.BAS] While CaptureTimer>0
_lbl__302
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movf CaptureTimer,F
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    bra _cplb__31
    movlb 0x0D
ram_bank = 13
    movf CaptureTimerH,F
    movlp ((_lbl__303) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__303
_cplb__31
ram_bank = 255
F1_001269 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlb 0x00
ram_bank = 0
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_001270 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__302
_lbl__303
F1_001271 equ $ ; in [POLYGENCODE.BAS] goto PowerOff
    _mjump PowerOff
F1_001272 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__301
    _mjump _lbl__290
_lbl__296
F1_001273 equ $ ; in [POLYGENCODE.BAS] Case 4
    movlw 4
    movlb 0x0D
ram_bank = 13
    subwf cmdMenu,W
    movlp ((_lbl__305) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__305
F1_001274 equ $ ; in [POLYGENCODE.BAS] Set DisableTamperDetection
    bsf _B__VR5,4
F1_001275 equ $ ; in [POLYGENCODE.BAS] SoundTemp=092
    movlb 0x0B
ram_bank = 11
    movlw 92
    movwf SoundTemp
F1_001276 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
    _mjump _lbl__290
_lbl__305
F1_001277 equ $ ; in [POLYGENCODE.BAS] Case 5
    movlw 5
    movlb 0x0D
ram_bank = 13
    subwf cmdMenu,W
    movlp ((_lbl__307) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__307
F1_001278 equ $ ; in [POLYGENCODE.BAS] SoundTemp=092
    movlb 0x0B
ram_bank = 11
    movlw 92
    movwf SoundTemp
F1_001279 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001280 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_001281 equ $ ; in [POLYGENCODE.BAS] While WiFiPowerOnTimeout>0 And WiFiConnected=0
_lbl__308
    movlb 0x0A
ram_bank = 10
    movf WiFiPowerOnTimeout,W
    iorwf WiFiPowerOnTimeoutH,W
    movlp ((_cplb__32) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _cplb__32
_cplb__33
ram_bank = 255
    clrw
    btfss STATUS,2
_cplb__32
    movlw 1
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlw 1
    btfsc _B__VR2,1
    movlw 0
    andwf SP__P9_,F
    movlp ((_lbl__309) >> 8)
    btfsc STATUS,2
    goto _lbl__309
F1_001282 equ $ ; in [POLYGENCODE.BAS] GoSub IdleTasks
    movlp ((IdleTasks) >> 8)
    call IdleTasks
ram_bank = 0
F1_001283 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__308
_lbl__309
F1_001284 equ $ ; in [POLYGENCODE.BAS] Clear WiFiEncryptionKeysWiped
    bcf _B__VR4,2
F1_001285 equ $ ; in [POLYGENCODE.BAS] WiFiCMD[0] ="W"
    movlb 0x07
ram_bank = 7
    movlw 87
    movwf WiFiCMD#0
F1_001286 equ $ ; in [POLYGENCODE.BAS] WiFiCMD[1] ="0"
    movlw 48
    movwf WiFiCMD#1
F1_001287 equ $ ; in [POLYGENCODE.BAS] WiFiCMD[2] =0
    clrf WiFiCMD#2
F1_001288 equ $ ; in [POLYGENCODE.BAS] GoSub SendWiFiCMD
    movlb 0x00
ram_bank = 0
    movlp ((SendWiFiCMD) >> 8)
    call SendWiFiCMD
ram_bank = 0
F1_001292 equ $ ; in [POLYGENCODE.BAS] CaptureTimer=250
    movlb 0x0D
ram_bank = 13
    clrf CaptureTimerH
    movlw 250
    movwf CaptureTimer
F1_001293 equ $ ; in [POLYGENCODE.BAS] While CaptureTimer>0
_lbl__310
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movf CaptureTimer,F
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    bra _cplb__34
    movlb 0x0D
ram_bank = 13
    movf CaptureTimerH,F
    movlp ((_lbl__311) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__311
_cplb__34
ram_bank = 255
F1_001294 equ $ ; in [POLYGENCODE.BAS] GoSub IdleTasks
    movlb 0x00
ram_bank = 0
    movlp ((IdleTasks) >> 8)
    call IdleTasks
ram_bank = 0
F1_001295 equ $ ; in [POLYGENCODE.BAS] if WiFiEncryptionKeysWiped=1 Then Break
    movlp ((_lbl__311) >> 8)
    btfsc _B__VR4,2
    goto _lbl__311
F1_001296 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__310
_lbl__311
F1_001297 equ $ ; in [POLYGENCODE.BAS] if WiFiEncryptionKeysWiped=1 Then
    movlp ((_lbl__315) >> 8)
    btfss _B__VR4,2
    goto _lbl__315
F1_001298 equ $ ; in [POLYGENCODE.BAS] SoundTemp=66
    movlb 0x0B
ram_bank = 11
    movlw 66
    movwf SoundTemp
F1_001299 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001300 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__315
    _mjump _lbl__290
_lbl__307
F1_001301 equ $ ; in [POLYGENCODE.BAS] Case 6
    movlw 6
    movlb 0x0D
ram_bank = 13
    subwf cmdMenu,W
    movlp ((_lbl__317) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__317
F1_001302 equ $ ; in [POLYGENCODE.BAS] GoSub GetBatteryVoltage
    movlp ((GetBatteryVoltage) >> 8)
    call GetBatteryVoltage
ram_bank = 0
F1_001303 equ $ ; in [POLYGENCODE.BAS] GoSub SayBatteryVoltage
    movlp ((SayBatteryVoltage) >> 8)
    call SayBatteryVoltage
ram_bank = 0
    _mjump _lbl__290
_lbl__317
F1_001304 equ $ ; in [POLYGENCODE.BAS] Case 7
    movlw 7
    movlb 0x0D
ram_bank = 13
    subwf cmdMenu,W
    movlp ((_lbl__319) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__319
F1_001305 equ $ ; in [POLYGENCODE.BAS] goto PowerOff
    _mjump PowerOff
    _mjump _lbl__290
_lbl__319
F1_001306 equ $ ; in [POLYGENCODE.BAS] Case 8
    movlw 8
    movlb 0x0D
ram_bank = 13
    subwf cmdMenu,W
    movlp ((_lbl__321) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__321
F1_001307 equ $ ; in [POLYGENCODE.BAS] SoundTemp=092
    movlb 0x0B
ram_bank = 11
    movlw 92
    movwf SoundTemp
F1_001308 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001309 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_001310 equ $ ; in [POLYGENCODE.BAS] While WiFiPowerOnTimeout>0 And WiFiConnected=0
_lbl__322
    movlb 0x0A
ram_bank = 10
    movf WiFiPowerOnTimeout,W
    iorwf WiFiPowerOnTimeoutH,W
    movlp ((_cplb__35) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _cplb__35
_cplb__36
ram_bank = 255
    clrw
    btfss STATUS,2
_cplb__35
    movlw 1
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlw 1
    btfsc _B__VR2,1
    movlw 0
    andwf SP__P9_,F
    movlp ((_lbl__323) >> 8)
    btfsc STATUS,2
    goto _lbl__323
F1_001311 equ $ ; in [POLYGENCODE.BAS] GoSub IdleTasks
    movlp ((IdleTasks) >> 8)
    call IdleTasks
ram_bank = 0
F1_001312 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__322
_lbl__323
F1_001313 equ $ ; in [POLYGENCODE.BAS] if WiFiConnected=0 Then
    movlp ((_lbl__325) >> 8)
    btfsc _B__VR2,1
    goto _lbl__325
F1_001314 equ $ ; in [POLYGENCODE.BAS] SoundTemp=069
    movlb 0x0B
ram_bank = 11
    movlw 69
    movwf SoundTemp
F1_001315 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
    _mjump _lbl__326
_lbl__325
F1_001316 equ $ ; in [POLYGENCODE.BAS] else
F1_001317 equ $ ; in [POLYGENCODE.BAS] WiFiCMD[0] ="L"
    movlb 0x07
ram_bank = 7
    movlw 76
    movwf WiFiCMD#0
F1_001318 equ $ ; in [POLYGENCODE.BAS] Clear WiFiCMD[1]
    clrf WiFiCMD#1
F1_001319 equ $ ; in [POLYGENCODE.BAS] GoSub SendWiFiCMD
    movlb 0x00
ram_bank = 0
    movlp ((SendWiFiCMD) >> 8)
    call SendWiFiCMD
ram_bank = 0
F1_001320 equ $ ; in [POLYGENCODE.BAS] SoundTemp=070
    movlb 0x0B
ram_bank = 11
    movlw 70
    movwf SoundTemp
F1_001321 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001322 equ $ ; in [POLYGENCODE.BAS] CaptureTimer=100
    movlb 0x0D
ram_bank = 13
    clrf CaptureTimerH
    movlw 100
    movwf CaptureTimer
F1_001323 equ $ ; in [POLYGENCODE.BAS] While CaptureTimer>0
_lbl__327
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movf CaptureTimer,F
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    bra _cplb__37
    movlb 0x0D
ram_bank = 13
    movf CaptureTimerH,F
    movlp ((_lbl__328) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__328
_cplb__37
ram_bank = 255
F1_001324 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlb 0x00
ram_bank = 0
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_001325 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__327
_lbl__328
F1_001326 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__326
    _mjump _lbl__290
_lbl__321
F1_001327 equ $ ; in [POLYGENCODE.BAS] Case 9
    movlw 9
    movlb 0x0D
ram_bank = 13
    subwf cmdMenu,W
    movlp ((_lbl__330) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__330
F1_001328 equ $ ; in [POLYGENCODE.BAS] SoundTemp=092
    movlb 0x0B
ram_bank = 11
    movlw 92
    movwf SoundTemp
F1_001329 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001330 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_001331 equ $ ; in [POLYGENCODE.BAS] While WiFiPowerOnTimeout>0 And WiFiConnected=0
_lbl__331
    movlb 0x0A
ram_bank = 10
    movf WiFiPowerOnTimeout,W
    iorwf WiFiPowerOnTimeoutH,W
    movlp ((_cplb__38) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _cplb__38
_cplb__39
ram_bank = 255
    clrw
    btfss STATUS,2
_cplb__38
    movlw 1
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlw 1
    btfsc _B__VR2,1
    movlw 0
    andwf SP__P9_,F
    movlp ((_lbl__332) >> 8)
    btfsc STATUS,2
    goto _lbl__332
F1_001332 equ $ ; in [POLYGENCODE.BAS] GoSub IdleTasks
    movlp ((IdleTasks) >> 8)
    call IdleTasks
ram_bank = 0
F1_001333 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__331
_lbl__332
F1_001334 equ $ ; in [POLYGENCODE.BAS] if WiFiConnected=0 Then
    movlp ((_lbl__334) >> 8)
    btfsc _B__VR2,1
    goto _lbl__334
F1_001335 equ $ ; in [POLYGENCODE.BAS] SoundTemp=069
    movlb 0x0B
ram_bank = 11
    movlw 69
    movwf SoundTemp
F1_001336 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
    _mjump _lbl__335
_lbl__334
F1_001337 equ $ ; in [POLYGENCODE.BAS] else
F1_001338 equ $ ; in [POLYGENCODE.BAS] Clear DiscSwapCompleted
    bcf _B__VR4,5
F1_001339 equ $ ; in [POLYGENCODE.BAS] Clear DiscSwapFailed
    bcf _B__VR4,6
F1_001340 equ $ ; in [POLYGENCODE.BAS] WiFiCMD[0] ="S"
    movlb 0x07
ram_bank = 7
    movlw 83
    movwf WiFiCMD#0
F1_001341 equ $ ; in [POLYGENCODE.BAS] Clear WiFiCMD[1]
    clrf WiFiCMD#1
F1_001342 equ $ ; in [POLYGENCODE.BAS] GoSub SendWiFiCMD
    movlb 0x00
ram_bank = 0
    movlp ((SendWiFiCMD) >> 8)
    call SendWiFiCMD
ram_bank = 0
F1_001343 equ $ ; in [POLYGENCODE.BAS] CaptureTimer=100
    movlb 0x0D
ram_bank = 13
    clrf CaptureTimerH
    movlw 100
    movwf CaptureTimer
F1_001344 equ $ ; in [POLYGENCODE.BAS] While CaptureTimer>0
_lbl__336
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movf CaptureTimer,F
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    bra _cplb__40
    movlb 0x0D
ram_bank = 13
    movf CaptureTimerH,F
    movlp ((_lbl__337) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__337
_cplb__40
ram_bank = 255
F1_001345 equ $ ; in [POLYGENCODE.BAS] GoSub IdleTasks
    movlb 0x00
ram_bank = 0
    movlp ((IdleTasks) >> 8)
    call IdleTasks
ram_bank = 0
F1_001346 equ $ ; in [POLYGENCODE.BAS] if DiscSwapCompleted=1 Then
    movlp ((_lbl__339) >> 8)
    btfss _B__VR4,5
    goto _lbl__339
F1_001347 equ $ ; in [POLYGENCODE.BAS] SoundTemp=031
    movlb 0x0B
ram_bank = 11
    movlw 31
    movwf SoundTemp
F1_001348 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001349 equ $ ; in [POLYGENCODE.BAS] Break
    _mjump _lbl__337
F1_001350 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__339
F1_001351 equ $ ; in [POLYGENCODE.BAS] if DiscSwapFailed=1 Then
    movlp ((_lbl__341) >> 8)
    btfss _B__VR4,6
    goto _lbl__341
F1_001352 equ $ ; in [POLYGENCODE.BAS] SoundTemp=032
    movlb 0x0B
ram_bank = 11
    movlw 32
    movwf SoundTemp
F1_001353 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001354 equ $ ; in [POLYGENCODE.BAS] Break
    _mjump _lbl__337
F1_001355 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__341
F1_001356 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__336
_lbl__337
F1_001357 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_001358 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__335
    _mjump _lbl__290
_lbl__330
F1_001359 equ $ ; in [POLYGENCODE.BAS] Case 10
    movlw 10
    movlb 0x0D
ram_bank = 13
    subwf cmdMenu,W
    movlp ((_lbl__343) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__343
F1_001360 equ $ ; in [POLYGENCODE.BAS] SoundTemp=092
    movlb 0x0B
ram_bank = 11
    movlw 92
    movwf SoundTemp
F1_001361 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001362 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_001363 equ $ ; in [POLYGENCODE.BAS] While WiFiPowerOnTimeout>0 And WiFiConnected=0
_lbl__344
    movlb 0x0A
ram_bank = 10
    movf WiFiPowerOnTimeout,W
    iorwf WiFiPowerOnTimeoutH,W
    movlp ((_cplb__41) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _cplb__41
_cplb__42
ram_bank = 255
    clrw
    btfss STATUS,2
_cplb__41
    movlw 1
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlw 1
    btfsc _B__VR2,1
    movlw 0
    andwf SP__P9_,F
    movlp ((_lbl__345) >> 8)
    btfsc STATUS,2
    goto _lbl__345
F1_001364 equ $ ; in [POLYGENCODE.BAS] GoSub IdleTasks
    movlp ((IdleTasks) >> 8)
    call IdleTasks
ram_bank = 0
F1_001365 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__344
_lbl__345
F1_001366 equ $ ; in [POLYGENCODE.BAS] if WiFiConnected=0 Then
    movlp ((_lbl__347) >> 8)
    btfsc _B__VR2,1
    goto _lbl__347
F1_001367 equ $ ; in [POLYGENCODE.BAS] SoundTemp=069
    movlb 0x0B
ram_bank = 11
    movlw 69
    movwf SoundTemp
F1_001368 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
    _mjump _lbl__348
_lbl__347
F1_001369 equ $ ; in [POLYGENCODE.BAS] else
F1_001370 equ $ ; in [POLYGENCODE.BAS] WiFiCMD[0] ="X"
    movlb 0x07
ram_bank = 7
    movlw 88
    movwf WiFiCMD#0
F1_001371 equ $ ; in [POLYGENCODE.BAS] Clear WiFiCMD[1]
    clrf WiFiCMD#1
F1_001372 equ $ ; in [POLYGENCODE.BAS] GoSub SendWiFiCMD
    movlb 0x00
ram_bank = 0
    movlp ((SendWiFiCMD) >> 8)
    call SendWiFiCMD
ram_bank = 0
F1_001373 equ $ ; in [POLYGENCODE.BAS] SoundTemp=070
    movlb 0x0B
ram_bank = 11
    movlw 70
    movwf SoundTemp
F1_001374 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001375 equ $ ; in [POLYGENCODE.BAS] CaptureTimer=500
    movlb 0x0D
ram_bank = 13
    movlw 1
    movwf CaptureTimerH
    movlw 244
    movwf CaptureTimer
F1_001376 equ $ ; in [POLYGENCODE.BAS] While CaptureTimer>0
_lbl__349
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movf CaptureTimer,F
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    bra _cplb__43
    movlb 0x0D
ram_bank = 13
    movf CaptureTimerH,F
    movlp ((_lbl__350) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__350
_cplb__43
ram_bank = 255
F1_001377 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlb 0x00
ram_bank = 0
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_001378 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__349
_lbl__350
F1_001379 equ $ ; in [POLYGENCODE.BAS] goto PowerOff
    _mjump PowerOff
F1_001380 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__348
    _mjump _lbl__290
_lbl__343
F1_001381 equ $ ; in [POLYGENCODE.BAS] Case 11
    movlw 11
    movlb 0x0D
ram_bank = 13
    subwf cmdMenu,W
    movlp ((_lbl__352) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__352
F1_001382 equ $ ; in [POLYGENCODE.BAS] SoundTemp=092
    movlb 0x0B
ram_bank = 11
    movlw 92
    movwf SoundTemp
F1_001383 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001384 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_001385 equ $ ; in [POLYGENCODE.BAS] GoSub DepleteBattery
    movlp ((DepleteBattery) >> 8)
    call DepleteBattery
ram_bank = 0
F1_001386 equ $ ; in [POLYGENCODE.BAS] EndSelect
_lbl__352
_lbl__290
F1_001387 equ $ ; in [POLYGENCODE.BAS] GoSub WaitForSound
    movlp ((WaitForSound) >> 8)
    call WaitForSound
ram_bank = 0
F1_001388 equ $ ; in [POLYGENCODE.BAS] CaptureTimer=100
    movlb 0x0D
ram_bank = 13
    clrf CaptureTimerH
    movlw 100
    movwf CaptureTimer
F1_001389 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__289
    movlb 0x00
ram_bank = 0
F1_001390 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__277
F1_001391 equ $ ; in [POLYGENCODE.BAS] GoSub IdleTasks
    movlp ((IdleTasks) >> 8)
    call IdleTasks
ram_bank = 0
F1_001392 equ $ ; in [POLYGENCODE.BAS] goto CMLoop
    _mjump CMLoop
SelfTest
F1_001419 equ $ ; in [POLYGENCODE.BAS] SavedSoundLevel=SoundLevel
    movlb 0x07
ram_bank = 7
    movf SoundLevel,W
    movlb 0x0D
ram_bank = 13
    movwf SavedSoundLevel
F1_001420 equ $ ; in [POLYGENCODE.BAS] SoundLevel=12
    movlb 0x07
ram_bank = 7
    movlw 12
    movwf SoundLevel
F1_001421 equ $ ; in [POLYGENCODE.BAS] Clear DiagResult
    movlb 0x0D
ram_bank = 13
    clrf DiagResultH
    clrf DiagResult
F1_001422 equ $ ; in [POLYGENCODE.BAS] Set DisableTamperDetection
    movlb 0x00
ram_bank = 0
    bsf _B__VR5,4
F1_001423 equ $ ; in [POLYGENCODE.BAS] if DFRPower=1 Then Set SoundOnAlready
    movlp ((_lbl__354) >> 8)
    btfss PORTB,3
    goto _lbl__354
    bsf _B__VR5,7
_lbl__354
F1_001424 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOnSound
    movlp ((PowerOnSound) >> 8)
    call PowerOnSound
ram_bank = 0
F1_001426 equ $ ; in [POLYGENCODE.BAS] While SoundStatus<4
_lbl__355
    movlw 4
    movlb 0x0D
ram_bank = 13
    subwf SoundStatus,W
    movlp ((_lbl__356) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__356
F1_001427 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_001428 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__355
_lbl__356
F1_001433 equ $ ; in [POLYGENCODE.BAS] if DiagSilent=0 Then
    movlp ((_lbl__358) >> 8)
    btfsc _B__VR5,6
    goto _lbl__358
F1_001434 equ $ ; in [POLYGENCODE.BAS] SoundTemp=13
    movlb 0x0B
ram_bank = 11
    movlw 13
    movwf SoundTemp
F1_001435 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001436 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_001438 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__358
F1_001440 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_DetectReader
    movlp ((RC522_DetectReader) >> 8)
    call RC522_DetectReader
ram_bank = 0
F1_001441 equ $ ; in [POLYGENCODE.BAS] DiagResult.0 = RC522ReaderPresent
    rrf _B__VR1,W
    movlb 0x0D
ram_bank = 13
    btfsc STATUS,0
    bsf DiagResult,0
    btfss STATUS,0
    bcf DiagResult,0
F1_001442 equ $ ; in [POLYGENCODE.BAS] if RC522ReaderPresent=1 Then
    movlp ((_lbl__360) >> 8)
    movlb 0x00
ram_bank = 0
    btfss _B__VR1,0
    goto _lbl__360
F1_001443 equ $ ; in [POLYGENCODE.BAS] SoundTemp=15
    movlb 0x0B
ram_bank = 11
    movlw 15
    movwf SoundTemp
    movlb 0x00
ram_bank = 0
    _mjump _lbl__361
_lbl__360
F1_001444 equ $ ; in [POLYGENCODE.BAS] else
F1_001445 equ $ ; in [POLYGENCODE.BAS] SoundTemp=14
    movlb 0x0B
ram_bank = 11
    movlw 14
    movwf SoundTemp
F1_001446 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__361
    movlb 0x00
ram_bank = 0
F1_001447 equ $ ; in [POLYGENCODE.BAS] if DiagSilent=0 Then
    movlp ((_lbl__363) >> 8)
    btfsc _B__VR5,6
    goto _lbl__363
F1_001448 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001449 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_001450 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__363
F1_001452 equ $ ; in [POLYGENCODE.BAS] if RC522ReaderPresent=1 Then
    movlp ((_lbl__365) >> 8)
    btfss _B__VR1,0
    goto _lbl__365
F1_001453 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_DetectPowerDown
    movlp ((RC522_DetectPowerDown) >> 8)
    call RC522_DetectPowerDown
ram_bank = 0
F1_001454 equ $ ; in [POLYGENCODE.BAS] DiagResult.1 = RC522ReaderPresent
    rrf _B__VR1,W
    movlb 0x0D
ram_bank = 13
    btfsc STATUS,0
    bsf DiagResult,1
    btfss STATUS,0
    bcf DiagResult,1
F1_001455 equ $ ; in [POLYGENCODE.BAS] if DiagSilent=0 Then
    movlp ((_lbl__367) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc _B__VR5,6
    goto _lbl__367
F1_001456 equ $ ; in [POLYGENCODE.BAS] if RC522ReaderPresent=1 Then
    movlp ((_lbl__369) >> 8)
    btfss _B__VR1,0
    goto _lbl__369
F1_001457 equ $ ; in [POLYGENCODE.BAS] SoundTemp=17
    movlb 0x0B
ram_bank = 11
    movlw 17
    movwf SoundTemp
    movlb 0x00
ram_bank = 0
    _mjump _lbl__370
_lbl__369
F1_001458 equ $ ; in [POLYGENCODE.BAS] else
F1_001459 equ $ ; in [POLYGENCODE.BAS] SoundTemp=16
    movlb 0x0B
ram_bank = 11
    movlw 16
    movwf SoundTemp
F1_001460 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__370
    movlb 0x00
ram_bank = 0
F1_001461 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001462 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__367
F1_001463 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__365
F1_001464 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_001466 equ $ ; in [POLYGENCODE.BAS] GoSub GetBatteryVoltage
    movlp ((GetBatteryVoltage) >> 8)
    call GetBatteryVoltage
ram_bank = 0
F1_001467 equ $ ; in [POLYGENCODE.BAS] if BatteryVoltage<LowBatteryThreshold Then Set DiagResult.2
    movlw 2
    movlb 0x03
ram_bank = 3
    subwf BatteryVoltageH,W
    movlw 49
    btfsc STATUS,2
    subwf BatteryVoltage,W
    movlp ((_lbl__372) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__372
    movlb 0x0D
ram_bank = 13
    bsf DiagResult,2
_lbl__372
ram_bank = 0
F1_001468 equ $ ; in [POLYGENCODE.BAS] if BatteryVoltage<CritialBatteryThreshold Then Set DiagResult.3
    movlw 1
    movlb 0x03
ram_bank = 3
    subwf BatteryVoltageH,W
    movlw 254
    btfsc STATUS,2
    subwf BatteryVoltage,W
    movlp ((_lbl__374) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__374
    movlb 0x0D
ram_bank = 13
    bsf DiagResult,3
_lbl__374
ram_bank = 0
F1_001469 equ $ ; in [POLYGENCODE.BAS] if BatteryVoltage>=LowBatteryThreshold Then Set DiagResult.4
    movlw 2
    movlb 0x03
ram_bank = 3
    subwf BatteryVoltageH,W
    movlp ((_lbl__376) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _lbl__376
    btfss STATUS,2
    bra _cplb__44
    movlw 49
    movlb 0x03
ram_bank = 3
    subwf BatteryVoltage,W
    movlp ((_lbl__376) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _lbl__376
_cplb__44
ram_bank = 255
    movlb 0x0D
ram_bank = 13
    bsf DiagResult,4
_lbl__376
    movlb 0x00
ram_bank = 0
F1_001470 equ $ ; in [POLYGENCODE.BAS] if DiagSilent=0 Then
    movlp ((_lbl__378) >> 8)
    btfsc _B__VR5,6
    goto _lbl__378
F1_001471 equ $ ; in [POLYGENCODE.BAS] GoSub WaitForSound
    movlp ((WaitForSound) >> 8)
    call WaitForSound
ram_bank = 0
F1_001472 equ $ ; in [POLYGENCODE.BAS] GoSub SayBatteryVoltage
    movlp ((SayBatteryVoltage) >> 8)
    call SayBatteryVoltage
ram_bank = 0
F1_001473 equ $ ; in [POLYGENCODE.BAS] GoSub WaitForSound
    movlp ((WaitForSound) >> 8)
    call WaitForSound
ram_bank = 0
F1_001475 equ $ ; in [POLYGENCODE.BAS] SoundTemp=50
    movlb 0x0B
ram_bank = 11
    movlw 50
    movwf SoundTemp
F1_001476 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001477 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_001478 equ $ ; in [POLYGENCODE.BAS] DelayMs 100
    movlw 100
    movlp ((__delay_ms_) >> 8)
    call __delay_ms_
ram_bank = 0
F1_001479 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__378
F1_001481 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOnWiFi
    movlp ((PowerOnWiFi) >> 8)
    call PowerOnWiFi
ram_bank = 0
F1_001482 equ $ ; in [POLYGENCODE.BAS] Clear WiFiOnSent
    bcf _B__VR3,5
F1_001483 equ $ ; in [POLYGENCODE.BAS] While WiFiPowerOnTimeout>0
_lbl__379
    movlb 0x0A
ram_bank = 10
    movf WiFiPowerOnTimeout,F
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    bra _cplb__45
    movlb 0x0A
ram_bank = 10
    movf WiFiPowerOnTimeoutH,F
    movlp ((_lbl__380) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__380
_cplb__45
ram_bank = 255
F1_001484 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlb 0x00
ram_bank = 0
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_001485 equ $ ; in [POLYGENCODE.BAS] if RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
    movlp ((_lbl__382) >> 8)
    btfss _B__VR1,3
    goto _lbl__382
    movlp ((ProcessWiFiMessage) >> 8)
    call ProcessWiFiMessage
ram_bank = 0
_lbl__382
F1_001486 equ $ ; in [POLYGENCODE.BAS] if WiFiPoweredOnOK=1 And WiFiOnSent=0 Then
    movlw 0
    btfsc _B__VR8,1
    movlw 1
    movwf SP__P9_
    movlw 1
    btfsc _B__VR3,5
    movlw 0
    andwf SP__P9_,F
    movlp ((_lbl__384) >> 8)
    btfsc STATUS,2
    goto _lbl__384
F1_001487 equ $ ; in [POLYGENCODE.BAS] if DiagSilent=0 Then
    movlp ((_lbl__386) >> 8)
    btfsc _B__VR5,6
    goto _lbl__386
F1_001488 equ $ ; in [POLYGENCODE.BAS] SoundTemp=51
    movlb 0x0B
ram_bank = 11
    movlw 51
    movwf SoundTemp
F1_001489 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001490 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__386
F1_001491 equ $ ; in [POLYGENCODE.BAS] Set WiFiOnSent
    bsf _B__VR3,5
F1_001492 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__384
F1_001493 equ $ ; in [POLYGENCODE.BAS] if WiFiConnected=1 Then Break
    movlp ((_lbl__380) >> 8)
    btfsc _B__VR2,1
    goto _lbl__380
F1_001494 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__379
_lbl__380
F1_001495 equ $ ; in [POLYGENCODE.BAS] DiagResult.7=WiFiConnected
    rrf _B__VR2,W
    rrf WREG,F
    movlb 0x0D
ram_bank = 13
    btfsc STATUS,0
    bsf DiagResult,7
    btfss STATUS,0
    bcf DiagResult,7
F1_001496 equ $ ; in [POLYGENCODE.BAS] DiagResult.8=WiFiTimeFailed
    movlb 0x00
ram_bank = 0
    bcf STATUS,1
    btfsc _B__VR2,3
    bsf STATUS,1
    movlb 0x0D
ram_bank = 13
    btfsc STATUS,1
    bsf DiagResultH,0
    btfss STATUS,1
    bcf DiagResultH,0
F1_001497 equ $ ; in [POLYGENCODE.BAS] DiagResult.9=WiFiMQTTFailed
    movlb 0x00
ram_bank = 0
    bcf STATUS,1
    btfsc _B__VR2,2
    bsf STATUS,1
    movlb 0x0D
ram_bank = 13
    btfsc STATUS,1
    bsf DiagResultH,1
    btfss STATUS,1
    bcf DiagResultH,1
F1_001498 equ $ ; in [POLYGENCODE.BAS] DiagResult.15=WiFiFailedToJoinSSID
    movlb 0x00
ram_bank = 0
    rrf _B__VR4,W
    rrf WREG,F
    movlb 0x0D
ram_bank = 13
    btfsc STATUS,0
    bsf DiagResultH,7
    btfss STATUS,0
    bcf DiagResultH,7
F1_001500 equ $ ; in [POLYGENCODE.BAS] if DiagSilent=0 Then
    movlp ((_lbl__390) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc _B__VR5,6
    goto _lbl__390
F1_001501 equ $ ; in [POLYGENCODE.BAS] if WiFiFailedToJoinSSID=1 Then
    movlp ((_lbl__392) >> 8)
    btfss _B__VR4,1
    goto _lbl__392
F1_001502 equ $ ; in [POLYGENCODE.BAS] SoundTemp=65
    movlb 0x0B
ram_bank = 11
    movlw 65
    movwf SoundTemp
F1_001503 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001504 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__392
F1_001505 equ $ ; in [POLYGENCODE.BAS] if WiFiTimeFailed=1 Then
    movlp ((_lbl__394) >> 8)
    btfss _B__VR2,3
    goto _lbl__394
F1_001506 equ $ ; in [POLYGENCODE.BAS] SoundTemp=25
    movlb 0x0B
ram_bank = 11
    movlw 25
    movwf SoundTemp
F1_001507 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001508 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__394
F1_001509 equ $ ; in [POLYGENCODE.BAS] if WiFiMQTTFailed=1 Then
    movlp ((_lbl__396) >> 8)
    btfss _B__VR2,2
    goto _lbl__396
F1_001510 equ $ ; in [POLYGENCODE.BAS] SoundTemp=26
    movlb 0x0B
ram_bank = 11
    movlw 26
    movwf SoundTemp
F1_001511 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001512 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__396
F1_001513 equ $ ; in [POLYGENCODE.BAS] if WiFiConnected=1 Then
    movlp ((_lbl__398) >> 8)
    btfss _B__VR2,1
    goto _lbl__398
F1_001514 equ $ ; in [POLYGENCODE.BAS] SoundTemp=19
    movlb 0x0B
ram_bank = 11
    movlw 19
    movwf SoundTemp
F1_001515 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
    _mjump _lbl__399
_lbl__398
F1_001516 equ $ ; in [POLYGENCODE.BAS] else
F1_001517 equ $ ; in [POLYGENCODE.BAS] SoundTemp=18
    movlb 0x0B
ram_bank = 11
    movlw 18
    movwf SoundTemp
F1_001518 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001519 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__399
F1_001520 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_001521 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__390
F1_001522 equ $ ; in [POLYGENCODE.BAS] Clear WiFiPingPong
    bcf _B__VR3,6
F1_001523 equ $ ; in [POLYGENCODE.BAS] WiFiCMD[0] ="B"
    movlb 0x07
ram_bank = 7
    movlw 66
    movwf WiFiCMD#0
F1_001524 equ $ ; in [POLYGENCODE.BAS] WiFiCMD[1] =0
    clrf WiFiCMD#1
F1_001525 equ $ ; in [POLYGENCODE.BAS] GoSub SendWiFiCMD
    movlb 0x00
ram_bank = 0
    movlp ((SendWiFiCMD) >> 8)
    call SendWiFiCMD
ram_bank = 0
F1_001526 equ $ ; in [POLYGENCODE.BAS] GeneralTimer=50
    movlb 0x0D
ram_bank = 13
    clrf GeneralTimerH
    movlw 50
    movwf GeneralTimer
F1_001527 equ $ ; in [POLYGENCODE.BAS] While GeneralTimer>0
_lbl__400
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movf GeneralTimer,F
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    bra _cplb__46
    movlb 0x0D
ram_bank = 13
    movf GeneralTimerH,F
    movlp ((_lbl__401) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__401
_cplb__46
ram_bank = 255
F1_001528 equ $ ; in [POLYGENCODE.BAS] if RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
    movlp ((_lbl__403) >> 8)
    movlb 0x00
ram_bank = 0
    btfss _B__VR1,3
    goto _lbl__403
    movlp ((ProcessWiFiMessage) >> 8)
    call ProcessWiFiMessage
ram_bank = 0
_lbl__403
F1_001529 equ $ ; in [POLYGENCODE.BAS] if WiFiPingPong=1 Then Break
    movlp ((_lbl__401) >> 8)
    btfsc _B__VR3,6
    goto _lbl__401
F1_001530 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__400
_lbl__401
F1_001531 equ $ ; in [POLYGENCODE.BAS] if WiFiPingPong=1 Then
    movlp ((_lbl__407) >> 8)
    btfss _B__VR3,6
    goto _lbl__407
F1_001532 equ $ ; in [POLYGENCODE.BAS] SoundTemp=52
    movlb 0x0B
ram_bank = 11
    movlw 52
    movwf SoundTemp
F1_001533 equ $ ; in [POLYGENCODE.BAS] Set DiagResult.10
    movlb 0x0D
ram_bank = 13
    bsf DiagResultH,2
    movlb 0x00
ram_bank = 0
    _mjump _lbl__408
_lbl__407
F1_001534 equ $ ; in [POLYGENCODE.BAS] else
F1_001535 equ $ ; in [POLYGENCODE.BAS] SoundTemp=53
    movlb 0x0B
ram_bank = 11
    movlw 53
    movwf SoundTemp
F1_001536 equ $ ; in [POLYGENCODE.BAS] Clear DiagResult.10
    movlb 0x0D
ram_bank = 13
    bcf DiagResultH,2
F1_001537 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__408
    movlb 0x00
ram_bank = 0
F1_001538 equ $ ; in [POLYGENCODE.BAS] if DiagSilent=0 Then
    movlp ((_lbl__410) >> 8)
    btfsc _B__VR5,6
    goto _lbl__410
F1_001539 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001540 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_001541 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__410
F1_001543 equ $ ; in [POLYGENCODE.BAS] Clear WiFiHasKeys
    bcf _B__VR3,7
F1_001544 equ $ ; in [POLYGENCODE.BAS] Clear WiFiNoKeys
    bcf _B__VR4,0
F1_001545 equ $ ; in [POLYGENCODE.BAS] if WiFiPingPong=1 Then
    movlp ((_lbl__412) >> 8)
    btfss _B__VR3,6
    goto _lbl__412
F1_001546 equ $ ; in [POLYGENCODE.BAS] WiFiCMD[0] ="E"
    movlb 0x07
ram_bank = 7
    movlw 69
    movwf WiFiCMD#0
F1_001547 equ $ ; in [POLYGENCODE.BAS] WiFiCMD[1] =0
    clrf WiFiCMD#1
F1_001548 equ $ ; in [POLYGENCODE.BAS] GoSub SendWiFiCMD
    movlb 0x00
ram_bank = 0
    movlp ((SendWiFiCMD) >> 8)
    call SendWiFiCMD
ram_bank = 0
F1_001549 equ $ ; in [POLYGENCODE.BAS] GeneralTimer=50
    movlb 0x0D
ram_bank = 13
    clrf GeneralTimerH
    movlw 50
    movwf GeneralTimer
F1_001550 equ $ ; in [POLYGENCODE.BAS] While GeneralTimer>0
_lbl__413
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movf GeneralTimer,F
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    bra _cplb__47
    movlb 0x0D
ram_bank = 13
    movf GeneralTimerH,F
    movlp ((_lbl__414) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__414
_cplb__47
ram_bank = 255
F1_001551 equ $ ; in [POLYGENCODE.BAS] if RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
    movlp ((_lbl__416) >> 8)
    movlb 0x00
ram_bank = 0
    btfss _B__VR1,3
    goto _lbl__416
    movlp ((ProcessWiFiMessage) >> 8)
    call ProcessWiFiMessage
ram_bank = 0
_lbl__416
F1_001552 equ $ ; in [POLYGENCODE.BAS] if WiFiHasKeys=1 Then Break
    movlp ((_lbl__414) >> 8)
    btfsc _B__VR3,7
    goto _lbl__414
F1_001553 equ $ ; in [POLYGENCODE.BAS] if WiFiNoKeys=1 Then Break
    movlp ((_lbl__414) >> 8)
    btfsc _B__VR4,0
    goto _lbl__414
F1_001554 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__413
_lbl__414
F1_001555 equ $ ; in [POLYGENCODE.BAS] if WiFiHasKeys=1 Then
    movlp ((_lbl__422) >> 8)
    btfss _B__VR3,7
    goto _lbl__422
F1_001556 equ $ ; in [POLYGENCODE.BAS] SoundTemp=63
    movlb 0x0B
ram_bank = 11
    movlw 63
    movwf SoundTemp
F1_001557 equ $ ; in [POLYGENCODE.BAS] Set DiagResult.14
    movlb 0x0D
ram_bank = 13
    bsf DiagResultH,6
    movlb 0x00
ram_bank = 0
    _mjump _lbl__423
_lbl__422
F1_001558 equ $ ; in [POLYGENCODE.BAS] else
F1_001559 equ $ ; in [POLYGENCODE.BAS] SoundTemp=64
    movlb 0x0B
ram_bank = 11
    movlw 64
    movwf SoundTemp
F1_001560 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__423
    movlb 0x00
ram_bank = 0
F1_001561 equ $ ; in [POLYGENCODE.BAS] if DiagSilent=0 Then
    movlp ((_lbl__425) >> 8)
    btfsc _B__VR5,6
    goto _lbl__425
F1_001562 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001563 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_001564 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__425
F1_001565 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__412
F1_001567 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOffWiFi
    movlp ((PowerOffWiFi) >> 8)
    call PowerOffWiFi
ram_bank = 0
F1_001568 equ $ ; in [POLYGENCODE.BAS] GeneralTimer=100
    movlb 0x0D
ram_bank = 13
    clrf GeneralTimerH
    movlw 100
    movwf GeneralTimer
F1_001569 equ $ ; in [POLYGENCODE.BAS] While GeneralTimer>0
_lbl__426
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movf GeneralTimer,F
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    bra _cplb__48
    movlb 0x0D
ram_bank = 13
    movf GeneralTimerH,F
    movlp ((_lbl__427) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__427
_cplb__48
ram_bank = 255
F1_001570 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlb 0x00
ram_bank = 0
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_001571 equ $ ; in [POLYGENCODE.BAS] if RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
    movlp ((_lbl__429) >> 8)
    btfss _B__VR1,3
    goto _lbl__429
    movlp ((ProcessWiFiMessage) >> 8)
    call ProcessWiFiMessage
ram_bank = 0
_lbl__429
F1_001572 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__426
_lbl__427
F1_001574 equ $ ; in [POLYGENCODE.BAS] if WiFiPingPong=1 Then
    movlp ((_lbl__431) >> 8)
    btfss _B__VR3,6
    goto _lbl__431
F1_001575 equ $ ; in [POLYGENCODE.BAS] Clear WiFiPingPong
    bcf _B__VR3,6
F1_001576 equ $ ; in [POLYGENCODE.BAS] WiFiCMD[0] ="B"
    movlb 0x07
ram_bank = 7
    movlw 66
    movwf WiFiCMD#0
F1_001577 equ $ ; in [POLYGENCODE.BAS] WiFiCMD[1] =0
    clrf WiFiCMD#1
F1_001578 equ $ ; in [POLYGENCODE.BAS] GoSub SendWiFiCMD
    movlb 0x00
ram_bank = 0
    movlp ((SendWiFiCMD) >> 8)
    call SendWiFiCMD
ram_bank = 0
F1_001579 equ $ ; in [POLYGENCODE.BAS] GeneralTimer=50
    movlb 0x0D
ram_bank = 13
    clrf GeneralTimerH
    movlw 50
    movwf GeneralTimer
F1_001580 equ $ ; in [POLYGENCODE.BAS] While GeneralTimer>0
_lbl__432
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movf GeneralTimer,F
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    bra _cplb__49
    movlb 0x0D
ram_bank = 13
    movf GeneralTimerH,F
    movlp ((_lbl__433) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__433
_cplb__49
ram_bank = 255
F1_001581 equ $ ; in [POLYGENCODE.BAS] if RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
    movlp ((_lbl__435) >> 8)
    movlb 0x00
ram_bank = 0
    btfss _B__VR1,3
    goto _lbl__435
    movlp ((ProcessWiFiMessage) >> 8)
    call ProcessWiFiMessage
ram_bank = 0
_lbl__435
F1_001582 equ $ ; in [POLYGENCODE.BAS] if WiFiPingPong=1 Then Break
    movlp ((_lbl__433) >> 8)
    btfsc _B__VR3,6
    goto _lbl__433
F1_001583 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__432
_lbl__433
F1_001584 equ $ ; in [POLYGENCODE.BAS] if WiFiPingPong=1 Then
    movlp ((_lbl__439) >> 8)
    btfss _B__VR3,6
    goto _lbl__439
F1_001586 equ $ ; in [POLYGENCODE.BAS] SoundTemp=54
    movlb 0x0B
ram_bank = 11
    movlw 54
    movwf SoundTemp
F1_001587 equ $ ; in [POLYGENCODE.BAS] Clear DiagResult.11
    movlb 0x0D
ram_bank = 13
    bcf DiagResultH,3
    movlb 0x00
ram_bank = 0
    _mjump _lbl__440
_lbl__439
F1_001588 equ $ ; in [POLYGENCODE.BAS] else
F1_001589 equ $ ; in [POLYGENCODE.BAS] SoundTemp=55
    movlb 0x0B
ram_bank = 11
    movlw 55
    movwf SoundTemp
F1_001590 equ $ ; in [POLYGENCODE.BAS] Set DiagResult.11
    movlb 0x0D
ram_bank = 13
    bsf DiagResultH,3
F1_001591 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__440
    movlb 0x00
ram_bank = 0
F1_001592 equ $ ; in [POLYGENCODE.BAS] if DiagSilent=0 Then
    movlp ((_lbl__442) >> 8)
    btfsc _B__VR5,6
    goto _lbl__442
F1_001593 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001594 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_001595 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__442
F1_001596 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__431
F1_001598 equ $ ; in [POLYGENCODE.BAS] if DiagResult.7=1 Then
    movlp ((_lbl__444) >> 8)
    movlb 0x0D
ram_bank = 13
    movf DiagResult,W
    movlb 0x00
ram_bank = 0
    btfss WREG,7
    goto _lbl__444
F1_001599 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOnWiFi
    movlp ((PowerOnWiFi) >> 8)
    call PowerOnWiFi
ram_bank = 0
F1_001600 equ $ ; in [POLYGENCODE.BAS] While WiFiPowerOnTimeout>0
_lbl__445
    movlb 0x0A
ram_bank = 10
    movf WiFiPowerOnTimeout,F
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    bra _cplb__50
    movlb 0x0A
ram_bank = 10
    movf WiFiPowerOnTimeoutH,F
    movlp ((_lbl__446) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__446
_cplb__50
ram_bank = 255
F1_001601 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlb 0x00
ram_bank = 0
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_001602 equ $ ; in [POLYGENCODE.BAS] if RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
    movlp ((_lbl__448) >> 8)
    btfss _B__VR1,3
    goto _lbl__448
    movlp ((ProcessWiFiMessage) >> 8)
    call ProcessWiFiMessage
ram_bank = 0
_lbl__448
F1_001603 equ $ ; in [POLYGENCODE.BAS] if WiFiConnected=1 Then Break
    movlp ((_lbl__446) >> 8)
    btfsc _B__VR2,1
    goto _lbl__446
F1_001604 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__445
_lbl__446
F1_001606 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__444
F1_001608 equ $ ; in [POLYGENCODE.BAS] DiagResult.12=TamperSwitch
    rrf PORTA,W
    movlb 0x0D
ram_bank = 13
    btfsc STATUS,0
    bsf DiagResultH,4
    btfss STATUS,0
    bcf DiagResultH,4
F1_001609 equ $ ; in [POLYGENCODE.BAS] if DiagSilent=0 Then
    movlp ((_lbl__452) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc _B__VR5,6
    goto _lbl__452
F1_001610 equ $ ; in [POLYGENCODE.BAS] if TamperSwitch=1 Then
    movlp ((_lbl__454) >> 8)
    btfss PORTA,0
    goto _lbl__454
F1_001612 equ $ ; in [POLYGENCODE.BAS] SoundTemp=56
    movlb 0x0B
ram_bank = 11
    movlw 56
    movwf SoundTemp
    movlb 0x00
ram_bank = 0
    _mjump _lbl__455
_lbl__454
F1_001613 equ $ ; in [POLYGENCODE.BAS] else
F1_001614 equ $ ; in [POLYGENCODE.BAS] SoundTemp=57
    movlb 0x0B
ram_bank = 11
    movlw 57
    movwf SoundTemp
F1_001615 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__455
    movlb 0x00
ram_bank = 0
F1_001616 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001617 equ $ ; in [POLYGENCODE.BAS] GoSub WaitForSound
    movlp ((WaitForSound) >> 8)
    call WaitForSound
ram_bank = 0
F1_001618 equ $ ; in [POLYGENCODE.BAS] if TamperSwitch=0 Then
    movlp ((_lbl__457) >> 8)
    btfsc PORTA,0
    goto _lbl__457
F1_001619 equ $ ; in [POLYGENCODE.BAS] SoundTemp=58
    movlb 0x0B
ram_bank = 11
    movlw 58
    movwf SoundTemp
F1_001620 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001621 equ $ ; in [POLYGENCODE.BAS] GeneralTimer=250
    movlb 0x0D
ram_bank = 13
    clrf GeneralTimerH
    movlw 250
    movwf GeneralTimer
F1_001622 equ $ ; in [POLYGENCODE.BAS] Clear DiagTempW
    movlb 0x03
ram_bank = 3
    clrf DiagTempWH
    clrf DiagTempW
F1_001623 equ $ ; in [POLYGENCODE.BAS] While GeneralTimer>0
_lbl__458
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movf GeneralTimer,F
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    bra _cplb__51
    movlb 0x0D
ram_bank = 13
    movf GeneralTimerH,F
    movlp ((_lbl__459) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__459
_cplb__51
ram_bank = 255
F1_001624 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlb 0x00
ram_bank = 0
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_001625 equ $ ; in [POLYGENCODE.BAS] if TamperSwitch=1 Then Inc DiagTempW
    movlp ((_lbl__461) >> 8)
    btfss PORTA,0
    goto _lbl__461
    movlb 0x03
ram_bank = 3
    incf DiagTempW,F
    btfsc STATUS,2
    incf DiagTempWH,F
_lbl__461
ram_bank = 0
F1_001626 equ $ ; in [POLYGENCODE.BAS] if DiagTempW>30 Then Break
    movlb 0x03
ram_bank = 3
    movf DiagTempWH,F
    movlp ((_lbl__459) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__459
    movlw 31
    movlb 0x03
ram_bank = 3
    subwf DiagTempW,W
    movlp ((_lbl__459) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__459
F1_001627 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__458
_lbl__459
F1_001628 equ $ ; in [POLYGENCODE.BAS] if DiagTempW>30 Then
    movlb 0x03
ram_bank = 3
    movf DiagTempWH,F
    btfss STATUS,2
    bra _cplb__52
    movlw 31
    subwf DiagTempW,W
    movlp ((_lbl__465) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _lbl__465
_cplb__52
ram_bank = 255
F1_001629 equ $ ; in [POLYGENCODE.BAS] SoundTemp=59
    movlb 0x0B
ram_bank = 11
    movlw 59
    movwf SoundTemp
F1_001630 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001631 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_001632 equ $ ; in [POLYGENCODE.BAS] Set DiagResult.13
    movlb 0x0D
ram_bank = 13
    bsf DiagResultH,5
    movlb 0x00
ram_bank = 0
    _mjump _lbl__466
_lbl__465
F1_001633 equ $ ; in [POLYGENCODE.BAS] else
F1_001634 equ $ ; in [POLYGENCODE.BAS] SoundTemp=60
    movlb 0x0B
ram_bank = 11
    movlw 60
    movwf SoundTemp
F1_001635 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001636 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_001637 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__466
F1_001638 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__457
F1_001639 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__452
F1_001640 equ $ ; in [POLYGENCODE.BAS] if WiFiPoweredOnOK=1 Then
    movlp ((_lbl__468) >> 8)
    btfss _B__VR8,1
    goto _lbl__468
F1_001641 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOffWiFi
    movlp ((PowerOffWiFi) >> 8)
    call PowerOffWiFi
ram_bank = 0
F1_001642 equ $ ; in [POLYGENCODE.BAS] GeneralTimer=100
    movlb 0x0D
ram_bank = 13
    clrf GeneralTimerH
    movlw 100
    movwf GeneralTimer
F1_001643 equ $ ; in [POLYGENCODE.BAS] While GeneralTimer>0
_lbl__469
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movf GeneralTimer,F
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    bra _cplb__53
    movlb 0x0D
ram_bank = 13
    movf GeneralTimerH,F
    movlp ((_lbl__470) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__470
_cplb__53
ram_bank = 255
F1_001644 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlb 0x00
ram_bank = 0
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_001645 equ $ ; in [POLYGENCODE.BAS] if RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
    movlp ((_lbl__472) >> 8)
    btfss _B__VR1,3
    goto _lbl__472
    movlp ((ProcessWiFiMessage) >> 8)
    call ProcessWiFiMessage
ram_bank = 0
_lbl__472
F1_001646 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__469
_lbl__470
F1_001647 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__468
F1_001649 equ $ ; in [POLYGENCODE.BAS] if DiagSilent=0 Then
    movlp ((_lbl__474) >> 8)
    btfsc _B__VR5,6
    goto _lbl__474
F1_001650 equ $ ; in [POLYGENCODE.BAS] SoundTemp=22
    movlb 0x0B
ram_bank = 11
    movlw 22
    movwf SoundTemp
F1_001651 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001652 equ $ ; in [POLYGENCODE.BAS] GoSub WaitForSound
    movlp ((WaitForSound) >> 8)
    call WaitForSound
ram_bank = 0
F1_001653 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__474
F1_001655 equ $ ; in [POLYGENCODE.BAS] if SoundOnAlready=0 Then
    movlp ((_lbl__476) >> 8)
    btfsc _B__VR5,7
    goto _lbl__476
F1_001656 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOffSound
    movlp ((PowerOffSound) >> 8)
    call PowerOffSound
ram_bank = 0
F1_001657 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__476
F1_001659 equ $ ; in [POLYGENCODE.BAS] SoundLevel=SavedSoundLevel
    movlb 0x0D
ram_bank = 13
    movf SavedSoundLevel,W
    movlb 0x07
ram_bank = 7
    movwf SoundLevel
F1_001661 equ $ ; in [POLYGENCODE.BAS] return
    movlb 0x00
ram_bank = 0
    return
SayBatteryVoltage
F1_001666 equ $ ; in [POLYGENCODE.BAS] SoundTemp=12
    movlb 0x0B
ram_bank = 11
    movlw 12
    movwf SoundTemp
F1_001667 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001668 equ $ ; in [POLYGENCODE.BAS] SoundTemp=(BatteryVoltage / 167)
    movlb 0x03
ram_bank = 3
    movf BatteryVoltageH,W
    movlb 0x00
ram_bank = 0
    movwf PP0H
    movlb 0x03
ram_bank = 3
    movf BatteryVoltage,W
    movlb 0x00
ram_bank = 0
    movwf PP0
    clrf PP1H
    movlw 167
    movwf PP1
    movlp ((__divide_u1616_) >> 8)
    call __divide_u1616_
ram_bank = 0
    movlb 0x0B
ram_bank = 11
    movwf SoundTemp
F1_001670 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001671 equ $ ; in [POLYGENCODE.BAS] SoundTemp=10
    movlb 0x0B
ram_bank = 11
    movlw 10
    movwf SoundTemp
F1_001672 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001673 equ $ ; in [POLYGENCODE.BAS] DiagTempW.LowByte=BatteryVoltage // 167
    movlb 0x03
ram_bank = 3
    movf BatteryVoltageH,W
    movlb 0x00
ram_bank = 0
    movwf PP0H
    movlb 0x03
ram_bank = 3
    movf BatteryVoltage,W
    movlb 0x00
ram_bank = 0
    movwf PP0
    clrf PP1H
    movlw 167
    movwf PP1
    movlp ((__divide_u1616_) >> 8)
    call __divide_u1616_
ram_bank = 0
    movf PP2,W
    movlb 0x03
ram_bank = 3
    movwf DiagTempW
F1_001674 equ $ ; in [POLYGENCODE.BAS] SoundTemp=(DiagTempW.LowByte / 16.7)
    movf DiagTempW,W
    movlb 0x00
ram_bank = 0
    movlp ((_uns_int08_tofl32) >> 8)
    call _uns_int08_tofl32
ram_bank = 0
    movlw 154
    movwf PP_BARGHHH
    movlw 153
    movwf PP_BARGHH
    movlw 5
    movwf PP_BARGH
    movlw 131
    movwf PP_BARG
    movlp ((__FpDiv_32__) >> 8)
    call __FpDiv_32__
ram_bank = 0
    movlp ((_fl32_to_int32) >> 8)
    call _fl32_to_int32
ram_bank = 0
    movlb 0x0B
ram_bank = 11
    movwf SoundTemp
F1_001676 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001677 equ $ ; in [POLYGENCODE.BAS] DiagTempW.HighByte=DiagTempW.LowByte // 16.7
    movlw 15
    movlb 0x03
ram_bank = 3
    andwf DiagTempW,W
    movwf DiagTempWH
F1_001678 equ $ ; in [POLYGENCODE.BAS] SoundTemp=(DiagTempW.HighByte / 1.67)
    movf DiagTempWH,W
    movlb 0x00
ram_bank = 0
    movlp ((_uns_int08_tofl32) >> 8)
    call _uns_int08_tofl32
ram_bank = 0
    movlw 143
    movwf PP_BARGHHH
    movlw 194
    movwf PP_BARGHH
    movlw 85
    movwf PP_BARGH
    movlw 127
    movwf PP_BARG
    movlp ((__FpDiv_32__) >> 8)
    call __FpDiv_32__
ram_bank = 0
    movlp ((_fl32_to_int32) >> 8)
    call _fl32_to_int32
ram_bank = 0
    movlb 0x0B
ram_bank = 11
    movwf SoundTemp
F1_001680 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001681 equ $ ; in [POLYGENCODE.BAS] SoundTemp=11
    movlb 0x0B
ram_bank = 11
    movlw 11
    movwf SoundTemp
F1_001682 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001683 equ $ ; in [POLYGENCODE.BAS] return
    return
DepleteBattery
F1_001687 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOnSoundAndWait
    movlp ((PowerOnSoundAndWait) >> 8)
    call PowerOnSoundAndWait
ram_bank = 0
F1_001689 equ $ ; in [POLYGENCODE.BAS] SoundTemp=039
    movlb 0x0B
ram_bank = 11
    movlw 39
    movwf SoundTemp
F1_001690 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_001691 equ $ ; in [POLYGENCODE.BAS] GoSub GetBatteryVoltage
    movlp ((GetBatteryVoltage) >> 8)
    call GetBatteryVoltage
ram_bank = 0
F1_001692 equ $ ; in [POLYGENCODE.BAS] GoSub SayBatteryVoltage
    movlp ((SayBatteryVoltage) >> 8)
    call SayBatteryVoltage
ram_bank = 0
F1_001693 equ $ ; in [POLYGENCODE.BAS] GoSub LED1PowerOn
    movlp ((LED1PowerOn) >> 8)
    call LED1PowerOn
ram_bank = 0
F1_001694 equ $ ; in [POLYGENCODE.BAS] GoSub LED2PowerOn
    movlp ((LED2PowerOn) >> 8)
    call LED2PowerOn
ram_bank = 0
F1_001695 equ $ ; in [POLYGENCODE.BAS] LEDActiveAnimation=10
    movlb 0x0D
ram_bank = 13
    movlw 10
    movwf LEDActiveAnimation
F1_001696 equ $ ; in [POLYGENCODE.BAS] GoSub SendLEDData
    movlb 0x00
ram_bank = 0
    movlp ((SendLEDData) >> 8)
    call SendLEDData
ram_bank = 0
F1_001697 equ $ ; in [POLYGENCODE.BAS] GeneralTimer=500
    movlb 0x0D
ram_bank = 13
    movlw 1
    movwf GeneralTimerH
    movlw 244
    movwf GeneralTimer
F1_001698 equ $ ; in [POLYGENCODE.BAS] While GeneralTimer>0
_lbl__477
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movf GeneralTimer,F
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    bra _cplb__54
    movlb 0x0D
ram_bank = 13
    movf GeneralTimerH,F
    movlp ((_lbl__478) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__478
_cplb__54
ram_bank = 255
F1_001699 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlb 0x00
ram_bank = 0
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_001700 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__477
_lbl__478
F1_001701 equ $ ; in [POLYGENCODE.BAS] Clear CommandMatched
    bcf _B__VR1,7
F1_001702 equ $ ; in [POLYGENCODE.BAS] GeneralTimer=5000
    movlb 0x0D
ram_bank = 13
    movlw 19
    movwf GeneralTimerH
    movlw 136
    movwf GeneralTimer
DepleteLoop
    movlb 0x00
ram_bank = 0
F1_001704 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_001705 equ $ ; in [POLYGENCODE.BAS] GoSub DetectRFID
    movlp ((DetectRFID) >> 8)
    call DetectRFID
ram_bank = 0
F1_001706 equ $ ; in [POLYGENCODE.BAS] if CommandMatched=1 Then return
    movlp ((_lbl__480) >> 8)
    btfss _B__VR1,7
    goto _lbl__480
    return
_lbl__480
F1_001713 equ $ ; in [POLYGENCODE.BAS] if GeneralTimer=0 Then
    movlb 0x0D
ram_bank = 13
    movf GeneralTimerH,W
    iorwf GeneralTimer,W
    movlp ((_lbl__482) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__482
F1_001714 equ $ ; in [POLYGENCODE.BAS] GoSub GetBatteryVoltage
    movlp ((GetBatteryVoltage) >> 8)
    call GetBatteryVoltage
ram_bank = 0
F1_001715 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOnWiFi
    movlp ((PowerOnWiFi) >> 8)
    call PowerOnWiFi
ram_bank = 0
F1_001716 equ $ ; in [POLYGENCODE.BAS] While WiFiPowerOnTimeout>0 And WiFiConnected=0
_lbl__483
    movlb 0x0A
ram_bank = 10
    movf WiFiPowerOnTimeout,W
    iorwf WiFiPowerOnTimeoutH,W
    movlp ((_cplb__55) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _cplb__55
_cplb__56
ram_bank = 255
    clrw
    btfss STATUS,2
_cplb__55
    movlw 1
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlw 1
    btfsc _B__VR2,1
    movlw 0
    andwf SP__P9_,F
    movlp ((_lbl__484) >> 8)
    btfsc STATUS,2
    goto _lbl__484
F1_001717 equ $ ; in [POLYGENCODE.BAS] if RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
    movlp ((_lbl__486) >> 8)
    btfss _B__VR1,3
    goto _lbl__486
    movlp ((ProcessWiFiMessage) >> 8)
    call ProcessWiFiMessage
ram_bank = 0
_lbl__486
F1_001718 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__483
_lbl__484
F1_001719 equ $ ; in [POLYGENCODE.BAS] if WiFiConnected=1 Then
    movlp ((_lbl__488) >> 8)
    btfss _B__VR2,1
    goto _lbl__488
F1_001720 equ $ ; in [POLYGENCODE.BAS] Clear ReceivedGameStatus
    bcf _B__VR4,4
F1_001721 equ $ ; in [POLYGENCODE.BAS] Clear AliveAcknowledged
    bcf _B__VR3,2
F1_001722 equ $ ; in [POLYGENCODE.BAS] GeneralTimer=200
    movlb 0x0D
ram_bank = 13
    clrf GeneralTimerH
    movlw 200
    movwf GeneralTimer
F1_001723 equ $ ; in [POLYGENCODE.BAS] GoSub DoAlivePoll
    movlb 0x00
ram_bank = 0
    movlp ((DoAlivePoll) >> 8)
    call DoAlivePoll
ram_bank = 0
F1_001724 equ $ ; in [POLYGENCODE.BAS] While GeneralTimer>0
_lbl__489
    movlb 0x0D
ram_bank = 13
    movf GeneralTimer,F
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    bra _cplb__57
    movlb 0x0D
ram_bank = 13
    movf GeneralTimerH,F
    movlp ((_lbl__490) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__490
_cplb__57
ram_bank = 255
F1_001725 equ $ ; in [POLYGENCODE.BAS] if RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
    movlp ((_lbl__492) >> 8)
    movlb 0x00
ram_bank = 0
    btfss _B__VR1,3
    goto _lbl__492
    movlp ((ProcessWiFiMessage) >> 8)
    call ProcessWiFiMessage
ram_bank = 0
_lbl__492
F1_001726 equ $ ; in [POLYGENCODE.BAS] if ReceivedGameStatus=1 Or AliveAcknowledged=1 Then Break
    movlw 0
    btfsc _B__VR4,4
    movlw 1
    movwf SP__P9_
    movlw 0
    btfsc _B__VR3,2
    movlw 1
    iorwf SP__P9_,F
    movlp ((_lbl__494) >> 8)
    btfsc STATUS,2
    goto _lbl__494
    _mjump _lbl__490
_lbl__494
F1_001727 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__489
_lbl__490
F1_001728 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__488
F1_001729 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOffWiFi
    movlp ((PowerOffWiFi) >> 8)
    call PowerOffWiFi
ram_bank = 0
F1_001730 equ $ ; in [POLYGENCODE.BAS] if BatteryVoltage<LowBatteryThreshold Then
    movlw 2
    movlb 0x03
ram_bank = 3
    subwf BatteryVoltageH,W
    movlw 49
    btfsc STATUS,2
    subwf BatteryVoltage,W
    movlp ((_lbl__496) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__496
F1_001732 equ $ ; in [POLYGENCODE.BAS] goto PowerOff
    _mjump PowerOff
F1_001733 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__496
F1_001734 equ $ ; in [POLYGENCODE.BAS] GeneralTimer=10000
    movlb 0x0D
ram_bank = 13
    movlw 39
    movwf GeneralTimerH
    movlw 16
    movwf GeneralTimer
F1_001735 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__482
    movlb 0x00
ram_bank = 0
F1_001736 equ $ ; in [POLYGENCODE.BAS] goto DepleteLoop
    _mjump DepleteLoop
RC522_DetectReader
F1_001740 equ $ ; in [POLYGENCODE.BAS] Clear RC522ReaderPresent
    bcf _B__VR1,0
F1_001741 equ $ ; in [POLYGENCODE.BAS] For vstemp=1 To 5
    movlb 0x07
ram_bank = 7
    movlw 1
    movwf vstemp
_frlb__497
ram_bank = 0
    movlw 6
    movlb 0x07
ram_bank = 7
    subwf vstemp,W
    movlp ((_nxlb__498) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _nxlb__498
F1_001742 equ $ ; in [POLYGENCODE.BAS] Set RFIDShutdown
    bsf LATC,5
F1_001743 equ $ ; in [POLYGENCODE.BAS] DelayMs 1
    movlw 1
    movlp ((__delay_ms_) >> 8)
    call __delay_ms_
ram_bank = 0
F1_001744 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Reset
    movlp ((RC522_Reset) >> 8)
    call RC522_Reset
ram_bank = 0
F1_001745 equ $ ; in [POLYGENCODE.BAS] DelayMs 1
    movlw 1
    movlp ((__delay_ms_) >> 8)
    call __delay_ms_
ram_bank = 0
F1_001746 equ $ ; in [POLYGENCODE.BAS] Clear RC522_Value
    clrf RC522_Value
F1_001747 equ $ ; in [POLYGENCODE.BAS] RC522_Address=RC522_Reg_VersionReg
    movlw 55
    movwf RC522_Address
F1_001748 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Read
    movlp ((RC522_Read) >> 8)
    call RC522_Read
ram_bank = 0
F1_001749 equ $ ; in [POLYGENCODE.BAS] Clear RFIDShutdown
    bcf LATC,5
F1_001750 equ $ ; in [POLYGENCODE.BAS] if RC522_Value=0 Then return
    movf RC522_Value,F
    movlp ((_lbl__501) >> 8)
    btfss STATUS,2
    goto _lbl__501
    return
_lbl__501
F1_001751 equ $ ; in [POLYGENCODE.BAS] if RC522_Value=255 Then return
    incf RC522_Value,W
    movlp ((_lbl__503) >> 8)
    btfss STATUS,2
    goto _lbl__503
    return
_lbl__503
F1_001752 equ $ ; in [POLYGENCODE.BAS] if vstemp=1 Then
    movlw 1
    movlb 0x07
ram_bank = 7
    subwf vstemp,W
    movlp ((_lbl__505) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__505
F1_001753 equ $ ; in [POLYGENCODE.BAS] RC522_TokenLen=RC522_Value
    movf RC522_Value,W
    movlb 0x02
ram_bank = 2
    movwf RC522_TokenLen
    movlb 0x00
ram_bank = 0
    _mjump _lbl__506
_lbl__505
F1_001754 equ $ ; in [POLYGENCODE.BAS] else
F1_001755 equ $ ; in [POLYGENCODE.BAS] if RC522_TokenLen<>RC522_Value Then return
    movlb 0x02
ram_bank = 2
    movf RC522_TokenLen,W
    movlb 0x00
ram_bank = 0
    subwf RC522_Value,W
    movlp ((_lbl__508) >> 8)
    btfsc STATUS,2
    goto _lbl__508
    return
_lbl__508
F1_001756 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__506
F1_001757 equ $ ; in [POLYGENCODE.BAS] DelayMs 20
    movlw 20
    movlp ((__delay_ms_) >> 8)
    call __delay_ms_
ram_bank = 0
_ctlb__499
F1_001758 equ $ ; in [POLYGENCODE.BAS] Next
    movlw 1
    movlb 0x07
ram_bank = 7
    addwf vstemp,F
    movlp ((_frlb__497) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _frlb__497
_nxlb__498
F1_001759 equ $ ; in [POLYGENCODE.BAS] Set RC522ReaderPresent
    bsf _B__VR1,0
F1_001760 equ $ ; in [POLYGENCODE.BAS] return
    return
RC522_DetectPowerDown
F1_001763 equ $ ; in [POLYGENCODE.BAS] Set RC522ReaderPresent
    bsf _B__VR1,0
F1_001764 equ $ ; in [POLYGENCODE.BAS] Clear RFIDShutdown
    bcf LATC,5
F1_001765 equ $ ; in [POLYGENCODE.BAS] DelayMs 1
    movlw 1
    movlp ((__delay_ms_) >> 8)
    call __delay_ms_
ram_bank = 0
F1_001766 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Reset
    movlp ((RC522_Reset) >> 8)
    call RC522_Reset
ram_bank = 0
F1_001767 equ $ ; in [POLYGENCODE.BAS] DelayMs 1
    movlw 1
    movlp ((__delay_ms_) >> 8)
    call __delay_ms_
ram_bank = 0
F1_001768 equ $ ; in [POLYGENCODE.BAS] Clear RC522_Value
    clrf RC522_Value
F1_001769 equ $ ; in [POLYGENCODE.BAS] RC522_Address=RC522_Reg_VersionReg
    movlw 55
    movwf RC522_Address
F1_001770 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Read
    movlp ((RC522_Read) >> 8)
    call RC522_Read
ram_bank = 0
F1_001771 equ $ ; in [POLYGENCODE.BAS] if RC522_Value=0 Then return
    movf RC522_Value,F
    movlp ((_lbl__510) >> 8)
    btfss STATUS,2
    goto _lbl__510
    return
_lbl__510
F1_001772 equ $ ; in [POLYGENCODE.BAS] if RC522_Value=255 Then return
    incf RC522_Value,W
    movlp ((_lbl__512) >> 8)
    btfss STATUS,2
    goto _lbl__512
    return
_lbl__512
F1_001773 equ $ ; in [POLYGENCODE.BAS] Clear RC522ReaderPresent
    bcf _B__VR1,0
F1_001774 equ $ ; in [POLYGENCODE.BAS] return
    return
IdleTasks
F1_001777 equ $ ; in [POLYGENCODE.BAS] if RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
    movlp ((_lbl__514) >> 8)
    btfss _B__VR1,3
    goto _lbl__514
    movlp ((ProcessWiFiMessage) >> 8)
    call ProcessWiFiMessage
ram_bank = 0
_lbl__514
F1_001778 equ $ ; in [POLYGENCODE.BAS] if TamperLatch=1 Then GoSub TamperDetected
    movlp ((_lbl__516) >> 8)
    btfss _B__VR4,7
    goto _lbl__516
    movlp ((TamperDetected) >> 8)
    call TamperDetected
ram_bank = 0
_lbl__516
F1_001779 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_001780 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateAnimation
    movlp ((UpdateAnimation) >> 8)
    call UpdateAnimation
ram_bank = 0
F1_001781 equ $ ; in [POLYGENCODE.BAS] return
    return
WaitForSound
F1_001784 equ $ ; in [POLYGENCODE.BAS] SoundTimeout=800
    movlb 0x0B
ram_bank = 11
    movlw 3
    movwf SoundTimeoutH
    movlw 32
    movwf SoundTimeout
F1_001785 equ $ ; in [POLYGENCODE.BAS] GoSub IsSoundPlaying
    movlb 0x00
ram_bank = 0
    movlp ((IsSoundPlaying) >> 8)
    call IsSoundPlaying
ram_bank = 0
F1_001786 equ $ ; in [POLYGENCODE.BAS] While SoundPlaying=1 Or SoundTimeout=0
_lbl__517
    movlw 0
    btfsc _B__VR5,1
    movlw 1
    movwf SP__P9_
    movlb 0x0B
ram_bank = 11
    movf SoundTimeoutH,W
    iorwf SoundTimeout,W
    movlp ((_cplb__58) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _cplb__58
    clrw
    btfss STATUS,2
_cplb__58
    movlw 1
    iorwf SP__P9_,F
    movlp ((_lbl__518) >> 8)
    btfsc STATUS,2
    goto _lbl__518
F1_001787 equ $ ; in [POLYGENCODE.BAS] GoSub IdleTasks
    movlp ((IdleTasks) >> 8)
    call IdleTasks
ram_bank = 0
F1_001788 equ $ ; in [POLYGENCODE.BAS] GoSub IsSoundPlaying
    movlp ((IsSoundPlaying) >> 8)
    call IsSoundPlaying
ram_bank = 0
F1_001789 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__517
_lbl__518
F1_001790 equ $ ; in [POLYGENCODE.BAS] return
    return
IsSoundPlaying
F1_001801 equ $ ; in [POLYGENCODE.BAS] Set SoundPlaying
    bsf _B__VR5,1
F1_001802 equ $ ; in [POLYGENCODE.BAS] if SoundStatus<2 Then Clear SoundPlaying
    movlw 2
    movlb 0x0D
ram_bank = 13
    subwf SoundStatus,W
    movlp ((_lbl__520) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__520
    bcf _B__VR5,1
_lbl__520
F1_001803 equ $ ; in [POLYGENCODE.BAS] if SoundStatus=4 Then
    movlw 4
    movlb 0x0D
ram_bank = 13
    subwf SoundStatus,W
    movlp ((_lbl__522) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__522
F1_001804 equ $ ; in [POLYGENCODE.BAS] if SQNext=SQTail Then Clear SoundPlaying
    movlb 0x0B
ram_bank = 11
    movf SQNext,W
    subwf SQTail,W
    movlp ((_lbl__524) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__524
    bcf _B__VR5,1
_lbl__524
F1_001805 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__522
F1_001806 equ $ ; in [POLYGENCODE.BAS] return
    return
QueueSound
F1_001809 equ $ ; in [POLYGENCODE.BAS] SoundQueue[SQNext] =SoundTemp
    movlb 0x0B
ram_bank = 11
    movf SQNext,W
    addlw 116
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movf SoundTemp,W
    movwf INDF0
F1_001810 equ $ ; in [POLYGENCODE.BAS] Inc SQNext
    incf SQNext,F
F1_001811 equ $ ; in [POLYGENCODE.BAS] if SQNext=SoundQueueLength Then Clear SQNext
    movlw 10
    subwf SQNext,W
    movlp ((_lbl__526) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__526
    movlb 0x0B
ram_bank = 11
    clrf SQNext
_lbl__526
    movlb 0x00
ram_bank = 0
F1_001812 equ $ ; in [POLYGENCODE.BAS] return
    return
PowerOnSoundAndWait
F1_001817 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOnSound
    movlp ((PowerOnSound) >> 8)
    call PowerOnSound
ram_bank = 0
F1_001818 equ $ ; in [POLYGENCODE.BAS] GeneralTimer=600
    movlb 0x0D
ram_bank = 13
    movlw 2
    movwf GeneralTimerH
    movlw 88
    movwf GeneralTimer
F1_001819 equ $ ; in [POLYGENCODE.BAS] While SoundStartDelay<4 And GeneralTimer>0
_lbl__527
ram_bank = 0
    movlw 4
    movlb 0x0B
ram_bank = 11
    subwf SoundStartDelay,W
    movlw 1
    btfsc STATUS,0
    movlw 0
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlb 0x0D
ram_bank = 13
    movf GeneralTimer,W
    iorwf GeneralTimerH,W
    movlp ((_cplb__59) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _cplb__59
_cplb__60
ram_bank = 255
    clrw
    btfss STATUS,2
_cplb__59
    movlw 1
    movlb 0x00
ram_bank = 0
    andwf SP__P9_,F
    movlp ((_lbl__528) >> 8)
    btfsc STATUS,2
    goto _lbl__528
F1_001820 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_001821 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__527
_lbl__528
F1_001822 equ $ ; in [POLYGENCODE.BAS] return
    return
PowerOnSound
F1_001825 equ $ ; in [POLYGENCODE.BAS] if DFRPower=1 Then
    movlp ((_lbl__530) >> 8)
    btfss PORTB,3
    goto _lbl__530
F1_001827 equ $ ; in [POLYGENCODE.BAS] Clear DFRPower
    bcf LATB,3
F1_001828 equ $ ; in [POLYGENCODE.BAS] SoundPowerOnTimeout=50
    movlb 0x0B
ram_bank = 11
    movlw 50
    movwf SoundPowerOnTimeout
F1_001829 equ $ ; in [POLYGENCODE.BAS] While SoundPowerOnTimeout>0
_lbl__531
ram_bank = 0
    movlb 0x0B
ram_bank = 11
    movf SoundPowerOnTimeout,F
    movlp ((_lbl__532) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__532
F1_001830 equ $ ; in [POLYGENCODE.BAS] if RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
    movlp ((_lbl__534) >> 8)
    btfss _B__VR1,3
    goto _lbl__534
    movlp ((ProcessWiFiMessage) >> 8)
    call ProcessWiFiMessage
ram_bank = 0
_lbl__534
F1_001831 equ $ ; in [POLYGENCODE.BAS] if TamperLatch=1 Then GoSub TamperDetected
    movlp ((_lbl__536) >> 8)
    btfss _B__VR4,7
    goto _lbl__536
    movlp ((TamperDetected) >> 8)
    call TamperDetected
ram_bank = 0
_lbl__536
F1_001832 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__531
_lbl__532
F1_001833 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__530
F1_001835 equ $ ; in [POLYGENCODE.BAS] Set DFRPower
    bsf LATB,3
F1_001836 equ $ ; in [POLYGENCODE.BAS] GoSub ClearSoundFlags
    movlp ((ClearSoundFlags) >> 8)
    call ClearSoundFlags
ram_bank = 0
F1_001837 equ $ ; in [POLYGENCODE.BAS] SoundStatus=1
    movlb 0x0D
ram_bank = 13
    movlw 1
    movwf SoundStatus
F1_001838 equ $ ; in [POLYGENCODE.BAS] Clear RX2BufPos
    movlb 0x05
ram_bank = 5
    clrf RX2BufPos
F1_001839 equ $ ; in [POLYGENCODE.BAS] Clear RX2CommandReceived
    movlb 0x00
ram_bank = 0
    bcf _B__VR1,4
F1_001840 equ $ ; in [POLYGENCODE.BAS] SoundCmdPos=SoundCmdBufferLength
    movlb 0x0B
ram_bank = 11
    movlw 10
    movwf SoundCmdPos
F1_001842 equ $ ; in [POLYGENCODE.BAS] BAUD2CON=%00001000
    movlb 0x14
ram_bank = 20
    movlw 8
    movwf BAUD2CON
F1_001843 equ $ ; in [POLYGENCODE.BAS] SP2BRGL=64
    movlw 64
    movwf SP2BRGL
F1_001844 equ $ ; in [POLYGENCODE.BAS] SP2BRGH=3
    movlw 3
    movwf SP2BRGH
F1_001845 equ $ ; in [POLYGENCODE.BAS] TX2STA=%00100110
    movlw 38
    movwf TX2STA
F1_001846 equ $ ; in [POLYGENCODE.BAS] RC2STA=%10010000
    movlw 144
    movwf RC2STA
F1_001847 equ $ ; in [POLYGENCODE.BAS] Set PIE3.7
    movlb 0x0E
ram_bank = 14
    bsf PIE3,7
F1_001849 equ $ ; in [POLYGENCODE.BAS] SoundPowerOnTimeout=120
    movlb 0x0B
ram_bank = 11
    movlw 120
    movwf SoundPowerOnTimeout
F1_001850 equ $ ; in [POLYGENCODE.BAS] Clear SQNext
    clrf SQNext
F1_001851 equ $ ; in [POLYGENCODE.BAS] Clear SQTail
    clrf SQTail
F1_001852 equ $ ; in [POLYGENCODE.BAS] Input SerialInDFR
    movlb 0x00
ram_bank = 0
    bsf TRISB,4
F1_001853 equ $ ; in [POLYGENCODE.BAS] Output SerialOutDFR
    bcf TRISB,5
F1_001854 equ $ ; in [POLYGENCODE.BAS] return
    return
ClearSoundFlags
F1_001857 equ $ ; in [POLYGENCODE.BAS] Clear SoundRspError
    bcf _B__VR6,1
F1_001858 equ $ ; in [POLYGENCODE.BAS] Clear SoundRspCardInsert
    bcf _B__VR6,2
F1_001859 equ $ ; in [POLYGENCODE.BAS] Clear SoundRspCardRemove
    bcf _B__VR6,3
F1_001860 equ $ ; in [POLYGENCODE.BAS] Clear SoundCmdAck
    bcf _B__VR6,4
F1_001861 equ $ ; in [POLYGENCODE.BAS] Clear SoundFinishedPlaying
    bcf _B__VR6,5
F1_001862 equ $ ; in [POLYGENCODE.BAS] Clear SoundPoweredOn
    bcf _B__VR6,6
F1_001863 equ $ ; in [POLYGENCODE.BAS] return
    return
UpdateSound
F1_001869 equ $ ; in [POLYGENCODE.BAS] if RX2CommandReceived=1 Then
    movlp ((_lbl__538) >> 8)
    btfss _B__VR1,4
    goto _lbl__538
F1_001870 equ $ ; in [POLYGENCODE.BAS] Clear RX2CommandReceived
    bcf _B__VR1,4
F1_001871 equ $ ; in [POLYGENCODE.BAS] if RX2Buffer[0] =0x7E And RX2Buffer[1] =0xFF And RX2Buffer[2] =0x06 And RX2Buffer[9] =0xEF Then
    movlb 0x05
ram_bank = 5
    movf RX2Buffer#0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR0
    movlw 126
    subwf PBS_VAR0,W
    movlw 1
    btfss STATUS,2
    movlw 0
    movwf SP__P9_
    movlb 0x05
ram_bank = 5
    movf RX2Buffer#1,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR0
    incf PBS_VAR0,W
    movlw 1
    btfss STATUS,2
    movlw 0
    andwf SP__P9_,F
    movlb 0x05
ram_bank = 5
    movf RX2Buffer#2,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR0
    movlw 6
    subwf PBS_VAR0,W
    movlw 1
    btfss STATUS,2
    movlw 0
    andwf SP__P9_,F
    movlb 0x05
ram_bank = 5
    movf RX2Buffer#9,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR0
    movlw 239
    subwf PBS_VAR0,W
    movlw 1
    btfss STATUS,2
    movlw 0
    andwf SP__P9_,F
    movlp ((_lbl__540) >> 8)
    btfsc STATUS,2
    goto _lbl__540
F1_001873 equ $ ; in [POLYGENCODE.BAS] Select RX2Buffer[3]
    movlb 0x05
ram_bank = 5
    movf RX2Buffer#3,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR0
F1_001874 equ $ ; in [POLYGENCODE.BAS] Case 0x41
    movlw 65
    subwf PBS_VAR0,W
    movlp ((_lbl__542) >> 8)
    btfss STATUS,2
    goto _lbl__542
F1_001875 equ $ ; in [POLYGENCODE.BAS] Set SoundCmdAck
    bsf _B__VR6,4
    _mjump _lbl__541
_lbl__542
F1_001876 equ $ ; in [POLYGENCODE.BAS] Case 0x40
    movlw 64
    subwf PBS_VAR0,W
    movlp ((_lbl__545) >> 8)
    btfss STATUS,2
    goto _lbl__545
F1_001877 equ $ ; in [POLYGENCODE.BAS] Set SoundRspError
    bsf _B__VR6,1
    _mjump _lbl__541
_lbl__545
F1_001878 equ $ ; in [POLYGENCODE.BAS] Case 0x3A
    movlw 58
    subwf PBS_VAR0,W
    movlp ((_lbl__547) >> 8)
    btfss STATUS,2
    goto _lbl__547
F1_001879 equ $ ; in [POLYGENCODE.BAS] Set SoundRspCardInsert
    bsf _B__VR6,2
    _mjump _lbl__541
_lbl__547
F1_001880 equ $ ; in [POLYGENCODE.BAS] Case 0x3B
    movlw 59
    subwf PBS_VAR0,W
    movlp ((_lbl__549) >> 8)
    btfss STATUS,2
    goto _lbl__549
F1_001881 equ $ ; in [POLYGENCODE.BAS] Set SoundRspCardRemove
    bsf _B__VR6,3
    _mjump _lbl__541
_lbl__549
F1_001882 equ $ ; in [POLYGENCODE.BAS] Case 0x3D
    movlw 61
    subwf PBS_VAR0,W
    movlp ((_lbl__551) >> 8)
    btfss STATUS,2
    goto _lbl__551
F1_001883 equ $ ; in [POLYGENCODE.BAS] Set SoundFinishedPlaying
    bsf _B__VR6,5
    _mjump _lbl__541
_lbl__551
F1_001885 equ $ ; in [POLYGENCODE.BAS] Case 0x3F
    movlw 63
    subwf PBS_VAR0,W
    movlp ((_lbl__553) >> 8)
    btfss STATUS,2
    goto _lbl__553
F1_001886 equ $ ; in [POLYGENCODE.BAS] if SoundStatus=1 Then Set SoundPoweredOn
    movlw 1
    movlb 0x0D
ram_bank = 13
    subwf SoundStatus,W
    movlp ((_lbl__555) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__555
    bsf _B__VR6,6
_lbl__555
F1_001887 equ $ ; in [POLYGENCODE.BAS] EndSelect
_lbl__553
_lbl__541
F1_001888 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__540
F1_001889 equ $ ; in [POLYGENCODE.BAS] Clear RX2Buffer
    movlw 0x21
    movwf FSR0LH
    movlw 0xCD
    movwf FSR0L
    movlw 10
    movwf PP0
    movlw 0
    movwi INDF0++
    decfsz PP0,F
    bra $ - 3
F1_001890 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__538
F1_001893 equ $ ; in [POLYGENCODE.BAS] if SoundRspError=1 Then
    movlp ((_lbl__557) >> 8)
    btfss _B__VR6,1
    goto _lbl__557
F1_001894 equ $ ; in [POLYGENCODE.BAS] Clear SoundRspError
    bcf _B__VR6,1
F1_001895 equ $ ; in [POLYGENCODE.BAS] Inc SoundRspRetryCount
    movlb 0x0D
ram_bank = 13
    incf SoundRspRetryCount,F
F1_001896 equ $ ; in [POLYGENCODE.BAS] if SoundRspRetryCount<4 Then
    movlw 4
    subwf SoundRspRetryCount,W
    movlp ((_lbl__559) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__559
F1_001897 equ $ ; in [POLYGENCODE.BAS] SoundCmdPos=1
    movlb 0x0B
ram_bank = 11
    movlw 1
    movwf SoundCmdPos
F1_001898 equ $ ; in [POLYGENCODE.BAS] TX2REG=Start_Byte
    movlb 0x14
ram_bank = 20
    movlw 126
    movwf TX2REG
F1_001899 equ $ ; in [POLYGENCODE.BAS] Set PIE3.6
    movlb 0x0E
ram_bank = 14
    bsf PIE3,6
F1_001900 equ $ ; in [POLYGENCODE.BAS] SoundStartDelay=60
    movlb 0x0B
ram_bank = 11
    movlw 60
    movwf SoundStartDelay
F1_001901 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__559
ram_bank = 0
F1_001902 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__557
F1_001904 equ $ ; in [POLYGENCODE.BAS] Select SoundStatus
F1_001905 equ $ ; in [POLYGENCODE.BAS] Case 1
    movlw 1
    movlb 0x0D
ram_bank = 13
    subwf SoundStatus,W
    movlp ((_lbl__561) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__561
F1_001907 equ $ ; in [POLYGENCODE.BAS] if SoundPowerOnTimeout=0 Then Set SoundPoweredOn
    movlb 0x0B
ram_bank = 11
    movf SoundPowerOnTimeout,F
    movlp ((_lbl__564) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__564
    bsf _B__VR6,6
_lbl__564
F1_001908 equ $ ; in [POLYGENCODE.BAS] if SoundPoweredOn=1 Then
    movlp ((_lbl__566) >> 8)
    btfss _B__VR6,6
    goto _lbl__566
F1_001909 equ $ ; in [POLYGENCODE.BAS] Inc SoundStatus
    movlb 0x0D
ram_bank = 13
    incf SoundStatus,F
F1_001910 equ $ ; in [POLYGENCODE.BAS] SoundStartDelay=5
    movlb 0x0B
ram_bank = 11
    movlw 5
    movwf SoundStartDelay
F1_001911 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__566
    movlb 0x00
ram_bank = 0
    _mjump _lbl__560
_lbl__561
F1_001912 equ $ ; in [POLYGENCODE.BAS] Case 2
    movlw 2
    movlb 0x0D
ram_bank = 13
    subwf SoundStatus,W
    movlp ((_lbl__568) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__568
F1_001914 equ $ ; in [POLYGENCODE.BAS] if SoundStartDelay=0 Then
    movlb 0x0B
ram_bank = 11
    movf SoundStartDelay,F
    movlp ((_lbl__570) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__570
F1_001915 equ $ ; in [POLYGENCODE.BAS] Clear SoundCmdAck
    bcf _B__VR6,4
F1_001916 equ $ ; in [POLYGENCODE.BAS] Inc SoundStatus
    movlb 0x0D
ram_bank = 13
    incf SoundStatus,F
F1_001917 equ $ ; in [POLYGENCODE.BAS] cmd=$06
    movlb 0x0B
ram_bank = 11
    movlw 6
    movwf cmd
F1_001918 equ $ ; in [POLYGENCODE.BAS] cmdp1=0
    clrf cmdp1
F1_001919 equ $ ; in [POLYGENCODE.BAS] cmdp2=SoundLevel
    movlb 0x07
ram_bank = 7
    movf SoundLevel,W
    movlb 0x0B
ram_bank = 11
    movwf cmdp2
F1_001920 equ $ ; in [POLYGENCODE.BAS] if TamperLatch=1 Then cmdp2=30
    movlp ((_lbl__572) >> 8)
    movlb 0x00
ram_bank = 0
    btfss _B__VR4,7
    goto _lbl__572
    movlb 0x0B
ram_bank = 11
    movlw 30
    movwf cmdp2
_lbl__572
    movlb 0x00
ram_bank = 0
F1_001921 equ $ ; in [POLYGENCODE.BAS] GoSub SendSoundCmd
    movlp ((SendSoundCmd) >> 8)
    call SendSoundCmd
ram_bank = 0
F1_001922 equ $ ; in [POLYGENCODE.BAS] SoundStartDelay=20
    movlb 0x0B
ram_bank = 11
    movlw 20
    movwf SoundStartDelay
F1_001923 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__570
    movlb 0x00
ram_bank = 0
    _mjump _lbl__560
_lbl__568
F1_001924 equ $ ; in [POLYGENCODE.BAS] Case 3
    movlw 3
    movlb 0x0D
ram_bank = 13
    subwf SoundStatus,W
    movlp ((_lbl__574) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__574
F1_001926 equ $ ; in [POLYGENCODE.BAS] if SoundStartDelay=0 Then Set SoundCmdAck
    movlb 0x0B
ram_bank = 11
    movf SoundStartDelay,F
    movlp ((_lbl__576) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__576
    bsf _B__VR6,4
_lbl__576
F1_001927 equ $ ; in [POLYGENCODE.BAS] if SoundCmdAck=1 Then
    movlp ((_lbl__578) >> 8)
    btfss _B__VR6,4
    goto _lbl__578
F1_001928 equ $ ; in [POLYGENCODE.BAS] SoundStartDelay=5
    movlb 0x0B
ram_bank = 11
    movlw 5
    movwf SoundStartDelay
F1_001929 equ $ ; in [POLYGENCODE.BAS] Inc SoundStatus
    movlb 0x0D
ram_bank = 13
    incf SoundStatus,F
F1_001930 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__578
    movlb 0x00
ram_bank = 0
    _mjump _lbl__560
_lbl__574
F1_001931 equ $ ; in [POLYGENCODE.BAS] Case 4
    movlw 4
    movlb 0x0D
ram_bank = 13
    subwf SoundStatus,W
    movlp ((_lbl__580) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__580
F1_001933 equ $ ; in [POLYGENCODE.BAS] if SoundVolumeSetRequested=1 Then
    movlp ((_lbl__582) >> 8)
    btfss _B__VR6,0
    goto _lbl__582
F1_001934 equ $ ; in [POLYGENCODE.BAS] Clear SoundVolumeSetRequested
    bcf _B__VR6,0
F1_001935 equ $ ; in [POLYGENCODE.BAS] SoundStatus=2
    movlb 0x0D
ram_bank = 13
    movlw 2
    movwf SoundStatus
    movlb 0x00
ram_bank = 0
    _mjump _lbl__581
F1_001936 equ $ ; in [POLYGENCODE.BAS] ElseIf SQNext<>SQTail Then
_lbl__582
    movlb 0x0B
ram_bank = 11
    movf SQNext,W
    subwf SQTail,W
    movlp ((_lbl__583) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__583
F1_001937 equ $ ; in [POLYGENCODE.BAS] cmdp2=SoundQueue[SQTail]
    movlb 0x0B
ram_bank = 11
    movf SQTail,W
    addlw 116
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movwf cmdp2
F1_001938 equ $ ; in [POLYGENCODE.BAS] Inc SQTail
    incf SQTail,F
F1_001939 equ $ ; in [POLYGENCODE.BAS] if SQTail=SoundQueueLength Then Clear SQTail
    movlw 10
    subwf SQTail,W
    movlp ((_lbl__585) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__585
    movlb 0x0B
ram_bank = 11
    clrf SQTail
_lbl__585
ram_bank = 0
F1_001940 equ $ ; in [POLYGENCODE.BAS] cmd=$03
    movlb 0x0B
ram_bank = 11
    movlw 3
    movwf cmd
F1_001941 equ $ ; in [POLYGENCODE.BAS] cmdp1=0
    clrf cmdp1
F1_001942 equ $ ; in [POLYGENCODE.BAS] GoSub SendSoundCmd
    movlb 0x00
ram_bank = 0
    movlp ((SendSoundCmd) >> 8)
    call SendSoundCmd
ram_bank = 0
F1_001943 equ $ ; in [POLYGENCODE.BAS] GoSub ClearSoundFlags
    movlp ((ClearSoundFlags) >> 8)
    call ClearSoundFlags
ram_bank = 0
F1_001944 equ $ ; in [POLYGENCODE.BAS] Clear SoundRspRetryCount
    movlb 0x0D
ram_bank = 13
    clrf SoundRspRetryCount
F1_001945 equ $ ; in [POLYGENCODE.BAS] Inc SoundStatus
    incf SoundStatus,F
F1_001946 equ $ ; in [POLYGENCODE.BAS] SoundStartDelay=60
    movlb 0x0B
ram_bank = 11
    movlw 60
    movwf SoundStartDelay
F1_001947 equ $ ; in [POLYGENCODE.BAS] Clear NextSoundNow
    movlb 0x00
ram_bank = 0
    bcf _B__VR5,0
F1_001948 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__583
_lbl__581
    _mjump _lbl__560
_lbl__580
F1_001949 equ $ ; in [POLYGENCODE.BAS] Case 5
    movlw 5
    movlb 0x0D
ram_bank = 13
    subwf SoundStatus,W
    movlp ((_lbl__587) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__587
F1_001951 equ $ ; in [POLYGENCODE.BAS] if SoundStartDelay=0 Then
    movlb 0x0B
ram_bank = 11
    movf SoundStartDelay,F
    movlp ((_lbl__589) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__589
F1_001952 equ $ ; in [POLYGENCODE.BAS] if DFRBusy=1 Then Set SoundFinishedPlaying
    movlp ((_lbl__591) >> 8)
    btfss PORTB,2
    goto _lbl__591
    bsf _B__VR6,5
_lbl__591
F1_001953 equ $ ; in [POLYGENCODE.BAS] if NextSoundNow=1 Then
    movlp ((_lbl__593) >> 8)
    btfss _B__VR5,0
    goto _lbl__593
F1_001954 equ $ ; in [POLYGENCODE.BAS] Clear NextSoundNow
    bcf _B__VR5,0
F1_001955 equ $ ; in [POLYGENCODE.BAS] SoundStatus=4
    movlb 0x0D
ram_bank = 13
    movlw 4
    movwf SoundStatus
F1_001956 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__593
    movlb 0x00
ram_bank = 0
F1_001957 equ $ ; in [POLYGENCODE.BAS] if SoundFinishedPlaying=1 Then
    movlp ((_lbl__595) >> 8)
    btfss _B__VR6,5
    goto _lbl__595
F1_001958 equ $ ; in [POLYGENCODE.BAS] SoundStatus=4
    movlb 0x0D
ram_bank = 13
    movlw 4
    movwf SoundStatus
F1_001959 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__595
    movlb 0x00
ram_bank = 0
F1_001960 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__589
F1_001961 equ $ ; in [POLYGENCODE.BAS] EndSelect
_lbl__587
_lbl__560
F1_001962 equ $ ; in [POLYGENCODE.BAS] return
    return
PowerOffSound
F1_001973 equ $ ; in [POLYGENCODE.BAS] Input SerialOutDFR
    bsf TRISB,5
F1_001974 equ $ ; in [POLYGENCODE.BAS] Clear PIE3.7
    movlb 0x0E
ram_bank = 14
    bcf PIE3,7
F1_001975 equ $ ; in [POLYGENCODE.BAS] Clear PIE3.6
    bcf PIE3,6
F1_001977 equ $ ; in [POLYGENCODE.BAS] Clear TX2STA
    movlb 0x14
ram_bank = 20
    clrf TX2STA
F1_001978 equ $ ; in [POLYGENCODE.BAS] Clear RC2STA
    clrf RC2STA
F1_001979 equ $ ; in [POLYGENCODE.BAS] Clear DFRPower
    movlb 0x00
ram_bank = 0
    bcf LATB,3
F1_001980 equ $ ; in [POLYGENCODE.BAS] Clear SoundStatus
    movlb 0x0D
ram_bank = 13
    clrf SoundStatus
F1_001981 equ $ ; in [POLYGENCODE.BAS] return
    movlb 0x00
ram_bank = 0
    return
SendSoundCmd
F1_001985 equ $ ; in [POLYGENCODE.BAS] Clear SoundCmdAck
    bcf _B__VR6,4
F1_001986 equ $ ; in [POLYGENCODE.BAS] Clear SoundRspError
    bcf _B__VR6,1
F1_001987 equ $ ; in [POLYGENCODE.BAS] SoundTempW=-(Version_Byte + Command_Length + cmd + Acknowledge + cmdp1 + cmdp2)
    clrf PP7H
    movlw 255
    movwf PP7
    movlw 6
    addwf PP7,F
    movlw 0
    addwfc PP7H,F
    movlb 0x0B
ram_bank = 11
    movf cmd,W
    movlb 0x00
ram_bank = 0
    addwf PP7,F
    movlw 0
    addwfc PP7H,F
    incf PP7,F
    btfsc STATUS,2
    incf PP7H,F
    movlb 0x0B
ram_bank = 11
    movf cmdp1,W
    movlb 0x00
ram_bank = 0
    addwf PP7,F
    movlw 0
    addwfc PP7H,F
    movlb 0x0B
ram_bank = 11
    movf cmdp2,W
    movlb 0x00
ram_bank = 0
    addwf PP7,W
    movlb 0x0B
ram_bank = 11
    movwf SoundTempW
    movlw 0
    movlb 0x00
ram_bank = 0
    addwfc PP7H,W
    movlb 0x0B
ram_bank = 11
    movwf SoundTempWH
    comf SoundTempWH,F
    comf SoundTempW,F
    incf SoundTempW,F
    btfsc STATUS,2
    incf SoundTempWH,F
F1_001989 equ $ ; in [POLYGENCODE.BAS] SoundCmd[1] =Version_Byte
    movlw 255
    movwf SoundCmd#1
F1_001990 equ $ ; in [POLYGENCODE.BAS] SoundCmd[2] =Command_Length
    movlw 6
    movwf SoundCmd#2
F1_001991 equ $ ; in [POLYGENCODE.BAS] SoundCmd[3] =cmd
    movf cmd,W
    movwf SoundCmd#3
F1_001992 equ $ ; in [POLYGENCODE.BAS] SoundCmd[4] =Acknowledge
    movlw 1
    movwf SoundCmd#4
F1_001993 equ $ ; in [POLYGENCODE.BAS] SoundCmd[5] =cmdp1
    movf cmdp1,W
    movwf SoundCmd#5
F1_001994 equ $ ; in [POLYGENCODE.BAS] SoundCmd[6] =cmdp2
    movf cmdp2,W
    movwf SoundCmd#6
F1_001995 equ $ ; in [POLYGENCODE.BAS] SoundCmd[7] =SoundTempW.HighByte
    movf SoundTempWH,W
    movwf SoundCmd#7
F1_001996 equ $ ; in [POLYGENCODE.BAS] SoundCmd[8] =SoundTempW.LowByte
    movf SoundTempW,W
    movwf SoundCmd#8
F1_001997 equ $ ; in [POLYGENCODE.BAS] SoundCmd[9] =End_Byte
    movlw 239
    movwf SoundCmd#9
F1_001998 equ $ ; in [POLYGENCODE.BAS] SoundCmdPos=1
    movlw 1
    movwf SoundCmdPos
F1_001999 equ $ ; in [POLYGENCODE.BAS] TX2REG=Start_Byte
    movlb 0x14
ram_bank = 20
    movlw 126
    movwf TX2REG
F1_002000 equ $ ; in [POLYGENCODE.BAS] Set PIE3.6
    movlb 0x0E
ram_bank = 14
    bsf PIE3,6
F1_002001 equ $ ; in [POLYGENCODE.BAS] return
    movlb 0x00
ram_bank = 0
    return
TamperDetected
F1_002007 equ $ ; in [POLYGENCODE.BAS] Clear CycleCount
    movlb 0x0D
ram_bank = 13
    clrf CycleCount
F1_002008 equ $ ; in [POLYGENCODE.BAS] if InTamperState=1 Then return
    movlp ((_lbl__597) >> 8)
    movlb 0x00
ram_bank = 0
    btfss _B__VR6,7
    goto _lbl__597
    return
_lbl__597
F1_002009 equ $ ; in [POLYGENCODE.BAS] Set InTamperState
    bsf _B__VR6,7
F1_002010 equ $ ; in [POLYGENCODE.BAS] Set SoundVolumeSetRequested
    bsf _B__VR6,0
F1_002011 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOnWiFi
    movlp ((PowerOnWiFi) >> 8)
    call PowerOnWiFi
ram_bank = 0
F1_002012 equ $ ; in [POLYGENCODE.BAS] if DFRPower=0 Then GoSub PowerOnSound
    movlp ((_lbl__599) >> 8)
    btfsc PORTB,3
    goto _lbl__599
    movlp ((PowerOnSound) >> 8)
    call PowerOnSound
ram_bank = 0
_lbl__599
F1_002013 equ $ ; in [POLYGENCODE.BAS] GoSub LED1PowerOn
    movlp ((LED1PowerOn) >> 8)
    call LED1PowerOn
ram_bank = 0
F1_002014 equ $ ; in [POLYGENCODE.BAS] GoSub LED2PowerOn
    movlp ((LED2PowerOn) >> 8)
    call LED2PowerOn
ram_bank = 0
F1_002015 equ $ ; in [POLYGENCODE.BAS] LEDActiveAnimation=9
    movlb 0x0D
ram_bank = 13
    movlw 9
    movwf LEDActiveAnimation
F1_002016 equ $ ; in [POLYGENCODE.BAS] GoSub PlayAnimation
    movlb 0x00
ram_bank = 0
    movlp ((PlayAnimation) >> 8)
    call PlayAnimation
ram_bank = 0
F1_002017 equ $ ; in [POLYGENCODE.BAS] SoundTemp=033
    movlb 0x0B
ram_bank = 11
    movlw 33
    movwf SoundTemp
F1_002018 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_002019 equ $ ; in [POLYGENCODE.BAS] SoundTemp=034
    movlb 0x0B
ram_bank = 11
    movlw 34
    movwf SoundTemp
F1_002020 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_002025 equ $ ; in [POLYGENCODE.BAS] While WiFiPowerOnTimeout>0 And WiFiConnected=0
_lbl__600
    movlb 0x0A
ram_bank = 10
    movf WiFiPowerOnTimeout,W
    iorwf WiFiPowerOnTimeoutH,W
    movlp ((_cplb__61) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _cplb__61
_cplb__62
ram_bank = 255
    clrw
    btfss STATUS,2
_cplb__61
    movlw 1
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlw 1
    btfsc _B__VR2,1
    movlw 0
    andwf SP__P9_,F
    movlp ((_lbl__601) >> 8)
    btfsc STATUS,2
    goto _lbl__601
F1_002026 equ $ ; in [POLYGENCODE.BAS] if RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
    movlp ((_lbl__603) >> 8)
    btfss _B__VR1,3
    goto _lbl__603
    movlp ((ProcessWiFiMessage) >> 8)
    call ProcessWiFiMessage
ram_bank = 0
_lbl__603
F1_002027 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_002028 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateAnimation
    movlp ((UpdateAnimation) >> 8)
    call UpdateAnimation
ram_bank = 0
F1_002029 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__600
_lbl__601
F1_002030 equ $ ; in [POLYGENCODE.BAS] WiFiCMD="HSWITCH"
    movlw 34
    movwf FSR0LH
    movlw 120
    movwf FSR0L
    movlw ((((_strlb__1) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__1) + 0X8000) & 0xFF)
    movwf FSR1L
    moviw INDF1++
    btfsc STATUS,2
    bra $ + 3
    movwi INDF0++
    bra $ - 4
    clrf INDF0
F1_002031 equ $ ; in [POLYGENCODE.BAS] GoSub SendWiFiCMD
    movlp ((SendWiFiCMD) >> 8)
    call SendWiFiCMD
ram_bank = 0
F1_002032 equ $ ; in [POLYGENCODE.BAS] GeneralTimer=50
    movlb 0x0D
ram_bank = 13
    clrf GeneralTimerH
    movlw 50
    movwf GeneralTimer
F1_002033 equ $ ; in [POLYGENCODE.BAS] While GeneralTimer>0
_lbl__604
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movf GeneralTimer,F
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    bra _cplb__63
    movlb 0x0D
ram_bank = 13
    movf GeneralTimerH,F
    movlp ((_lbl__605) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__605
_cplb__63
ram_bank = 255
F1_002034 equ $ ; in [POLYGENCODE.BAS] if RX1CommandReceived=1 Then GoSub ProcessWiFiMessage
    movlp ((_lbl__607) >> 8)
    movlb 0x00
ram_bank = 0
    btfss _B__VR1,3
    goto _lbl__607
    movlp ((ProcessWiFiMessage) >> 8)
    call ProcessWiFiMessage
ram_bank = 0
_lbl__607
F1_002035 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_002036 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateAnimation
    movlp ((UpdateAnimation) >> 8)
    call UpdateAnimation
ram_bank = 0
F1_002037 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__604
_lbl__605
F1_002038 equ $ ; in [POLYGENCODE.BAS] GeneralTimer=500
    movlb 0x0D
ram_bank = 13
    movlw 1
    movwf GeneralTimerH
    movlw 244
    movwf GeneralTimer
TamperDetectedLoop
    movlb 0x00
ram_bank = 0
F1_002041 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateAnimation
    movlp ((UpdateAnimation) >> 8)
    call UpdateAnimation
ram_bank = 0
F1_002042 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_002043 equ $ ; in [POLYGENCODE.BAS] if SQTail=SQNext Then
    movlb 0x0B
ram_bank = 11
    movf SQTail,W
    subwf SQNext,W
    movlp ((_lbl__609) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__609
F1_002044 equ $ ; in [POLYGENCODE.BAS] if CycleCount<10 Then
    movlw 10
    movlb 0x0D
ram_bank = 13
    subwf CycleCount,W
    movlp ((_lbl__611) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__611
F1_002045 equ $ ; in [POLYGENCODE.BAS] SoundTemp=033
    movlb 0x0B
ram_bank = 11
    movlw 33
    movwf SoundTemp
F1_002046 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_002047 equ $ ; in [POLYGENCODE.BAS] SoundTemp=034
    movlb 0x0B
ram_bank = 11
    movlw 34
    movwf SoundTemp
F1_002048 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_002049 equ $ ; in [POLYGENCODE.BAS] Inc CycleCount
    movlb 0x0D
ram_bank = 13
    incf CycleCount,F
F1_002050 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__611
ram_bank = 0
F1_002051 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__609
F1_002052 equ $ ; in [POLYGENCODE.BAS] if GeneralTimer=0 Then
    movlb 0x0D
ram_bank = 13
    movf GeneralTimerH,W
    iorwf GeneralTimer,W
    movlp ((_lbl__613) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__613
F1_002053 equ $ ; in [POLYGENCODE.BAS] Clear PaymentCardType
    movlb 0x03
ram_bank = 3
    clrf PaymentCardType
F1_002054 equ $ ; in [POLYGENCODE.BAS] GoSub DetectRFID
    movlb 0x00
ram_bank = 0
    movlp ((DetectRFID) >> 8)
    call DetectRFID
ram_bank = 0
F1_002055 equ $ ; in [POLYGENCODE.BAS] if CommandMatched=1 Then
    movlp ((_lbl__615) >> 8)
    btfss _B__VR1,7
    goto _lbl__615
F1_002057 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOffSound
    movlp ((PowerOffSound) >> 8)
    call PowerOffSound
ram_bank = 0
F1_002058 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOffWiFi
    movlp ((PowerOffWiFi) >> 8)
    call PowerOffWiFi
ram_bank = 0
F1_002059 equ $ ; in [POLYGENCODE.BAS] Clear TamperLatch
    bcf _B__VR4,7
F1_002060 equ $ ; in [POLYGENCODE.BAS] Clear SQTail
    movlb 0x0B
ram_bank = 11
    clrf SQTail
F1_002061 equ $ ; in [POLYGENCODE.BAS] Clear SQNext
    clrf SQNext
F1_002062 equ $ ; in [POLYGENCODE.BAS] GoSub LED1PowerOff
    movlb 0x00
ram_bank = 0
    movlp ((LED1PowerOff) >> 8)
    call LED1PowerOff
ram_bank = 0
F1_002063 equ $ ; in [POLYGENCODE.BAS] DelayMs 1000
    movlw 3
    movwf PP1H
    movlw 232
    movlp ((__delay_ms_wreg_) >> 8)
    call __delay_ms_wreg_
ram_bank = 0
F1_002064 equ $ ; in [POLYGENCODE.BAS] GoSub CommandMode
    movlp ((CommandMode) >> 8)
    call CommandMode
ram_bank = 0
F1_002065 equ $ ; in [POLYGENCODE.BAS] Clear CommandMatched
    bcf _B__VR1,7
F1_002066 equ $ ; in [POLYGENCODE.BAS] Clear InTamperState
    bcf _B__VR6,7
F1_002067 equ $ ; in [POLYGENCODE.BAS] return
    return
F1_002068 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__615
F1_002069 equ $ ; in [POLYGENCODE.BAS] GeneralTimer=100
    movlb 0x0D
ram_bank = 13
    clrf GeneralTimerH
    movlw 100
    movwf GeneralTimer
F1_002070 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__613
    movlb 0x00
ram_bank = 0
F1_002071 equ $ ; in [POLYGENCODE.BAS] goto TamperDetectedLoop
    _mjump TamperDetectedLoop
LEDConfigureHardware
F1_002077 equ $ ; in [POLYGENCODE.BAS] CLC1GLS0  = 0x05
    movlb 0x3C
ram_bank = 60
    movlw 5
    movwf CLC1GLS0
F1_002078 equ $ ; in [POLYGENCODE.BAS] CLC1GLS1  = 0x10
    movlw 16
    movwf CLC1GLS1
F1_002079 equ $ ; in [POLYGENCODE.BAS] CLC1GLS2  = 0x08
    movlw 8
    movwf CLC1GLS2
F1_002080 equ $ ; in [POLYGENCODE.BAS] CLC1GLS3  = 0x20
    movlw 32
    movwf CLC1GLS3
F1_002081 equ $ ; in [POLYGENCODE.BAS] CLC1SEL0  = 0x14
    movlw 20
    movwf CLC1SEL0
F1_002082 equ $ ; in [POLYGENCODE.BAS] CLC1SEL1  = 0x25
    movlw 37
    movwf CLC1SEL1
F1_002083 equ $ ; in [POLYGENCODE.BAS] CLC1SEL2  = 0x24
    movlw 36
    movwf CLC1SEL2
F1_002084 equ $ ; in [POLYGENCODE.BAS] CLC1SEL3  = 0x00
    clrf CLC1SEL3
F1_002085 equ $ ; in [POLYGENCODE.BAS] CLC1POL   = 0x01
    movlw 1
    movwf CLC1POL
F1_002086 equ $ ; in [POLYGENCODE.BAS] CLC1CON   = 0x80
    movlw 128
    movwf CLC1CON
F1_002088 equ $ ; in [POLYGENCODE.BAS] T2CLKCON=%00000001
    movlb 0x05
ram_bank = 5
    movlw 1
    movwf T2CLKCON
F1_002090 equ $ ; in [POLYGENCODE.BAS] T2CON=%10000000
    movlw 128
    movwf T2CON
F1_002091 equ $ ; in [POLYGENCODE.BAS] T2HLT=0
    clrf T2HLT
F1_002092 equ $ ; in [POLYGENCODE.BAS] T2PR=0X4
    movlw 4
    movwf T2PR
F1_002093 equ $ ; in [POLYGENCODE.BAS] T2RST=0
    clrf T2RST
F1_002094 equ $ ; in [POLYGENCODE.BAS] T2TMR=0
    clrf T2TMR
F1_002096 equ $ ; in [POLYGENCODE.BAS] PWM6CON=0x80
    movlb 0x07
ram_bank = 7
    movlw 128
    movwf PWM6CON
F1_002097 equ $ ; in [POLYGENCODE.BAS] PWM6DCH=2
    movlw 2
    movwf PWM6DCH
F1_002098 equ $ ; in [POLYGENCODE.BAS] PWM6DCL=0x40
    movlw 64
    movwf PWM6DCL
F1_002100 equ $ ; in [POLYGENCODE.BAS] SSP2ADD=1
    movlb 0x03
ram_bank = 3
    movlw 1
    movwf SSP2ADD
F1_002101 equ $ ; in [POLYGENCODE.BAS] SSP2CON1=0x23
    movlw 35
    movwf SSP2CON1
F1_002102 equ $ ; in [POLYGENCODE.BAS] SSP2CON2=0
    clrf SSP2CON2
F1_002103 equ $ ; in [POLYGENCODE.BAS] SSP2CON3=0
    clrf SSP2CON3
F1_002104 equ $ ; in [POLYGENCODE.BAS] SSP2MSK=0xFF
    movlw 255
    movwf SSP2MSK
F1_002105 equ $ ; in [POLYGENCODE.BAS] SSP2STAT=0x40
    movlw 64
    movwf SSP2STAT
F1_002106 equ $ ; in [POLYGENCODE.BAS] Set LEDHardwareReady
    movlb 0x00
ram_bank = 0
    bsf _B__VR7,1
F1_002107 equ $ ; in [POLYGENCODE.BAS] return
    return
LEDTurnOffHardware
F1_002110 equ $ ; in [POLYGENCODE.BAS] Clear PWM6CON
    movlb 0x07
ram_bank = 7
    clrf PWM6CON
F1_002111 equ $ ; in [POLYGENCODE.BAS] Clear T2CON
    movlb 0x05
ram_bank = 5
    clrf T2CON
F1_002112 equ $ ; in [POLYGENCODE.BAS] Clear SSP2CON1
    movlb 0x03
ram_bank = 3
    clrf SSP2CON1
F1_002113 equ $ ; in [POLYGENCODE.BAS] Clear CLC1CON
    movlb 0x3C
ram_bank = 60
    clrf CLC1CON
F1_002114 equ $ ; in [POLYGENCODE.BAS] Clear LEDHardwareReady
    movlb 0x00
ram_bank = 0
    bcf _B__VR7,1
F1_002115 equ $ ; in [POLYGENCODE.BAS] Clear LEDActiveAnimation
    movlb 0x0D
ram_bank = 13
    clrf LEDActiveAnimation
F1_002116 equ $ ; in [POLYGENCODE.BAS] return
    movlb 0x00
ram_bank = 0
    return
LED1PowerOn
F1_002119 equ $ ; in [POLYGENCODE.BAS] SetPin NeoPixelPower1
    bsf PORTA,1
F1_002120 equ $ ; in [POLYGENCODE.BAS] if LEDHardwareReady=0 Then GoSub LEDConfigureHardware
    movlp ((_lbl__617) >> 8)
    btfsc _B__VR7,1
    goto _lbl__617
    movlp ((LEDConfigureHardware) >> 8)
    call LEDConfigureHardware
ram_bank = 0
_lbl__617
F1_002121 equ $ ; in [POLYGENCODE.BAS] Output NeoPixelOut1
    bcf TRISA,2
F1_002122 equ $ ; in [POLYGENCODE.BAS] ClearPin NeoPixelOut1
    bcf PORTA,2
F1_002123 equ $ ; in [POLYGENCODE.BAS] return
    return
LED2PowerOn
F1_002126 equ $ ; in [POLYGENCODE.BAS] SetPin NeoPixelPower2
    bsf PORTA,7
F1_002127 equ $ ; in [POLYGENCODE.BAS] if LEDHardwareReady=0 Then GoSub LEDConfigureHardware
    movlp ((_lbl__619) >> 8)
    btfsc _B__VR7,1
    goto _lbl__619
    movlp ((LEDConfigureHardware) >> 8)
    call LEDConfigureHardware
ram_bank = 0
_lbl__619
F1_002128 equ $ ; in [POLYGENCODE.BAS] Output NeoPixelOut2
    bcf TRISA,6
F1_002129 equ $ ; in [POLYGENCODE.BAS] ClearPin NeoPixelOut2
    bcf PORTA,6
F1_002130 equ $ ; in [POLYGENCODE.BAS] return
    return
LED1PowerOff
F1_002133 equ $ ; in [POLYGENCODE.BAS] Input NeoPixelOut1
    bsf TRISA,2
F1_002134 equ $ ; in [POLYGENCODE.BAS] ClearPin NeoPixelPower1
    bcf PORTA,1
F1_002135 equ $ ; in [POLYGENCODE.BAS] if NeoPixelPower2=0 Then GoSub LEDTurnOffHardware
    movlp ((_lbl__621) >> 8)
    btfsc PORTA,7
    goto _lbl__621
    movlp ((LEDTurnOffHardware) >> 8)
    call LEDTurnOffHardware
ram_bank = 0
_lbl__621
F1_002136 equ $ ; in [POLYGENCODE.BAS] return
    return
LED2PowerOff
F1_002139 equ $ ; in [POLYGENCODE.BAS] Input NeoPixelOut2
    bsf TRISA,6
F1_002140 equ $ ; in [POLYGENCODE.BAS] Clear NeoPixelPower2
    bcf LATA,7
F1_002141 equ $ ; in [POLYGENCODE.BAS] if NeoPixelPower1=0 Then GoSub LEDTurnOffHardware
    movlp ((_lbl__623) >> 8)
    btfsc PORTA,1
    goto _lbl__623
    movlp ((LEDTurnOffHardware) >> 8)
    call LEDTurnOffHardware
ram_bank = 0
_lbl__623
F1_002142 equ $ ; in [POLYGENCODE.BAS] return
    return
SendLEDData
F1_002145 equ $ ; in [POLYGENCODE.BAS] Set PIR3.2
    movlb 0x0E
ram_bank = 14
    bsf PIR3,2
F1_002146 equ $ ; in [POLYGENCODE.BAS] Set PIE3.2
    bsf PIE3,2
F1_002147 equ $ ; in [POLYGENCODE.BAS] return
    movlb 0x00
ram_bank = 0
    return
PlayWinnerAnimation
F1_002155 equ $ ; in [POLYGENCODE.BAS] C=discs_OwnerTeam
    movlb 0x06
ram_bank = 6
    movf discs_OwnerTeam,W
    movlb 0x0D
ram_bank = 13
    movwf _C
F1_002156 equ $ ; in [POLYGENCODE.BAS] discs_OwnerTeam=WinningTeam
    movlb 0x07
ram_bank = 7
    movf WinningTeam,W
    movlb 0x06
ram_bank = 6
    movwf discs_OwnerTeam
F1_002157 equ $ ; in [POLYGENCODE.BAS] GoSub PlayOwnerAnimation
    movlb 0x00
ram_bank = 0
    movlp ((PlayOwnerAnimation) >> 8)
    call PlayOwnerAnimation
ram_bank = 0
F1_002158 equ $ ; in [POLYGENCODE.BAS] discs_OwnerTeam=C
    movlb 0x0D
ram_bank = 13
    movf _C,W
    movlb 0x06
ram_bank = 6
    movwf discs_OwnerTeam
F1_002159 equ $ ; in [POLYGENCODE.BAS] return
    movlb 0x00
ram_bank = 0
    return
PlayOwnerAnimation
F1_002162 equ $ ; in [POLYGENCODE.BAS] GoSub LED1PowerOn
    movlp ((LED1PowerOn) >> 8)
    call LED1PowerOn
ram_bank = 0
F1_002163 equ $ ; in [POLYGENCODE.BAS] Clear LEDFrame
    movlb 0x0D
ram_bank = 13
    clrf LEDFrameH
    clrf LEDFrame
F1_002164 equ $ ; in [POLYGENCODE.BAS] if OwnerAnimationCount>3 Then Clear OwnerAnimationCount
    movlw 4
    subwf OwnerAnimationCount,W
    movlp ((_lbl__625) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _lbl__625
    movlb 0x0D
ram_bank = 13
    clrf OwnerAnimationCount
_lbl__625
ram_bank = 0
F1_002165 equ $ ; in [POLYGENCODE.BAS] if discs_OwnerTeam=0 Then
    movlb 0x06
ram_bank = 6
    movf discs_OwnerTeam,F
    movlp ((_lbl__627) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__627
F1_002166 equ $ ; in [POLYGENCODE.BAS] OwnerAnimationCount=99
    movlb 0x0D
ram_bank = 13
    movlw 99
    movwf OwnerAnimationCount
    movlb 0x00
ram_bank = 0
    _mjump _lbl__628
_lbl__627
F1_002167 equ $ ; in [POLYGENCODE.BAS] else
F1_002168 equ $ ; in [POLYGENCODE.BAS] HSVh=TeamColourHue[discs_OwnerTeam]
    movlb 0x06
ram_bank = 6
    lslf discs_OwnerTeam,W
    movwf FSR0L
    clrf FSR0H
    rlf FSR0H,F
    movlw 0x23
    addwf FSR0L,F
    movlw 0x24
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x0E
ram_bank = 14
    movwf HSVh
    moviw ++INDF0
    movwf HSVhH
F1_002169 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__628
ram_bank = 0
F1_002170 equ $ ; in [POLYGENCODE.BAS] HSVs=255
    movlb 0x0E
ram_bank = 14
    movlw 255
    movwf HSVs
POAnimLoop
ram_bank = 0
F1_002172 equ $ ; in [POLYGENCODE.BAS] Select OwnerAnimationCount
F1_002173 equ $ ; in [POLYGENCODE.BAS] Case 0
    movlb 0x0D
ram_bank = 13
    movf OwnerAnimationCount,F
    movlp ((_lbl__630) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__630
F1_002174 equ $ ; in [POLYGENCODE.BAS] GoSub OwnerFlash1
    movlp ((OwnerFlash1) >> 8)
    call OwnerFlash1
ram_bank = 0
    _mjump _lbl__629
_lbl__630
F1_002175 equ $ ; in [POLYGENCODE.BAS] Case 1
    movlw 1
    movlb 0x0D
ram_bank = 13
    subwf OwnerAnimationCount,W
    movlp ((_lbl__633) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__633
F1_002176 equ $ ; in [POLYGENCODE.BAS] GoSub OwnerFlash2
    movlp ((OwnerFlash2) >> 8)
    call OwnerFlash2
ram_bank = 0
    _mjump _lbl__629
_lbl__633
F1_002177 equ $ ; in [POLYGENCODE.BAS] Case 2,3
    movlw 2
    movlb 0x0D
ram_bank = 13
    subwf OwnerAnimationCount,W
    movlp ((_lbl__634) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__634
    movlw 3
    movlb 0x0D
ram_bank = 13
    subwf OwnerAnimationCount,W
    movlp ((_lbl__635) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__635
_lbl__634
F1_002178 equ $ ; in [POLYGENCODE.BAS] GoSub OwnerLoop1
    movlp ((OwnerLoop1) >> 8)
    call OwnerLoop1
ram_bank = 0
    _mjump _lbl__629
_lbl__635
F1_002179 equ $ ; in [POLYGENCODE.BAS] Case 99
    movlw 99
    movlb 0x0D
ram_bank = 13
    subwf OwnerAnimationCount,W
    movlp ((_lbl__637) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__637
F1_002180 equ $ ; in [POLYGENCODE.BAS] GoSub UncapturedFlash
    movlp ((UncapturedFlash) >> 8)
    call UncapturedFlash
ram_bank = 0
F1_002181 equ $ ; in [POLYGENCODE.BAS] EndSelect
_lbl__637
_lbl__629
F1_002182 equ $ ; in [POLYGENCODE.BAS] LED1ByteCount=51
    movlb 0x0D
ram_bank = 13
    movlw 51
    movwf LED1ByteCount
F1_002183 equ $ ; in [POLYGENCODE.BAS] GoSub SendLEDData
    movlb 0x00
ram_bank = 0
    movlp ((SendLEDData) >> 8)
    call SendLEDData
ram_bank = 0
F1_002184 equ $ ; in [POLYGENCODE.BAS] LEDLastFrame=LEDFrame
    movlb 0x0D
ram_bank = 13
    movf LEDFrameH,W
    movwf LEDLastFrameH
    movf LEDFrame,W
    movwf LEDLastFrame
F1_002185 equ $ ; in [POLYGENCODE.BAS] While LEDLastFrame=LEDFrame
_lbl__638
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movf LEDFrameH,W
    subwf LEDLastFrameH,W
    movlp ((_lbl__639) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__639
    movlb 0x0D
ram_bank = 13
    movf LEDFrame,W
    subwf LEDLastFrame,W
    movlp ((_lbl__639) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__639
F1_002186 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__638
_lbl__639
F1_002187 equ $ ; in [POLYGENCODE.BAS] if LEDFrame>0 Then goto POAnimLoop
    movlb 0x0D
ram_bank = 13
    movf LEDFrame,W
    iorwf LEDFrameH,W
    movlp ((POAnimLoop) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto POAnimLoop
_cplb__64
ram_bank = 255
F1_002188 equ $ ; in [POLYGENCODE.BAS] if RecentCapture>0 Then GoSub PlayRecentCapture
    movlb 0x07
ram_bank = 7
    movf RecentCapture,F
    movlp ((_lbl__643) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__643
    movlp ((PlayRecentCapture) >> 8)
    call PlayRecentCapture
ram_bank = 0
_lbl__643
F1_002189 equ $ ; in [POLYGENCODE.BAS] GoSub BlankAllLED1s
    movlp ((BlankAllLED1s) >> 8)
    call BlankAllLED1s
ram_bank = 0
F1_002190 equ $ ; in [POLYGENCODE.BAS] LED1ByteCount=51
    movlb 0x0D
ram_bank = 13
    movlw 51
    movwf LED1ByteCount
F1_002191 equ $ ; in [POLYGENCODE.BAS] GoSub SendLEDData
    movlb 0x00
ram_bank = 0
    movlp ((SendLEDData) >> 8)
    call SendLEDData
ram_bank = 0
F1_002192 equ $ ; in [POLYGENCODE.BAS] While ClockCount>0
_lbl__644
    movlb 0x0D
ram_bank = 13
    movf ClockCount,F
    movlp ((_lbl__645) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__645
F1_002193 equ $ ; in [POLYGENCODE.BAS] GoSub IdleTasks
    movlp ((IdleTasks) >> 8)
    call IdleTasks
ram_bank = 0
F1_002194 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__644
_lbl__645
F1_002195 equ $ ; in [POLYGENCODE.BAS] DelayMs 1
    movlw 1
    movlp ((__delay_ms_) >> 8)
    call __delay_ms_
ram_bank = 0
F1_002196 equ $ ; in [POLYGENCODE.BAS] GoSub LED1PowerOff
    movlp ((LED1PowerOff) >> 8)
    call LED1PowerOff
ram_bank = 0
F1_002197 equ $ ; in [POLYGENCODE.BAS] Inc OwnerAnimationCount
    movlb 0x0D
ram_bank = 13
    incf OwnerAnimationCount,F
F1_002198 equ $ ; in [POLYGENCODE.BAS] return
    movlb 0x00
ram_bank = 0
    return
PlayRecentCapture
F1_002201 equ $ ; in [POLYGENCODE.BAS] LEDFrame=20
    movlb 0x0D
ram_bank = 13
    clrf LEDFrameH
    movlw 20
    movwf LEDFrame
F1_002202 equ $ ; in [POLYGENCODE.BAS] GoSub WhiteLED1Flash
    movlb 0x00
ram_bank = 0
    movlp ((WhiteLED1Flash) >> 8)
    call WhiteLED1Flash
ram_bank = 0
F1_002203 equ $ ; in [POLYGENCODE.BAS] GoSub SendLEDData
    movlp ((SendLEDData) >> 8)
    call SendLEDData
ram_bank = 0
F1_002204 equ $ ; in [POLYGENCODE.BAS] While LEDFrame>0
_lbl__646
    movlb 0x0D
ram_bank = 13
    movf LEDFrame,F
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    bra _cplb__65
    movlb 0x0D
ram_bank = 13
    movf LEDFrameH,F
    movlp ((_lbl__647) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__647
_cplb__65
ram_bank = 255
F1_002205 equ $ ; in [POLYGENCODE.BAS] GoSub IdleTasks
    movlb 0x00
ram_bank = 0
    movlp ((IdleTasks) >> 8)
    call IdleTasks
ram_bank = 0
F1_002206 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__646
_lbl__647
F1_002207 equ $ ; in [POLYGENCODE.BAS] return
    return
WhiteLED1Flash
F1_002211 equ $ ; in [POLYGENCODE.BAS] OutR=150
    movlb 0x0E
ram_bank = 14
    movlw 150
    movwf OutR
F1_002212 equ $ ; in [POLYGENCODE.BAS] OutB=150
    movwf OutB
F1_002213 equ $ ; in [POLYGENCODE.BAS] OutG=150
    movwf OutG
F1_002214 equ $ ; in [POLYGENCODE.BAS] GoSub LoadAllLED1s
    movlb 0x00
ram_bank = 0
    movlp ((LoadAllLED1s) >> 8)
    call LoadAllLED1s
ram_bank = 0
F1_002215 equ $ ; in [POLYGENCODE.BAS] LED1ByteCount=51
    movlb 0x0D
ram_bank = 13
    movlw 51
    movwf LED1ByteCount
F1_002216 equ $ ; in [POLYGENCODE.BAS] return
    movlb 0x00
ram_bank = 0
    return
WhiteLED2Flash
F1_002219 equ $ ; in [POLYGENCODE.BAS] OutR=150
    movlb 0x0E
ram_bank = 14
    movlw 150
    movwf OutR
F1_002220 equ $ ; in [POLYGENCODE.BAS] OutB=150
    movwf OutB
F1_002221 equ $ ; in [POLYGENCODE.BAS] OutG=150
    movwf OutG
F1_002222 equ $ ; in [POLYGENCODE.BAS] GoSub LoadAllLED2s
    movlb 0x00
ram_bank = 0
    movlp ((LoadAllLED2s) >> 8)
    call LoadAllLED2s
ram_bank = 0
F1_002223 equ $ ; in [POLYGENCODE.BAS] LED2ByteCount=36
    movlb 0x0D
ram_bank = 13
    movlw 36
    movwf LED2ByteCount
F1_002224 equ $ ; in [POLYGENCODE.BAS] return
    movlb 0x00
ram_bank = 0
    return
UncapturedFlash
F1_002227 equ $ ; in [POLYGENCODE.BAS] if LEDFrame=0 Then LEDFrame=20
    movlb 0x0D
ram_bank = 13
    movf LEDFrameH,W
    iorwf LEDFrame,W
    movlp ((_lbl__649) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__649
    movlb 0x0D
ram_bank = 13
    clrf LEDFrameH
    movlw 20
    movwf LEDFrame
_lbl__649
ram_bank = 0
F1_002228 equ $ ; in [POLYGENCODE.BAS] HSVv=150
    movlb 0x0E
ram_bank = 14
    movlw 150
    movwf HSVv
F1_002229 equ $ ; in [POLYGENCODE.BAS] FrameTemp.LowByte=TotalTeams
    movlb 0x0D
ram_bank = 13
    movf TotalTeams,W
    movwf FrameTemp
F1_002230 equ $ ; in [POLYGENCODE.BAS] For C=0 To 50 Step 3
    clrf _C
_frlb__650
ram_bank = 0
    movlw 51
    movlb 0x0D
ram_bank = 13
    subwf _C,W
    movlp ((_nxlb__651) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _nxlb__651
F1_002231 equ $ ; in [POLYGENCODE.BAS] HSVh=TeamColourHue[FrameTemp.LowByte]
    movlb 0x0D
ram_bank = 13
    lslf FrameTemp,W
    movwf FSR0L
    clrf FSR0H
    rlf FSR0H,F
    movlw 0x23
    addwf FSR0L,F
    movlw 0x24
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x0E
ram_bank = 14
    movwf HSVh
    moviw ++INDF0
    movwf HSVhH
F1_002232 equ $ ; in [POLYGENCODE.BAS] GoSub HSV2RGB
    movlb 0x00
ram_bank = 0
    movlp ((HSV2RGB) >> 8)
    call HSV2RGB
ram_bank = 0
F1_002233 equ $ ; in [POLYGENCODE.BAS] LED1Data[C] =OutB
    movlb 0x0D
ram_bank = 13
    movf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutB,W
    movwf INDF0
F1_002234 equ $ ; in [POLYGENCODE.BAS] LED1Data[C+1] =OutR
    movlb 0x0D
ram_bank = 13
    incf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutR,W
    movwf INDF0
F1_002235 equ $ ; in [POLYGENCODE.BAS] LED1Data[C+2] =OutG
    movlw 2
    movlb 0x0D
ram_bank = 13
    addwf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutG,W
    movwf INDF0
F1_002236 equ $ ; in [POLYGENCODE.BAS] Dec FrameTemp.LowByte
    movlb 0x0D
ram_bank = 13
    decf FrameTemp,F
F1_002237 equ $ ; in [POLYGENCODE.BAS] if FrameTemp.LowByte=0 Then FrameTemp.LowByte=TotalTeams
    movf FrameTemp,F
    movlp ((_lbl__654) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__654
    movlb 0x0D
ram_bank = 13
    movf TotalTeams,W
    movwf FrameTemp
_lbl__654
ram_bank = 0
_ctlb__652
F1_002238 equ $ ; in [POLYGENCODE.BAS] Next
    movlw 3
    movlb 0x0D
ram_bank = 13
    addwf _C,F
    movlp ((_frlb__650) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _frlb__650
_nxlb__651
F1_002239 equ $ ; in [POLYGENCODE.BAS] return
    return
OwnerFlash1
F1_002242 equ $ ; in [POLYGENCODE.BAS] if LEDFrame=0 Then LEDFrame=20
    movlb 0x0D
ram_bank = 13
    movf LEDFrameH,W
    iorwf LEDFrame,W
    movlp ((_lbl__656) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__656
    movlb 0x0D
ram_bank = 13
    clrf LEDFrameH
    movlw 20
    movwf LEDFrame
_lbl__656
ram_bank = 0
F1_002244 equ $ ; in [POLYGENCODE.BAS] HSVv=255
    movlb 0x0E
ram_bank = 14
    movlw 255
    movwf HSVv
F1_002245 equ $ ; in [POLYGENCODE.BAS] GoSub HSV2RGB
    movlb 0x00
ram_bank = 0
    movlp ((HSV2RGB) >> 8)
    call HSV2RGB
ram_bank = 0
F1_002246 equ $ ; in [POLYGENCODE.BAS] GoSub LoadAllLED1s
    movlp ((LoadAllLED1s) >> 8)
    call LoadAllLED1s
ram_bank = 0
F1_002247 equ $ ; in [POLYGENCODE.BAS] return
    return
OwnerFlash2
F1_002250 equ $ ; in [POLYGENCODE.BAS] if LEDFrame=0 Then LEDFrame=40
    movlb 0x0D
ram_bank = 13
    movf LEDFrameH,W
    iorwf LEDFrame,W
    movlp ((_lbl__658) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__658
    movlb 0x0D
ram_bank = 13
    clrf LEDFrameH
    movlw 40
    movwf LEDFrame
_lbl__658
    movlb 0x00
ram_bank = 0
F1_002251 equ $ ; in [POLYGENCODE.BAS] GoSub BlankAllLED1s
    movlp ((BlankAllLED1s) >> 8)
    call BlankAllLED1s
ram_bank = 0
F1_002253 equ $ ; in [POLYGENCODE.BAS] HSVv=180
    movlb 0x0E
ram_bank = 14
    movlw 180
    movwf HSVv
F1_002254 equ $ ; in [POLYGENCODE.BAS] GoSub HSV2RGB
    movlb 0x00
ram_bank = 0
    movlp ((HSV2RGB) >> 8)
    call HSV2RGB
ram_bank = 0
F1_002255 equ $ ; in [POLYGENCODE.BAS] if LEDFrame.3=1 Then
    movlp ((_lbl__660) >> 8)
    movlb 0x0D
ram_bank = 13
    movf LEDFrame,W
    movlb 0x00
ram_bank = 0
    btfss WREG,3
    goto _lbl__660
F1_002256 equ $ ; in [POLYGENCODE.BAS] For C=0 To 50 Step 6
    movlb 0x0D
ram_bank = 13
    clrf _C
_frlb__661
ram_bank = 0
    movlw 51
    movlb 0x0D
ram_bank = 13
    subwf _C,W
    movlp ((_nxlb__662) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _nxlb__662
F1_002257 equ $ ; in [POLYGENCODE.BAS] LED1Data[C] =OutB
    movlb 0x0D
ram_bank = 13
    movf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutB,W
    movwf INDF0
F1_002258 equ $ ; in [POLYGENCODE.BAS] LED1Data[C+1] =OutR
    movlb 0x0D
ram_bank = 13
    incf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutR,W
    movwf INDF0
F1_002259 equ $ ; in [POLYGENCODE.BAS] LED1Data[C+2] =OutG
    movlw 2
    movlb 0x0D
ram_bank = 13
    addwf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutG,W
    movwf INDF0
_ctlb__663
ram_bank = 0
F1_002260 equ $ ; in [POLYGENCODE.BAS] Next
    movlw 6
    movlb 0x0D
ram_bank = 13
    addwf _C,F
    movlp ((_frlb__661) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _frlb__661
_nxlb__662
    _mjump _lbl__664
_lbl__660
F1_002261 equ $ ; in [POLYGENCODE.BAS] else
F1_002262 equ $ ; in [POLYGENCODE.BAS] For C=3 To 50 Step 6
    movlb 0x0D
ram_bank = 13
    movlw 3
    movwf _C
_frlb__665
ram_bank = 0
    movlw 51
    movlb 0x0D
ram_bank = 13
    subwf _C,W
    movlp ((_nxlb__666) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _nxlb__666
F1_002263 equ $ ; in [POLYGENCODE.BAS] LED1Data[C] =OutB
    movlb 0x0D
ram_bank = 13
    movf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutB,W
    movwf INDF0
F1_002264 equ $ ; in [POLYGENCODE.BAS] LED1Data[C+1] =OutR
    movlb 0x0D
ram_bank = 13
    incf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutR,W
    movwf INDF0
F1_002265 equ $ ; in [POLYGENCODE.BAS] LED1Data[C+2] =OutG
    movlw 2
    movlb 0x0D
ram_bank = 13
    addwf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutG,W
    movwf INDF0
_ctlb__667
ram_bank = 0
F1_002266 equ $ ; in [POLYGENCODE.BAS] Next
    movlw 6
    movlb 0x0D
ram_bank = 13
    addwf _C,F
    movlp ((_frlb__665) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _frlb__665
_nxlb__666
F1_002267 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__664
F1_002268 equ $ ; in [POLYGENCODE.BAS] return
    return
OwnerLoop1
F1_002271 equ $ ; in [POLYGENCODE.BAS] if LEDFrame=0 Then LEDFrame=50
    movlb 0x0D
ram_bank = 13
    movf LEDFrameH,W
    iorwf LEDFrame,W
    movlp ((_lbl__669) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__669
    movlb 0x0D
ram_bank = 13
    clrf LEDFrameH
    movlw 50
    movwf LEDFrame
_lbl__669
    movlb 0x00
ram_bank = 0
F1_002272 equ $ ; in [POLYGENCODE.BAS] GoSub BlankAllLED1s
    movlp ((BlankAllLED1s) >> 8)
    call BlankAllLED1s
ram_bank = 0
F1_002274 equ $ ; in [POLYGENCODE.BAS] HSVv=200
    movlb 0x0E
ram_bank = 14
    movlw 200
    movwf HSVv
F1_002275 equ $ ; in [POLYGENCODE.BAS] GoSub HSV2RGB
    movlb 0x00
ram_bank = 0
    movlp ((HSV2RGB) >> 8)
    call HSV2RGB
ram_bank = 0
F1_002276 equ $ ; in [POLYGENCODE.BAS] Ftemp=LEDFrame // 3
    movlb 0x0D
ram_bank = 13
    movf LEDFrameH,W
    movlb 0x00
ram_bank = 0
    movwf PP0H
    movlb 0x0D
ram_bank = 13
    movf LEDFrame,W
    movlb 0x00
ram_bank = 0
    movwf PP0
    clrf PP1H
    movlw 3
    movwf PP1
    movlp ((__divide_u1616_) >> 8)
    call __divide_u1616_
ram_bank = 0
    movf PP2,W
    movlb 0x0D
ram_bank = 13
    movwf Ftemp
F1_002277 equ $ ; in [POLYGENCODE.BAS] FrameTemp = LEDFrame - Ftemp
    movf Ftemp,W
    subwf LEDFrame,W
    movwf FrameTemp
    movlw 0
    subwfb LEDFrameH,W
    movwf FrameTempH
F1_002278 equ $ ; in [POLYGENCODE.BAS] if OwnerAnimationCount=3 Then FrameTemp=51-FrameTemp
    movlw 3
    subwf OwnerAnimationCount,W
    movlp ((_lbl__671) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__671
    movlb 0x0D
ram_bank = 13
    movf FrameTemp,W
    sublw 51
    movwf FrameTemp
    movf FrameTempH,W
    btfss STATUS,0
    addlw 1
    sublw 0
    movwf FrameTempH
_lbl__671
ram_bank = 0
F1_002279 equ $ ; in [POLYGENCODE.BAS] LED1Data[FrameTemp] =OutB
    movlb 0x0D
ram_bank = 13
    movf FrameTemp,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutB,W
    movwf INDF0
F1_002280 equ $ ; in [POLYGENCODE.BAS] LED1Data[FrameTemp+1] =OutR
    movlb 0x0D
ram_bank = 13
    incf FrameTemp,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutR,W
    movwf INDF0
F1_002281 equ $ ; in [POLYGENCODE.BAS] LED1Data[FrameTemp+2] =OutG
    movlw 2
    movlb 0x0D
ram_bank = 13
    addwf FrameTemp,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutG,W
    movwf INDF0
F1_002282 equ $ ; in [POLYGENCODE.BAS] HSVv=80
    movlw 80
    movwf HSVv
F1_002283 equ $ ; in [POLYGENCODE.BAS] GoSub HSV2RGB
    movlb 0x00
ram_bank = 0
    movlp ((HSV2RGB) >> 8)
    call HSV2RGB
ram_bank = 0
F1_002284 equ $ ; in [POLYGENCODE.BAS] if FrameTemp>2 Then
    movlb 0x0D
ram_bank = 13
    movf FrameTempH,F
    btfss STATUS,2
    bra _cplb__66
    movlw 3
    subwf FrameTemp,W
    movlp ((_lbl__673) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _lbl__673
_cplb__66
ram_bank = 255
F1_002285 equ $ ; in [POLYGENCODE.BAS] LED1Data[FrameTemp-3] =OutB
    movlw 3
    movlb 0x0D
ram_bank = 13
    subwf FrameTemp,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutB,W
    movwf INDF0
F1_002286 equ $ ; in [POLYGENCODE.BAS] LED1Data[FrameTemp-2] =OutR
    movlw 2
    movlb 0x0D
ram_bank = 13
    subwf FrameTemp,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutR,W
    movwf INDF0
F1_002287 equ $ ; in [POLYGENCODE.BAS] LED1Data[FrameTemp-1] =OutG
    movlb 0x0D
ram_bank = 13
    decf FrameTemp,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutG,W
    movwf INDF0
F1_002288 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__673
ram_bank = 0
F1_002289 equ $ ; in [POLYGENCODE.BAS] if FrameTemp<49 Then
    movlb 0x0D
ram_bank = 13
    movf FrameTempH,F
    movlp ((_lbl__675) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__675
    movlw 49
    movlb 0x0D
ram_bank = 13
    subwf FrameTemp,W
    movlp ((_lbl__675) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__675
F1_002290 equ $ ; in [POLYGENCODE.BAS] LED1Data[FrameTemp+3] =OutB
    movlw 3
    movlb 0x0D
ram_bank = 13
    addwf FrameTemp,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutB,W
    movwf INDF0
F1_002291 equ $ ; in [POLYGENCODE.BAS] LED1Data[FrameTemp+4] =OutR
    movlw 4
    movlb 0x0D
ram_bank = 13
    addwf FrameTemp,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutR,W
    movwf INDF0
F1_002292 equ $ ; in [POLYGENCODE.BAS] LED1Data[FrameTemp+5] =OutG
    movlw 5
    movlb 0x0D
ram_bank = 13
    addwf FrameTemp,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutG,W
    movwf INDF0
F1_002293 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__675
ram_bank = 0
F1_002294 equ $ ; in [POLYGENCODE.BAS] HSVv=20
    movlb 0x0E
ram_bank = 14
    movlw 20
    movwf HSVv
F1_002295 equ $ ; in [POLYGENCODE.BAS] GoSub HSV2RGB
    movlb 0x00
ram_bank = 0
    movlp ((HSV2RGB) >> 8)
    call HSV2RGB
ram_bank = 0
F1_002296 equ $ ; in [POLYGENCODE.BAS] if FrameTemp>5 Then
    movlb 0x0D
ram_bank = 13
    movf FrameTempH,F
    btfss STATUS,2
    bra _cplb__67
    movlw 6
    subwf FrameTemp,W
    movlp ((_lbl__677) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _lbl__677
_cplb__67
ram_bank = 255
F1_002297 equ $ ; in [POLYGENCODE.BAS] LED1Data[FrameTemp-6] =OutB
    movlw 6
    movlb 0x0D
ram_bank = 13
    subwf FrameTemp,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutB,W
    movwf INDF0
F1_002298 equ $ ; in [POLYGENCODE.BAS] LED1Data[FrameTemp-5] =OutR
    movlw 5
    movlb 0x0D
ram_bank = 13
    subwf FrameTemp,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutR,W
    movwf INDF0
F1_002299 equ $ ; in [POLYGENCODE.BAS] LED1Data[FrameTemp-4] =OutG
    movlw 4
    movlb 0x0D
ram_bank = 13
    subwf FrameTemp,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutG,W
    movwf INDF0
F1_002300 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__677
ram_bank = 0
F1_002301 equ $ ; in [POLYGENCODE.BAS] if FrameTemp<46 Then
    movlb 0x0D
ram_bank = 13
    movf FrameTempH,F
    movlp ((_lbl__679) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__679
    movlw 46
    movlb 0x0D
ram_bank = 13
    subwf FrameTemp,W
    movlp ((_lbl__679) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__679
F1_002302 equ $ ; in [POLYGENCODE.BAS] LED1Data[FrameTemp+6] =OutB
    movlw 6
    movlb 0x0D
ram_bank = 13
    addwf FrameTemp,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutB,W
    movwf INDF0
F1_002303 equ $ ; in [POLYGENCODE.BAS] LED1Data[FrameTemp+7] =OutR
    movlw 7
    movlb 0x0D
ram_bank = 13
    addwf FrameTemp,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutR,W
    movwf INDF0
F1_002304 equ $ ; in [POLYGENCODE.BAS] LED1Data[FrameTemp+8] =OutG
    movlw 8
    movlb 0x0D
ram_bank = 13
    addwf FrameTemp,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutG,W
    movwf INDF0
F1_002305 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__679
    movlb 0x00
ram_bank = 0
F1_002306 equ $ ; in [POLYGENCODE.BAS] return
    return
BlankAllLED1s
F1_002309 equ $ ; in [POLYGENCODE.BAS] Clear LED1Data
    movlw 0x23
    movwf FSR0LH
    movlw 0x9F
    movwf FSR0L
    movlw 60
    movwf PP0
    movlw 0
    movwi INDF0++
    decfsz PP0,F
    bra $ - 3
F1_002310 equ $ ; in [POLYGENCODE.BAS] return
    return
BlankAllLED2s
F1_002313 equ $ ; in [POLYGENCODE.BAS] Clear LED2Data
    movlw 0x23
    movwf FSR0LH
    movlw 0xDB
    movwf FSR0L
    movlw 60
    movwf PP0
    movlw 0
    movwi INDF0++
    decfsz PP0,F
    bra $ - 3
F1_002314 equ $ ; in [POLYGENCODE.BAS] return
    return
LoadAllLED1s
F1_002317 equ $ ; in [POLYGENCODE.BAS] For C=0 To 50 Step 3
    movlb 0x0D
ram_bank = 13
    clrf _C
_frlb__680
ram_bank = 0
    movlw 51
    movlb 0x0D
ram_bank = 13
    subwf _C,W
    movlp ((_nxlb__681) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _nxlb__681
F1_002318 equ $ ; in [POLYGENCODE.BAS] LED1Data[C] =OutB
    movlb 0x0D
ram_bank = 13
    movf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutB,W
    movwf INDF0
F1_002319 equ $ ; in [POLYGENCODE.BAS] LED1Data[C+1] =OutR
    movlb 0x0D
ram_bank = 13
    incf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutR,W
    movwf INDF0
F1_002320 equ $ ; in [POLYGENCODE.BAS] LED1Data[C+2] =OutG
    movlw 2
    movlb 0x0D
ram_bank = 13
    addwf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutG,W
    movwf INDF0
_ctlb__682
ram_bank = 0
F1_002321 equ $ ; in [POLYGENCODE.BAS] Next
    movlw 3
    movlb 0x0D
ram_bank = 13
    addwf _C,F
    movlp ((_frlb__680) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _frlb__680
_nxlb__681
F1_002322 equ $ ; in [POLYGENCODE.BAS] return
    return
LoadAllLED2s
F1_002325 equ $ ; in [POLYGENCODE.BAS] For C=0 To 35 Step 3
    movlb 0x0D
ram_bank = 13
    clrf _C
_frlb__683
ram_bank = 0
    movlw 36
    movlb 0x0D
ram_bank = 13
    subwf _C,W
    movlp ((_nxlb__684) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _nxlb__684
F1_002326 equ $ ; in [POLYGENCODE.BAS] LED2Data[C] =OutB
    movlb 0x0D
ram_bank = 13
    movf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutB,W
    movwf INDF0
F1_002327 equ $ ; in [POLYGENCODE.BAS] LED2Data[C+1] =OutR
    movlb 0x0D
ram_bank = 13
    incf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutR,W
    movwf INDF0
F1_002328 equ $ ; in [POLYGENCODE.BAS] LED2Data[C+2] =OutG
    movlw 2
    movlb 0x0D
ram_bank = 13
    addwf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutG,W
    movwf INDF0
_ctlb__685
ram_bank = 0
F1_002329 equ $ ; in [POLYGENCODE.BAS] Next
    movlw 3
    movlb 0x0D
ram_bank = 13
    addwf _C,F
    movlp ((_frlb__683) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _frlb__683
_nxlb__684
F1_002330 equ $ ; in [POLYGENCODE.BAS] return
    return
ProcessWiFiMessage
F1_002352 equ $ ; in [POLYGENCODE.BAS] Clear RX1CommandReceived
    bcf _B__VR1,3
F1_002355 equ $ ; in [POLYGENCODE.BAS] if Len(RX1Buffer)<5 Then return
    movlw 33
    movwf FSR0LH
    movlw 104
    movwf FSR0L
    clrf PP0
    moviw INDF0++
    btfsc STATUS,2
    bra $ + 3
    incfsz PP0,F
    bra $ - 4
    movf PP0,W
    movwf PBS_VAR0
    movlw 5
    subwf PBS_VAR0,W
    movlp ((_lbl__687) >> 8)
    btfsc STATUS,0
    goto _lbl__687
    return
_lbl__687
F1_002356 equ $ ; in [POLYGENCODE.BAS] wifi_tmp=Left$(RX1Buffer,5)
    movlw 33
    movwf FSR0LH
    movlw 243
    movwf FSR0L
    movlw 33
    movwf FSR1LH
    movlw 104
    movwf FSR1L
    movlw 5
    movwf PP0
    moviw INDF1++
    movwi INDF0++
    decfsz PP0,F
    bra $ - 3
    clrf INDF0
F1_002357 equ $ ; in [POLYGENCODE.BAS] if wifi_tmp="PWRON" Then Set WiFiPoweredOnOK
    movlw ((((_strlb__2) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__2) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__689) >> 8)
    btfss STATUS,2
    goto _lbl__689
    bsf _B__VR8,1
_lbl__689
F1_002358 equ $ ; in [POLYGENCODE.BAS] if wifi_tmp="CLKER" Then
    movlw ((((_strlb__3) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__3) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__691) >> 8)
    btfss STATUS,2
    goto _lbl__691
F1_002359 equ $ ; in [POLYGENCODE.BAS] Set WifiClockError
    bsf _B__VR8,2
F1_002360 equ $ ; in [POLYGENCODE.BAS] SoundTemp=40
    movlb 0x0B
ram_bank = 11
    movlw 40
    movwf SoundTemp
F1_002361 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_002362 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_002363 equ $ ; in [POLYGENCODE.BAS] GoSub WaitForSound
    movlp ((WaitForSound) >> 8)
    call WaitForSound
ram_bank = 0
F1_002364 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOff
    movlp ((PowerOff) >> 8)
    call PowerOff
ram_bank = 0
F1_002365 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__691
F1_002366 equ $ ; in [POLYGENCODE.BAS] if wifi_tmp="CFGOK" Then Set WifiConfigValid
    movlw ((((_strlb__4) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__4) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__693) >> 8)
    btfss STATUS,2
    goto _lbl__693
    bsf _B__VR3,0
_lbl__693
F1_002367 equ $ ; in [POLYGENCODE.BAS] if wifi_tmp="CFGBD" Then Set WifiConfigBad
    movlw ((((_strlb__5) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__5) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__695) >> 8)
    btfss STATUS,2
    goto _lbl__695
    bsf _B__VR3,1
_lbl__695
F1_002368 equ $ ; in [POLYGENCODE.BAS] if wifi_tmp="TIMEF" Then Set WiFiTimeFailed
    movlw ((((_strlb__6) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__6) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__697) >> 8)
    btfss STATUS,2
    goto _lbl__697
    bsf _B__VR2,3
_lbl__697
F1_002369 equ $ ; in [POLYGENCODE.BAS] if wifi_tmp="MQTTF" Then Set WiFiMQTTFailed
    movlw ((((_strlb__7) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__7) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__699) >> 8)
    btfss STATUS,2
    goto _lbl__699
    bsf _B__VR2,2
_lbl__699
F1_002370 equ $ ; in [POLYGENCODE.BAS] if wifi_tmp="TAMPR" Then Set TamperLatch
    movlw ((((_strlb__8) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__8) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__701) >> 8)
    btfss STATUS,2
    goto _lbl__701
    bsf _B__VR4,7
_lbl__701
F1_002371 equ $ ; in [POLYGENCODE.BAS] if wifi_tmp="ALIVE" Then Set AliveAcknowledged
    movlw ((((_strlb__9) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__9) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__703) >> 8)
    btfss STATUS,2
    goto _lbl__703
    bsf _B__VR3,2
_lbl__703
F1_002372 equ $ ; in [POLYGENCODE.BAS] if wifi_tmp="AWAKE" Then
    movlw ((((_strlb__10) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__10) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__705) >> 8)
    btfss STATUS,2
    goto _lbl__705
F1_002373 equ $ ; in [POLYGENCODE.BAS] Set WiFiConnected
    bsf _B__VR2,1
F1_002374 equ $ ; in [POLYGENCODE.BAS] Clear WiFiMQTTFailed
    bcf _B__VR2,2
F1_002375 equ $ ; in [POLYGENCODE.BAS] Clear WiFiTimeFailed
    bcf _B__VR2,3
F1_002376 equ $ ; in [POLYGENCODE.BAS] return
    return
F1_002377 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__705
F1_002379 equ $ ; in [POLYGENCODE.BAS] if wifi_tmp="INITA" Then Set WifiInitSuccess
    movlw ((((_strlb__11) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__11) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__707) >> 8)
    btfss STATUS,2
    goto _lbl__707
    bsf _B__VR2,4
_lbl__707
F1_002380 equ $ ; in [POLYGENCODE.BAS] if wifi_tmp="INITS" Then
    movlw ((((_strlb__12) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__12) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__709) >> 8)
    btfss STATUS,2
    goto _lbl__709
F1_002381 equ $ ; in [POLYGENCODE.BAS] Set WifiInitSent
    bsf _B__VR2,5
F1_002382 equ $ ; in [POLYGENCODE.BAS] Clear TXGapTimer
    movlb 0x0A
ram_bank = 10
    clrf TXGapTimer
F1_002383 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__709
    movlb 0x00
ram_bank = 0
F1_002385 equ $ ; in [POLYGENCODE.BAS] if wifi_tmp="INITN" Then
    movlw ((((_strlb__13) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__13) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__711) >> 8)
    btfss STATUS,2
    goto _lbl__711
F1_002386 equ $ ; in [POLYGENCODE.BAS] Set WifiInitNoKeys
    bsf _B__VR2,6
F1_002387 equ $ ; in [POLYGENCODE.BAS] Clear TXGapTimer
    movlb 0x0A
ram_bank = 10
    clrf TXGapTimer
F1_002388 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__711
    movlb 0x00
ram_bank = 0
F1_002390 equ $ ; in [POLYGENCODE.BAS] if wifi_tmp="PUNKN" Then
    movlw ((((_strlb__14) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__14) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__713) >> 8)
    btfss STATUS,2
    goto _lbl__713
F1_002391 equ $ ; in [POLYGENCODE.BAS] Set PlayerUnknown
    bsf _B__VR7,3
F1_002392 equ $ ; in [POLYGENCODE.BAS] wifi_tmp=""
    movlw 33
    movwf FSR0LH
    movlw 243
    movwf FSR0L
    clrf INDF0
F1_002393 equ $ ; in [POLYGENCODE.BAS] Clear msgCount
    movlb 0x07
ram_bank = 7
    clrf msgCount
F1_002394 equ $ ; in [POLYGENCODE.BAS] RX1Buffer=RX1Buffer + ","
    movlw 33
    movwf FSR0LH
    movlw 104
    movwf FSR0L
    moviw INDF0++
    btfss STATUS,2
    bra $ - 2
    moviw INDF0--
    movlw 44
    movwi INDF0++
    clrf INDF0
F1_002395 equ $ ; in [POLYGENCODE.BAS] For N=7 To Len(RX1Buffer)
    movlw 33
    movwf FSR0LH
    movlw 104
    movwf FSR0L
    movlb 0x00
ram_bank = 0
    clrf PP0
    moviw INDF0++
    btfsc STATUS,2
    bra $ + 3
    incfsz PP0,F
    bra $ - 4
    movf PP0,W
    movwf PBL_VAR0
    movlb 0x02
ram_bank = 2
    movlw 7
    movwf _N
_frlb__714
ram_bank = 0
    movlb 0x02
ram_bank = 2
    movf _N,W
    movlb 0x00
ram_bank = 0
    subwf PBL_VAR0,W
    movlp ((_nxlb__715) >> 8)
    btfss STATUS,0
    goto _nxlb__715
F1_002396 equ $ ; in [POLYGENCODE.BAS] tmpstr=Mid$(RX1Buffer,N,1)
    movlw 34
    movwf FSR0LH
    movlw 97
    movwf FSR0L
    movlw 33
    movwf FSR1LH
    movlw 104
    movwf FSR1L
    movlb 0x02
ram_bank = 2
    movf _N,W
    movlb 0x00
ram_bank = 0
    movwf PP0
    movlw 1
    movwf PP0H
    decf PP0,F
    btfsc STATUS,2
    bra $ + 3
    moviw INDF1++
    bra $ - 4
    moviw INDF1++
    movwi INDF0++
    decfsz PP0H,F
    bra $ - 3
    clrf INDF0
F1_002397 equ $ ; in [POLYGENCODE.BAS] if tmpstr="," Then
    movlw 0x22
    movwf FSR0LH
    movlw 0x61
    movwf FSR0L
    moviw INDF0++
    movwf PP0
    movf INDF0,W
    movwf PP0H
    movf PP0,W
    xorlw 44
    iorwf PP0H,W
    movlp ((_lbl__718) >> 8)
    btfss STATUS,2
    goto _lbl__718
F1_002399 equ $ ; in [POLYGENCODE.BAS] Inc msgCount
    movlb 0x07
ram_bank = 7
    incf msgCount,F
F1_002400 equ $ ; in [POLYGENCODE.BAS] if msgCount=1 Then
    movlw 1
    subwf msgCount,W
    movlp ((_lbl__720) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__720
F1_002401 equ $ ; in [POLYGENCODE.BAS] emfcount=Val(wifi_tmp,Dec)
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    movlp ((__val_dec32__) >> 8)
    call __val_dec32__
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movwf emfcount
F1_002402 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__720
ram_bank = 0
F1_002403 equ $ ; in [POLYGENCODE.BAS] if msgCount=2 Then
    movlw 2
    movlb 0x07
ram_bank = 7
    subwf msgCount,W
    movlp ((_lbl__722) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__722
F1_002404 equ $ ; in [POLYGENCODE.BAS] mchcount=Val(wifi_tmp,Dec)
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    movlp ((__val_dec32__) >> 8)
    call __val_dec32__
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movwf mchcount
F1_002405 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__722
ram_bank = 0
F1_002406 equ $ ; in [POLYGENCODE.BAS] if msgCount=3 Then
    movlw 3
    movlb 0x07
ram_bank = 7
    subwf msgCount,W
    movlp ((_lbl__724) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__724
F1_002407 equ $ ; in [POLYGENCODE.BAS] CCCcount=Val(wifi_tmp,Dec)
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    movlp ((__val_dec32__) >> 8)
    call __val_dec32__
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movwf CCCcount
F1_002408 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__724
ram_bank = 0
F1_002409 equ $ ; in [POLYGENCODE.BAS] if msgCount=4 Then
    movlw 4
    movlb 0x07
ram_bank = 7
    subwf msgCount,W
    movlp ((_lbl__726) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__726
F1_002410 equ $ ; in [POLYGENCODE.BAS] randomvalue=Val(wifi_tmp,Dec)
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    movlp ((__val_dec32__) >> 8)
    call __val_dec32__
ram_bank = 0
    movlb 0x0E
ram_bank = 14
    movwf randomvalue
    movlb 0x00
ram_bank = 0
    movf PP2H,W
    movlb 0x0E
ram_bank = 14
    movwf randomvalueH
F1_002411 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__726
    movlb 0x00
ram_bank = 0
F1_002412 equ $ ; in [POLYGENCODE.BAS] wifi_tmp=""
    movlw 33
    movwf FSR0LH
    movlw 243
    movwf FSR0L
    clrf INDF0
    _mjump _lbl__727
_lbl__718
F1_002413 equ $ ; in [POLYGENCODE.BAS] else
F1_002414 equ $ ; in [POLYGENCODE.BAS] wifi_tmp=wifi_tmp +  tmpstr
    movlw 33
    movwf FSR0LH
    movlw 243
    movwf FSR0L
    moviw INDF0++
    btfss STATUS,2
    bra $ - 2
    moviw INDF0--
    movlw 0x22
    movwf FSR1LH
    movlw 0x61
    movwf FSR1L
    movlw 4
    movwf PP0
_pblb__728
    movf INDF1,F
    btfsc STATUS,2
    bra _pblb__729
    moviw INDF1++
    movwi INDF0++
    decfsz PP0,F
    bra _pblb__728
_pblb__729
    clrf INDF0
F1_002415 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__727
_ctlb__716
F1_002416 equ $ ; in [POLYGENCODE.BAS] Next
    movlw 1
    movlb 0x02
ram_bank = 2
    addwf _N,F
    movlp ((_frlb__714) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _frlb__714
_nxlb__715
F1_002417 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__713
F1_002419 equ $ ; in [POLYGENCODE.BAS] if wifi_tmp="PLAYR" Then
    movlw ((((_strlb__15) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__15) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__731) >> 8)
    btfss STATUS,2
    goto _lbl__731
F1_002421 equ $ ; in [POLYGENCODE.BAS] wifi_tmp=""
    movlw 33
    movwf FSR0LH
    movlw 243
    movwf FSR0L
    clrf INDF0
F1_002422 equ $ ; in [POLYGENCODE.BAS] Clear msgCount
    movlb 0x07
ram_bank = 7
    clrf msgCount
F1_002423 equ $ ; in [POLYGENCODE.BAS] Clear BoostResult
    movlb 0x0E
ram_bank = 14
    clrf BoostResult
F1_002424 equ $ ; in [POLYGENCODE.BAS] RX1Buffer=RX1Buffer + ","
    movlw 33
    movwf FSR0LH
    movlw 104
    movwf FSR0L
    moviw INDF0++
    btfss STATUS,2
    bra $ - 2
    moviw INDF0--
    movlw 44
    movwi INDF0++
    clrf INDF0
F1_002425 equ $ ; in [POLYGENCODE.BAS] For N=7 To Len(RX1Buffer)
    movlw 33
    movwf FSR0LH
    movlw 104
    movwf FSR0L
    movlb 0x00
ram_bank = 0
    clrf PP0
    moviw INDF0++
    btfsc STATUS,2
    bra $ + 3
    incfsz PP0,F
    bra $ - 4
    movf PP0,W
    movwf PBL_VAR0
    movlb 0x02
ram_bank = 2
    movlw 7
    movwf _N
_frlb__732
ram_bank = 0
    movlb 0x02
ram_bank = 2
    movf _N,W
    movlb 0x00
ram_bank = 0
    subwf PBL_VAR0,W
    movlp ((_nxlb__733) >> 8)
    btfss STATUS,0
    goto _nxlb__733
F1_002426 equ $ ; in [POLYGENCODE.BAS] tmpstr=Mid$(RX1Buffer,N,1)
    movlw 34
    movwf FSR0LH
    movlw 97
    movwf FSR0L
    movlw 33
    movwf FSR1LH
    movlw 104
    movwf FSR1L
    movlb 0x02
ram_bank = 2
    movf _N,W
    movlb 0x00
ram_bank = 0
    movwf PP0
    movlw 1
    movwf PP0H
    decf PP0,F
    btfsc STATUS,2
    bra $ + 3
    moviw INDF1++
    bra $ - 4
    moviw INDF1++
    movwi INDF0++
    decfsz PP0H,F
    bra $ - 3
    clrf INDF0
F1_002427 equ $ ; in [POLYGENCODE.BAS] if tmpstr="," Then
    movlw 0x22
    movwf FSR0LH
    movlw 0x61
    movwf FSR0L
    moviw INDF0++
    movwf PP0
    movf INDF0,W
    movwf PP0H
    movf PP0,W
    xorlw 44
    iorwf PP0H,W
    movlp ((_lbl__736) >> 8)
    btfss STATUS,2
    goto _lbl__736
F1_002429 equ $ ; in [POLYGENCODE.BAS] Inc msgCount
    movlb 0x07
ram_bank = 7
    incf msgCount,F
F1_002430 equ $ ; in [POLYGENCODE.BAS] if msgCount=1 Then
    movlw 1
    subwf msgCount,W
    movlp ((_lbl__738) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__738
F1_002431 equ $ ; in [POLYGENCODE.BAS] discs_NewTeam=Val(wifi_tmp,Dec)
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    movlp ((__val_dec32__) >> 8)
    call __val_dec32__
ram_bank = 0
    movlb 0x06
ram_bank = 6
    movwf discs_NewTeam
F1_002432 equ $ ; in [POLYGENCODE.BAS] Set PlayerKnown
    movlb 0x00
ram_bank = 0
    bsf _B__VR7,4
F1_002433 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__738
F1_002434 equ $ ; in [POLYGENCODE.BAS] if msgCount=3 Then
    movlw 3
    movlb 0x07
ram_bank = 7
    subwf msgCount,W
    movlp ((_lbl__740) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__740
F1_002435 equ $ ; in [POLYGENCODE.BAS] sTeam=Val(wifi_tmp,Dec)
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    movlp ((__val_dec32__) >> 8)
    call __val_dec32__
ram_bank = 0
    movlb 0x0E
ram_bank = 14
    movwf sTeam
F1_002436 equ $ ; in [POLYGENCODE.BAS] if sTeam>0 And sTeam<=TotalTeams Then
    btfsc sTeam,7
    bra _cplb__69
    movf sTeam,W
    sublw 0
    movlp ((_cplb__68) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _cplb__68
_cplb__69
ram_bank = 255
    clrw
    btfss STATUS,2
_cplb__68
    movlw 1
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlb 0x0E
ram_bank = 14
    movf sTeam,W
    movlb 0x0D
ram_bank = 13
    subwf TotalTeams,W
    movlb 0x0E
ram_bank = 14
    movf sTeam,W
    movlb 0x0D
ram_bank = 13
    xorwf TotalTeams,W
    btfsc STATUS,0
    xorlw 128
    andlw 128
    movlw 0
    btfss STATUS,2
    movlw 1
    movlb 0x00
ram_bank = 0
    andwf SP__P9_,F
    movlp ((_lbl__742) >> 8)
    btfsc STATUS,2
    goto _lbl__742
F1_002437 equ $ ; in [POLYGENCODE.BAS] discs_OwnerTeam=sTeam
    movlb 0x0E
ram_bank = 14
    movf sTeam,W
    movlb 0x06
ram_bank = 6
    movwf discs_OwnerTeam
    movlb 0x00
ram_bank = 0
    _mjump _lbl__743
_lbl__742
F1_002438 equ $ ; in [POLYGENCODE.BAS] else
F1_002439 equ $ ; in [POLYGENCODE.BAS] Clear discs_OwnerTeam
    movlb 0x06
ram_bank = 6
    clrf discs_OwnerTeam
F1_002440 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__743
ram_bank = 0
F1_002441 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__740
F1_002442 equ $ ; in [POLYGENCODE.BAS] if msgCount=4 Then
    movlw 4
    movlb 0x07
ram_bank = 7
    subwf msgCount,W
    movlp ((_lbl__745) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__745
F1_002443 equ $ ; in [POLYGENCODE.BAS] LangDelta=Val(wifi_tmp,Dec)
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    movlp ((__val_dec32__) >> 8)
    call __val_dec32__
ram_bank = 0
    movlb 0x0E
ram_bank = 14
    movwf LangDelta
    movlb 0x00
ram_bank = 0
    movf PP2H,W
    movlb 0x0E
ram_bank = 14
    movwf LangDeltaH
F1_002444 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__745
ram_bank = 0
F1_002445 equ $ ; in [POLYGENCODE.BAS] if msgCount=5 Then
    movlw 5
    movlb 0x07
ram_bank = 7
    subwf msgCount,W
    movlp ((_lbl__747) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__747
F1_002446 equ $ ; in [POLYGENCODE.BAS] BoostResult=Val(wifi_tmp,Dec)
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    movlp ((__val_dec32__) >> 8)
    call __val_dec32__
ram_bank = 0
    movlb 0x0E
ram_bank = 14
    movwf BoostResult
F1_002447 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__747
    movlb 0x00
ram_bank = 0
F1_002448 equ $ ; in [POLYGENCODE.BAS] wifi_tmp=""
    movlw 33
    movwf FSR0LH
    movlw 243
    movwf FSR0L
    clrf INDF0
    _mjump _lbl__748
_lbl__736
F1_002452 equ $ ; in [POLYGENCODE.BAS] else
F1_002453 equ $ ; in [POLYGENCODE.BAS] wifi_tmp=wifi_tmp +  tmpstr
    movlw 33
    movwf FSR0LH
    movlw 243
    movwf FSR0L
    moviw INDF0++
    btfss STATUS,2
    bra $ - 2
    moviw INDF0--
    movlw 0x22
    movwf FSR1LH
    movlw 0x61
    movwf FSR1L
    movlw 4
    movwf PP0
_pblb__749
    movf INDF1,F
    btfsc STATUS,2
    bra _pblb__750
    moviw INDF1++
    movwi INDF0++
    decfsz PP0,F
    bra _pblb__749
_pblb__750
    clrf INDF0
F1_002454 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__748
_ctlb__734
F1_002455 equ $ ; in [POLYGENCODE.BAS] Next
    movlw 1
    movlb 0x02
ram_bank = 2
    addwf _N,F
    movlp ((_frlb__732) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _frlb__732
_nxlb__733
F1_002456 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__731
F1_002458 equ $ ; in [POLYGENCODE.BAS] if wifi_tmp="PONGB" Then
    movlw ((((_strlb__16) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__16) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__752) >> 8)
    btfss STATUS,2
    goto _lbl__752
F1_002459 equ $ ; in [POLYGENCODE.BAS] Set WiFiPingPong
    bsf _B__VR3,6
F1_002460 equ $ ; in [POLYGENCODE.BAS] Clear TXGapTimer
    movlb 0x0A
ram_bank = 10
    clrf TXGapTimer
F1_002461 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__752
    movlb 0x00
ram_bank = 0
F1_002464 equ $ ; in [POLYGENCODE.BAS] if wifi_tmp="OWNER" Then
    movlw ((((_strlb__17) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__17) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__754) >> 8)
    btfss STATUS,2
    goto _lbl__754
F1_002465 equ $ ; in [POLYGENCODE.BAS] Set OwnerStatusReceived
    bsf _B__VR4,3
F1_002466 equ $ ; in [POLYGENCODE.BAS] comma1=7
    movlb 0x07
ram_bank = 7
    movlw 7
    movwf comma1
F1_002467 equ $ ; in [POLYGENCODE.BAS] comma2=7
    movwf comma2
F1_002468 equ $ ; in [POLYGENCODE.BAS] While comma2<Len(RX1Buffer)
_lbl__755
    movlb 0x00
ram_bank = 0
    movlw 33
    movwf FSR0LH
    movlw 104
    movwf FSR0L
    clrf PP0
    moviw INDF0++
    btfsc STATUS,2
    bra $ + 3
    incfsz PP0,F
    bra $ - 4
    movf PP0,W
    movwf PBS_VAR0
    movf PBS_VAR0,W
    movlb 0x07
ram_bank = 7
    subwf comma2,W
    movlp ((_lbl__756) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__756
F1_002469 equ $ ; in [POLYGENCODE.BAS] Inc comma2
    movlb 0x07
ram_bank = 7
    incf comma2,F
F1_002470 equ $ ; in [POLYGENCODE.BAS] wifi_tmp=Mid$(RX1Buffer,comma2,1)
    movlw 33
    movwf FSR0LH
    movlw 243
    movwf FSR0L
    movlw 33
    movwf FSR1LH
    movlw 104
    movwf FSR1L
    movf comma2,W
    movlb 0x00
ram_bank = 0
    movwf PP0
    movlw 1
    movwf PP0H
    decf PP0,F
    btfsc STATUS,2
    bra $ + 3
    moviw INDF1++
    bra $ - 4
    moviw INDF1++
    movwi INDF0++
    decfsz PP0H,F
    bra $ - 3
    clrf INDF0
F1_002471 equ $ ; in [POLYGENCODE.BAS] if wifi_tmp="," Then Break
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    moviw INDF0++
    movwf PP0
    movf INDF0,W
    movwf PP0H
    movf PP0,W
    xorlw 44
    iorwf PP0H,W
    movlp ((_lbl__756) >> 8)
    btfsc STATUS,2
    goto _lbl__756
F1_002472 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__755
_lbl__756
F1_002473 equ $ ; in [POLYGENCODE.BAS] commalen=(comma2-comma1)
    movlb 0x07
ram_bank = 7
    movf comma1,W
    subwf comma2,W
    movwf commalen
F1_002474 equ $ ; in [POLYGENCODE.BAS] wifi_tmp=Mid$(RX1Buffer,comma1,commalen)
    movlw 33
    movwf FSR0LH
    movlw 243
    movwf FSR0L
    movlw 33
    movwf FSR1LH
    movlw 104
    movwf FSR1L
    movf comma1,W
    movlb 0x00
ram_bank = 0
    movwf PP0
    movlb 0x07
ram_bank = 7
    movf commalen,W
    movlb 0x00
ram_bank = 0
    movwf PP0H
    decf PP0,F
    btfsc STATUS,2
    bra $ + 3
    moviw INDF1++
    bra $ - 4
    moviw INDF1++
    movwi INDF0++
    decfsz PP0H,F
    bra $ - 3
    clrf INDF0
F1_002476 equ $ ; in [POLYGENCODE.BAS] sTeam=Val(wifi_tmp,Dec)
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    movlp ((__val_dec32__) >> 8)
    call __val_dec32__
ram_bank = 0
    movlb 0x0E
ram_bank = 14
    movwf sTeam
F1_002477 equ $ ; in [POLYGENCODE.BAS] if sTeam>0 And sTeam<=TotalTeams Then
    btfsc sTeam,7
    bra _cplb__71
    movf sTeam,W
    sublw 0
    movlp ((_cplb__70) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _cplb__70
_cplb__71
ram_bank = 255
    clrw
    btfss STATUS,2
_cplb__70
    movlw 1
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlb 0x0E
ram_bank = 14
    movf sTeam,W
    movlb 0x0D
ram_bank = 13
    subwf TotalTeams,W
    movlb 0x0E
ram_bank = 14
    movf sTeam,W
    movlb 0x0D
ram_bank = 13
    xorwf TotalTeams,W
    btfsc STATUS,0
    xorlw 128
    andlw 128
    movlw 0
    btfss STATUS,2
    movlw 1
    movlb 0x00
ram_bank = 0
    andwf SP__P9_,F
    movlp ((_lbl__760) >> 8)
    btfsc STATUS,2
    goto _lbl__760
F1_002478 equ $ ; in [POLYGENCODE.BAS] discs_OwnerTeam=sTeam
    movlb 0x0E
ram_bank = 14
    movf sTeam,W
    movlb 0x06
ram_bank = 6
    movwf discs_OwnerTeam
    movlb 0x00
ram_bank = 0
    _mjump _lbl__761
_lbl__760
F1_002479 equ $ ; in [POLYGENCODE.BAS] else
F1_002480 equ $ ; in [POLYGENCODE.BAS] Clear discs_OwnerTeam
    movlb 0x06
ram_bank = 6
    clrf discs_OwnerTeam
F1_002481 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__761
ram_bank = 0
F1_002484 equ $ ; in [POLYGENCODE.BAS] if comma2+4<Len(RX1Buffer) Then
    movlw 4
    movlb 0x07
ram_bank = 7
    addwf comma2,W
    movlb 0x00
ram_bank = 0
    clrf PBS_VAR0H
    movwf PBS_VAR0
    rlf PBS_VAR0H,F
    movlw 33
    movwf FSR0LH
    movlw 104
    movwf FSR0L
    clrf PP0
    moviw INDF0++
    btfsc STATUS,2
    bra $ + 3
    incfsz PP0,F
    bra $ - 4
    movf PP0,W
    movwf PBS_VAR1
    movf PBS_VAR0H,F
    movlp ((_lbl__763) >> 8)
    btfss STATUS,2
    goto _lbl__763
    movf PBS_VAR1,W
    subwf PBS_VAR0,W
    movlp ((_lbl__763) >> 8)
    btfsc STATUS,0
    goto _lbl__763
F1_002485 equ $ ; in [POLYGENCODE.BAS] Clear C
    movlb 0x0D
ram_bank = 13
    clrf _C
F1_002487 equ $ ; in [POLYGENCODE.BAS] For N=comma2+1 To Len(RX1Buffer) Step 2
    movlb 0x07
ram_bank = 7
    incf comma2,W
    movlb 0x02
ram_bank = 2
    movwf _N
    movlw 33
    movwf FSR0LH
    movlw 104
    movwf FSR0L
    movlb 0x00
ram_bank = 0
    clrf PP0
    moviw INDF0++
    btfsc STATUS,2
    bra $ + 3
    incfsz PP0,F
    bra $ - 4
    movf PP0,W
    movwf PBL_VAR0
_frlb__764
    movlb 0x02
ram_bank = 2
    movf _N,W
    movlb 0x00
ram_bank = 0
    subwf PBL_VAR0,W
    movlp ((_nxlb__765) >> 8)
    btfss STATUS,0
    goto _nxlb__765
F1_002488 equ $ ; in [POLYGENCODE.BAS] wifi_tmp=Mid$(RX1Buffer,N,2)
    movlw 33
    movwf FSR0LH
    movlw 243
    movwf FSR0L
    movlw 33
    movwf FSR1LH
    movlw 104
    movwf FSR1L
    movlb 0x02
ram_bank = 2
    movf _N,W
    movlb 0x00
ram_bank = 0
    movwf PP0
    movlw 2
    movwf PP0H
    decf PP0,F
    btfsc STATUS,2
    bra $ + 3
    moviw INDF1++
    bra $ - 4
    moviw INDF1++
    movwi INDF0++
    decfsz PP0H,F
    bra $ - 3
    clrf INDF0
F1_002489 equ $ ; in [POLYGENCODE.BAS] discs_OwnerToken[C] =Val(wifi_tmp,Hex)
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    movlp ((__val_hex32__) >> 8)
    call __val_hex32__
ram_bank = 0
    movwf PBS_VAR0
    movlb 0x0D
ram_bank = 13
    movf _C,W
    addlw 218
    movwf FSR0L
    movlw 0x21
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x00
ram_bank = 0
    movf PBS_VAR0,W
    movwf INDF0
F1_002490 equ $ ; in [POLYGENCODE.BAS] Inc C
    movlb 0x0D
ram_bank = 13
    incf _C,F
_ctlb__766
ram_bank = 0
F1_002491 equ $ ; in [POLYGENCODE.BAS] Next
    movlw 2
    movlb 0x02
ram_bank = 2
    addwf _N,F
    movlp ((_frlb__764) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _frlb__764
_nxlb__765
    _mjump _lbl__767
_lbl__763
F1_002492 equ $ ; in [POLYGENCODE.BAS] else
F1_002493 equ $ ; in [POLYGENCODE.BAS] Clear discs_OwnerToken
    movlw 0x21
    movwf FSR0LH
    movlw 0xDA
    movwf FSR0L
    movlw 11
    movwf PP0
    movlw 0
    movwi INDF0++
    decfsz PP0,F
    bra $ - 3
F1_002494 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__767
F1_002495 equ $ ; in [POLYGENCODE.BAS] Clear wifi_tmp[0]
    movlb 0x06
ram_bank = 6
    clrf wifi_tmp#0
F1_002496 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__754
    movlb 0x00
ram_bank = 0
F1_002498 equ $ ; in [POLYGENCODE.BAS] if wifi_tmp="CAPOK" Then
    movlw ((((_strlb__18) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__18) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__769) >> 8)
    btfss STATUS,2
    goto _lbl__769
F1_002499 equ $ ; in [POLYGENCODE.BAS] Set CaptureSucess
    bsf _B__VR7,5
F1_002500 equ $ ; in [POLYGENCODE.BAS] Clear CurrentBoostCount
    movlb 0x0E
ram_bank = 14
    clrf CurrentBoostCount
F1_002501 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__769
    movlb 0x00
ram_bank = 0
F1_002503 equ $ ; in [POLYGENCODE.BAS] if wifi_tmp="CAPFA" Then
    movlw ((((_strlb__19) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__19) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__771) >> 8)
    btfss STATUS,2
    goto _lbl__771
F1_002504 equ $ ; in [POLYGENCODE.BAS] Set CaptureFailed
    bsf _B__VR7,6
F1_002505 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__771
F1_002507 equ $ ; in [POLYGENCODE.BAS] if wifi_tmp="HAVKY" Then
    movlw ((((_strlb__20) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__20) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__773) >> 8)
    btfss STATUS,2
    goto _lbl__773
F1_002508 equ $ ; in [POLYGENCODE.BAS] Set WiFiHasKeys
    bsf _B__VR3,7
F1_002509 equ $ ; in [POLYGENCODE.BAS] Clear WiFiNoKeys
    bcf _B__VR4,0
F1_002510 equ $ ; in [POLYGENCODE.BAS] Clear TXGapTimer
    movlb 0x0A
ram_bank = 10
    clrf TXGapTimer
F1_002511 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__773
    movlb 0x00
ram_bank = 0
F1_002512 equ $ ; in [POLYGENCODE.BAS] if wifi_tmp="NOKEY" Then
    movlw ((((_strlb__21) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__21) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__775) >> 8)
    btfss STATUS,2
    goto _lbl__775
F1_002513 equ $ ; in [POLYGENCODE.BAS] Set WiFiNoKeys
    bsf _B__VR4,0
F1_002514 equ $ ; in [POLYGENCODE.BAS] Clear WiFiHasKeys
    bcf _B__VR3,7
F1_002515 equ $ ; in [POLYGENCODE.BAS] Clear TXGapTimer
    movlb 0x0A
ram_bank = 10
    clrf TXGapTimer
F1_002516 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__775
    movlb 0x00
ram_bank = 0
F1_002518 equ $ ; in [POLYGENCODE.BAS] if wifi_tmp="config" Then
    movlw ((((_strlb__22) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__22) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__777) >> 8)
    btfss STATUS,2
    goto _lbl__777
F1_002519 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__777
F1_002520 equ $ ; in [POLYGENCODE.BAS] if wifi_tmp="UPDWF" Then
    movlw ((((_strlb__23) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__23) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__779) >> 8)
    btfss STATUS,2
    goto _lbl__779
F1_002521 equ $ ; in [POLYGENCODE.BAS] Clear RX1BufPos
    movlb 0x05
ram_bank = 5
    clrf RX1BufPos
F1_002522 equ $ ; in [POLYGENCODE.BAS] SoundTemp=23
    movlb 0x0B
ram_bank = 11
    movlw 23
    movwf SoundTemp
F1_002523 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_002524 equ $ ; in [POLYGENCODE.BAS] Set WiFiUpdateInProgress
    bsf _B__VR2,7
F1_002525 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_002526 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__779
F1_002527 equ $ ; in [POLYGENCODE.BAS] if wifi_tmp="UPDOK" Then
    movlw ((((_strlb__24) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__24) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__781) >> 8)
    btfss STATUS,2
    goto _lbl__781
F1_002528 equ $ ; in [POLYGENCODE.BAS] SoundTemp=24
    movlb 0x0B
ram_bank = 11
    movlw 24
    movwf SoundTemp
F1_002529 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_002530 equ $ ; in [POLYGENCODE.BAS] GeneralTimer=50
    movlb 0x0D
ram_bank = 13
    clrf GeneralTimerH
    movlw 50
    movwf GeneralTimer
F1_002531 equ $ ; in [POLYGENCODE.BAS] While GeneralTimer>0
_lbl__782
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movf GeneralTimer,F
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    bra _cplb__72
    movlb 0x0D
ram_bank = 13
    movf GeneralTimerH,F
    movlp ((_lbl__783) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__783
_cplb__72
ram_bank = 255
F1_002532 equ $ ; in [POLYGENCODE.BAS] GoSub IdleTasks
    movlb 0x00
ram_bank = 0
    movlp ((IdleTasks) >> 8)
    call IdleTasks
ram_bank = 0
F1_002533 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__782
_lbl__783
F1_002534 equ $ ; in [POLYGENCODE.BAS] Clear WIFIReset
    bcf LATA,3
F1_002535 equ $ ; in [POLYGENCODE.BAS] DelayMs 16
    movlw 16
    movlp ((__delay_ms_) >> 8)
    call __delay_ms_
ram_bank = 0
F1_002536 equ $ ; in [POLYGENCODE.BAS] Set WIFIReset
    bsf LATA,3
F1_002537 equ $ ; in [POLYGENCODE.BAS] Clear WiFiUpdateInProgress
    bcf _B__VR2,7
F1_002538 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__781
F1_002542 equ $ ; in [POLYGENCODE.BAS] if wifi_tmp="GAMED" Then
    movlw ((((_strlb__25) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__25) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__785) >> 8)
    btfss STATUS,2
    goto _lbl__785
F1_002543 equ $ ; in [POLYGENCODE.BAS] wifi_tmp=""
    movlw 33
    movwf FSR0LH
    movlw 243
    movwf FSR0L
    clrf INDF0
F1_002544 equ $ ; in [POLYGENCODE.BAS] RX1Buffer=RX1Buffer + ","
    movlw 33
    movwf FSR0LH
    movlw 104
    movwf FSR0L
    moviw INDF0++
    btfss STATUS,2
    bra $ - 2
    moviw INDF0--
    movlw 44
    movwi INDF0++
    clrf INDF0
F1_002545 equ $ ; in [POLYGENCODE.BAS] Set ReceivedGameStatus
    bsf _B__VR4,4
F1_002546 equ $ ; in [POLYGENCODE.BAS] Clear msgCount
    movlb 0x07
ram_bank = 7
    clrf msgCount
F1_002547 equ $ ; in [POLYGENCODE.BAS] For N=7 To Len(RX1Buffer)
    movlw 33
    movwf FSR0LH
    movlw 104
    movwf FSR0L
    movlb 0x00
ram_bank = 0
    clrf PP0
    moviw INDF0++
    btfsc STATUS,2
    bra $ + 3
    incfsz PP0,F
    bra $ - 4
    movf PP0,W
    movwf PBL_VAR0
    movlb 0x02
ram_bank = 2
    movlw 7
    movwf _N
_frlb__786
ram_bank = 0
    movlb 0x02
ram_bank = 2
    movf _N,W
    movlb 0x00
ram_bank = 0
    subwf PBL_VAR0,W
    movlp ((_nxlb__787) >> 8)
    btfss STATUS,0
    goto _nxlb__787
F1_002548 equ $ ; in [POLYGENCODE.BAS] tmpstr=Mid$(RX1Buffer,N,1)
    movlw 34
    movwf FSR0LH
    movlw 97
    movwf FSR0L
    movlw 33
    movwf FSR1LH
    movlw 104
    movwf FSR1L
    movlb 0x02
ram_bank = 2
    movf _N,W
    movlb 0x00
ram_bank = 0
    movwf PP0
    movlw 1
    movwf PP0H
    decf PP0,F
    btfsc STATUS,2
    bra $ + 3
    moviw INDF1++
    bra $ - 4
    moviw INDF1++
    movwi INDF0++
    decfsz PP0H,F
    bra $ - 3
    clrf INDF0
F1_002550 equ $ ; in [POLYGENCODE.BAS] if tmpstr=","  Then
    movlw 0x22
    movwf FSR0LH
    movlw 0x61
    movwf FSR0L
    moviw INDF0++
    movwf PP0
    movf INDF0,W
    movwf PP0H
    movf PP0,W
    xorlw 44
    iorwf PP0H,W
    movlp ((_lbl__790) >> 8)
    btfss STATUS,2
    goto _lbl__790
F1_002552 equ $ ; in [POLYGENCODE.BAS] Inc msgCount
    movlb 0x07
ram_bank = 7
    incf msgCount,F
F1_002553 equ $ ; in [POLYGENCODE.BAS] Select msgCount
F1_002554 equ $ ; in [POLYGENCODE.BAS] Case 1
    movlw 1
    subwf msgCount,W
    movlp ((_lbl__792) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__792
F1_002555 equ $ ; in [POLYGENCODE.BAS] GameStatus=Val(wifi_tmp,Dec)
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    movlp ((__val_dec32__) >> 8)
    call __val_dec32__
ram_bank = 0
    movlb 0x07
ram_bank = 7
    movwf GameStatus
    movlb 0x00
ram_bank = 0
    _mjump _lbl__791
_lbl__792
F1_002556 equ $ ; in [POLYGENCODE.BAS] Case 2
    movlw 2
    movlb 0x07
ram_bank = 7
    subwf msgCount,W
    movlp ((_lbl__795) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__795
F1_002557 equ $ ; in [POLYGENCODE.BAS] WinningTeam=Val(wifi_tmp,Dec)
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    movlp ((__val_dec32__) >> 8)
    call __val_dec32__
ram_bank = 0
    movlb 0x07
ram_bank = 7
    movwf WinningTeam
    movlb 0x00
ram_bank = 0
    _mjump _lbl__791
_lbl__795
F1_002558 equ $ ; in [POLYGENCODE.BAS] Case 3
    movlw 3
    movlb 0x07
ram_bank = 7
    subwf msgCount,W
    movlp ((_lbl__797) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__797
F1_002559 equ $ ; in [POLYGENCODE.BAS] SoundLevel=Val(wifi_tmp,Dec)
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    movlp ((__val_dec32__) >> 8)
    call __val_dec32__
ram_bank = 0
    movlb 0x07
ram_bank = 7
    movwf SoundLevel
    movlb 0x00
ram_bank = 0
    _mjump _lbl__791
_lbl__797
F1_002560 equ $ ; in [POLYGENCODE.BAS] Case 4
    movlw 4
    movlb 0x07
ram_bank = 7
    subwf msgCount,W
    movlp ((_lbl__799) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__799
F1_002561 equ $ ; in [POLYGENCODE.BAS] DiscCurrentStatus=Val(wifi_tmp,Dec)
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    movlp ((__val_dec32__) >> 8)
    call __val_dec32__
ram_bank = 0
    movlb 0x07
ram_bank = 7
    movwf DiscCurrentStatus
    movlb 0x00
ram_bank = 0
    _mjump _lbl__791
_lbl__799
F1_002562 equ $ ; in [POLYGENCODE.BAS] Case 5
    movlw 5
    movlb 0x07
ram_bank = 7
    subwf msgCount,W
    movlp ((_lbl__801) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__801
F1_002563 equ $ ; in [POLYGENCODE.BAS] EarlyCheckin=Val(wifi_tmp,Dec)
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    movlp ((__val_dec32__) >> 8)
    call __val_dec32__
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movwf EarlyCheckin
    movlb 0x00
ram_bank = 0
    _mjump _lbl__791
_lbl__801
F1_002564 equ $ ; in [POLYGENCODE.BAS] Case 6
    movlw 6
    movlb 0x07
ram_bank = 7
    subwf msgCount,W
    movlp ((_lbl__803) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__803
F1_002565 equ $ ; in [POLYGENCODE.BAS] if Len(wifi_tmp)>3 Then discs_OwnerToken=wifi_tmp
    movlw 33
    movwf FSR0LH
    movlw 243
    movwf FSR0L
    clrf PP0
    moviw INDF0++
    btfsc STATUS,2
    bra $ + 3
    incfsz PP0,F
    bra $ - 4
    movf PP0,W
    movwf PBS_VAR0
    movlw 4
    subwf PBS_VAR0,W
    movlp ((_lbl__805) >> 8)
    btfss STATUS,0
    goto _lbl__805
    movlw 33
    movwf FSR0LH
    movlw 218
    movwf FSR0L
    movlw 0x21
    movwf FSR1LH
    movlw 0xF3
    movwf FSR1L
    movlw 10
    movwf PP0
    movf INDF1,F
    btfsc STATUS,2
    bra $ + 5
    moviw INDF1++
    movwi INDF0++
    decfsz PP0,F
    bra $ - 6
_lbl__805
    _mjump _lbl__791
_lbl__803
F1_002566 equ $ ; in [POLYGENCODE.BAS] Case 7
    movlw 7
    movlb 0x07
ram_bank = 7
    subwf msgCount,W
    movlp ((_lbl__807) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__807
F1_002567 equ $ ; in [POLYGENCODE.BAS] sTeam=Val(wifi_tmp,Dec)
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    movlp ((__val_dec32__) >> 8)
    call __val_dec32__
ram_bank = 0
    movlb 0x0E
ram_bank = 14
    movwf sTeam
F1_002568 equ $ ; in [POLYGENCODE.BAS] if sTeam>0 And sTeam<=TotalTeams Then
    btfsc sTeam,7
    bra _cplb__74
    movf sTeam,W
    sublw 0
    movlp ((_cplb__73) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _cplb__73
_cplb__74
ram_bank = 255
    clrw
    btfss STATUS,2
_cplb__73
    movlw 1
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlb 0x0E
ram_bank = 14
    movf sTeam,W
    movlb 0x0D
ram_bank = 13
    subwf TotalTeams,W
    movlb 0x0E
ram_bank = 14
    movf sTeam,W
    movlb 0x0D
ram_bank = 13
    xorwf TotalTeams,W
    btfsc STATUS,0
    xorlw 128
    andlw 128
    movlw 0
    btfss STATUS,2
    movlw 1
    movlb 0x00
ram_bank = 0
    andwf SP__P9_,F
    movlp ((_lbl__809) >> 8)
    btfsc STATUS,2
    goto _lbl__809
F1_002569 equ $ ; in [POLYGENCODE.BAS] discs_OwnerTeam=sTeam
    movlb 0x0E
ram_bank = 14
    movf sTeam,W
    movlb 0x06
ram_bank = 6
    movwf discs_OwnerTeam
    movlb 0x00
ram_bank = 0
    _mjump _lbl__810
_lbl__809
F1_002570 equ $ ; in [POLYGENCODE.BAS] else
F1_002571 equ $ ; in [POLYGENCODE.BAS] Clear discs_OwnerTeam
    movlb 0x06
ram_bank = 6
    clrf discs_OwnerTeam
F1_002572 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__810
    movlb 0x00
ram_bank = 0
    _mjump _lbl__791
_lbl__807
F1_002573 equ $ ; in [POLYGENCODE.BAS] Case 8
    movlw 8
    movlb 0x07
ram_bank = 7
    subwf msgCount,W
    movlp ((_lbl__812) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__812
F1_002574 equ $ ; in [POLYGENCODE.BAS] IdleRFIDGap=Val(wifi_tmp,Dec)
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    movlp ((__val_dec32__) >> 8)
    call __val_dec32__
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movwf IdleRFIDGap
    movlb 0x00
ram_bank = 0
    _mjump _lbl__791
_lbl__812
F1_002575 equ $ ; in [POLYGENCODE.BAS] Case 9
    movlw 9
    movlb 0x07
ram_bank = 7
    subwf msgCount,W
    movlp ((_lbl__814) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__814
F1_002576 equ $ ; in [POLYGENCODE.BAS] IdleAnimationDelay=Val(wifi_tmp,Dec)
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    movlp ((__val_dec32__) >> 8)
    call __val_dec32__
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movwf IdleAnimationDelay
    movlb 0x00
ram_bank = 0
    _mjump _lbl__791
_lbl__814
F1_002577 equ $ ; in [POLYGENCODE.BAS] Case 10
    movlw 10
    movlb 0x07
ram_bank = 7
    subwf msgCount,W
    movlp ((_lbl__816) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__816
F1_002578 equ $ ; in [POLYGENCODE.BAS] IdleDiagInterval=Val(wifi_tmp,Dec)
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    movlp ((__val_dec32__) >> 8)
    call __val_dec32__
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movwf IdleDiagInterval
    movlb 0x00
ram_bank = 0
    movf PP2H,W
    movlb 0x0D
ram_bank = 13
    movwf IdleDiagIntervalH
    movlb 0x00
ram_bank = 0
    _mjump _lbl__791
_lbl__816
F1_002579 equ $ ; in [POLYGENCODE.BAS] Case 11
    movlw 11
    movlb 0x07
ram_bank = 7
    subwf msgCount,W
    movlp ((_lbl__818) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__818
F1_002580 equ $ ; in [POLYGENCODE.BAS] IdleAliveInterval=Val(wifi_tmp,Dec)
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    movlp ((__val_dec32__) >> 8)
    call __val_dec32__
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movwf IdleAliveInterval
    movlb 0x00
ram_bank = 0
    movf PP2H,W
    movlb 0x0D
ram_bank = 13
    movwf IdleAliveIntervalH
    movlb 0x00
ram_bank = 0
    _mjump _lbl__791
_lbl__818
F1_002581 equ $ ; in [POLYGENCODE.BAS] Case 12
    movlw 12
    movlb 0x07
ram_bank = 7
    subwf msgCount,W
    movlp ((_lbl__820) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__820
F1_002582 equ $ ; in [POLYGENCODE.BAS] CurrentBoostCount=Val(wifi_tmp,Dec)
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    movlp ((__val_dec32__) >> 8)
    call __val_dec32__
ram_bank = 0
    movlb 0x0E
ram_bank = 14
    movwf CurrentBoostCount
    movlb 0x00
ram_bank = 0
    _mjump _lbl__791
_lbl__820
F1_002583 equ $ ; in [POLYGENCODE.BAS] Case 13
    movlw 13
    movlb 0x07
ram_bank = 7
    subwf msgCount,W
    movlp ((_lbl__822) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__822
F1_002584 equ $ ; in [POLYGENCODE.BAS] Clear TotalTeams
    movlb 0x0D
ram_bank = 13
    clrf TotalTeams
F1_002590 equ $ ; in [POLYGENCODE.BAS] teamindex=1
    movlb 0x0E
ram_bank = 14
    movlw 1
    movwf teamindex
F1_002591 equ $ ; in [POLYGENCODE.BAS] teamdatalen=Len(wifi_tmp)
    movlw 33
    movwf FSR0LH
    movlw 243
    movwf FSR0L
    movlb 0x00
ram_bank = 0
    clrf PP0
    moviw INDF0++
    btfsc STATUS,2
    bra $ + 3
    incfsz PP0,F
    bra $ - 4
    movf PP0,W
    movlb 0x0E
ram_bank = 14
    movwf teamdatalen
F1_002592 equ $ ; in [POLYGENCODE.BAS] While teamindex < teamdatalen
_lbl__823
ram_bank = 0
    movlb 0x0E
ram_bank = 14
    movf teamdatalen,W
    subwf teamindex,W
    movlp ((_lbl__824) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__824
F1_002593 equ $ ; in [POLYGENCODE.BAS] Inc TotalTeams
    movlb 0x0D
ram_bank = 13
    incf TotalTeams,F
F1_002595 equ $ ; in [POLYGENCODE.BAS] wifi_txt=Mid$(wifi_tmp,teamindex,2)
    movlw 34
    movwf FSR0LH
    movlw 88
    movwf FSR0L
    movlw 33
    movwf FSR1LH
    movlw 243
    movwf FSR1L
    movlb 0x0E
ram_bank = 14
    movf teamindex,W
    movlb 0x00
ram_bank = 0
    movwf PP0
    movlw 2
    movwf PP0H
    decf PP0,F
    btfsc STATUS,2
    bra $ + 3
    moviw INDF1++
    bra $ - 4
    moviw INDF1++
    movwi INDF0++
    decfsz PP0H,F
    bra $ - 3
    clrf INDF0
F1_002596 equ $ ; in [POLYGENCODE.BAS] wifiteamID=Val(wifi_txt,Hex)
    movlw 0x22
    movwf FSR0LH
    movlw 0x58
    movwf FSR0L
    movlp ((__val_hex32__) >> 8)
    call __val_hex32__
ram_bank = 0
    movlb 0x0E
ram_bank = 14
    movwf wifiteamID
F1_002599 equ $ ; in [POLYGENCODE.BAS] wifi_txt=Mid$(wifi_tmp,teamindex+2,4)
    movlw 34
    movwf FSR0LH
    movlw 88
    movwf FSR0L
    movlw 33
    movwf FSR1LH
    movlw 243
    movwf FSR1L
    movlw 2
    addwf teamindex,W
    movlb 0x00
ram_bank = 0
    movwf PP0
    movlw 4
    movwf PP0H
    decf PP0,F
    btfsc STATUS,2
    bra $ + 3
    moviw INDF1++
    bra $ - 4
    moviw INDF1++
    movwi INDF0++
    decfsz PP0H,F
    bra $ - 3
    clrf INDF0
F1_002600 equ $ ; in [POLYGENCODE.BAS] wifi_tmpw=Val(wifi_txt,Hex)
    movlw 0x22
    movwf FSR0LH
    movlw 0x58
    movwf FSR0L
    movlp ((__val_hex32__) >> 8)
    call __val_hex32__
ram_bank = 0
    movlb 0x0E
ram_bank = 14
    movwf wifi_tmpw
    movlb 0x00
ram_bank = 0
    movf PP2H,W
    movlb 0x0E
ram_bank = 14
    movwf wifi_tmpwH
F1_002601 equ $ ; in [POLYGENCODE.BAS] TeamColourHue[wifiteamID] =wifi_tmpw
    lslf wifiteamID,W
    movwf FSR0L
    clrf FSR0H
    rlf FSR0H,F
    movlw 0x23
    addwf FSR0L,F
    movlw 0x24
    addwfc FSR0H,F
    movf wifi_tmpw,W
    movwi INDF0++
    movf wifi_tmpwH,W
    movwf INDF0
F1_002606 equ $ ; in [POLYGENCODE.BAS] wifi_txt=Mid$(wifi_tmp,teamindex+6,2)
    movlw 34
    movwf FSR0LH
    movlw 88
    movwf FSR0L
    movlw 33
    movwf FSR1LH
    movlw 243
    movwf FSR1L
    movlw 6
    addwf teamindex,W
    movlb 0x00
ram_bank = 0
    movwf PP0
    movlw 2
    movwf PP0H
    decf PP0,F
    btfsc STATUS,2
    bra $ + 3
    moviw INDF1++
    bra $ - 4
    moviw INDF1++
    movwi INDF0++
    decfsz PP0H,F
    bra $ - 3
    clrf INDF0
F1_002607 equ $ ; in [POLYGENCODE.BAS] wifi_tmpw.LowByte=Val(wifi_txt,Hex)
    movlw 0x22
    movwf FSR0LH
    movlw 0x58
    movwf FSR0L
    movlp ((__val_hex32__) >> 8)
    call __val_hex32__
ram_bank = 0
    movlb 0x0E
ram_bank = 14
    movwf wifi_tmpw
F1_002608 equ $ ; in [POLYGENCODE.BAS] TeamSoundOffset[wifiteamID] =wifi_tmpw.LowByte
    movf wifiteamID,W
    addlw 55
    movwf FSR0L
    movlw 0x24
    clrf FSR0H
    addwfc FSR0H,F
    movf wifi_tmpw,W
    movwf INDF0
F1_002611 equ $ ; in [POLYGENCODE.BAS] teamindex=teamindex+8
    movlw 8
    addwf teamindex,F
F1_002612 equ $ ; in [POLYGENCODE.BAS] Wend
    movlb 0x00
ram_bank = 0
    _mjump _lbl__823
_lbl__824
    _mjump _lbl__791
_lbl__822
F1_002613 equ $ ; in [POLYGENCODE.BAS] Case 14
    movlw 14
    movlb 0x07
ram_bank = 7
    subwf msgCount,W
    movlp ((_lbl__826) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__826
F1_002614 equ $ ; in [POLYGENCODE.BAS] NewPlayerSound=Val(wifi_tmp,Hex)
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    movlp ((__val_hex32__) >> 8)
    call __val_hex32__
ram_bank = 0
    movlb 0x0B
ram_bank = 11
    movwf NewPlayerSound
    movlb 0x00
ram_bank = 0
    _mjump _lbl__791
_lbl__826
F1_002615 equ $ ; in [POLYGENCODE.BAS] Case 15
    movlw 15
    movlb 0x07
ram_bank = 7
    subwf msgCount,W
    movlp ((_lbl__828) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__828
F1_002616 equ $ ; in [POLYGENCODE.BAS] PostRegSound=Val(wifi_tmp,Hex)
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    movlp ((__val_hex32__) >> 8)
    call __val_hex32__
ram_bank = 0
    movlb 0x0B
ram_bank = 11
    movwf PostRegSound
F1_002617 equ $ ; in [POLYGENCODE.BAS] EndSelect
_lbl__828
    movlb 0x00
ram_bank = 0
_lbl__791
F1_002619 equ $ ; in [POLYGENCODE.BAS] wifi_tmp=""
    movlw 33
    movwf FSR0LH
    movlw 243
    movwf FSR0L
    clrf INDF0
    _mjump _lbl__829
_lbl__790
F1_002620 equ $ ; in [POLYGENCODE.BAS] else
F1_002621 equ $ ; in [POLYGENCODE.BAS] wifi_tmp=wifi_tmp +  tmpstr
    movlw 33
    movwf FSR0LH
    movlw 243
    movwf FSR0L
    moviw INDF0++
    btfss STATUS,2
    bra $ - 2
    moviw INDF0--
    movlw 0x22
    movwf FSR1LH
    movlw 0x61
    movwf FSR1L
    movlw 4
    movwf PP0
_pblb__830
    movf INDF1,F
    btfsc STATUS,2
    bra _pblb__831
    moviw INDF1++
    movwi INDF0++
    decfsz PP0,F
    bra _pblb__830
_pblb__831
    clrf INDF0
F1_002622 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__829
_ctlb__788
F1_002623 equ $ ; in [POLYGENCODE.BAS] Next
    movlw 1
    movlb 0x02
ram_bank = 2
    addwf _N,F
    movlp ((_frlb__786) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _frlb__786
_nxlb__787
F1_002624 equ $ ; in [POLYGENCODE.BAS] if GameStatus=1 Or GameStatus=3 Then
    movlw 1
    movlb 0x07
ram_bank = 7
    subwf GameStatus,W
    movlw 1
    btfss STATUS,2
    movlw 0
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlw 3
    movlb 0x07
ram_bank = 7
    subwf GameStatus,W
    movlw 1
    btfss STATUS,2
    movlw 0
    movlb 0x00
ram_bank = 0
    iorwf SP__P9_,F
    movlp ((_lbl__833) >> 8)
    btfsc STATUS,2
    goto _lbl__833
F1_002625 equ $ ; in [POLYGENCODE.BAS] Clear discs_OwnerTeam
    movlb 0x06
ram_bank = 6
    clrf discs_OwnerTeam
F1_002626 equ $ ; in [POLYGENCODE.BAS] Clear discs_OwnerToken
    movlw 0x21
    movwf FSR0LH
    movlw 0xDA
    movwf FSR0L
    movlb 0x00
ram_bank = 0
    movlw 11
    movwf PP0
    movlw 0
    movwi INDF0++
    decfsz PP0,F
    bra $ - 3
F1_002627 equ $ ; in [POLYGENCODE.BAS] Clear discs_LastToken
    movlw 0x21
    movwf FSR0LH
    movlw 0xE6
    movwf FSR0L
    movlw 11
    movwf PP0
    movlw 0
    movwi INDF0++
    decfsz PP0,F
    bra $ - 3
F1_002628 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__833
F1_002631 equ $ ; in [POLYGENCODE.BAS] Clear wifi_tmp[0]
    movlb 0x06
ram_bank = 6
    clrf wifi_tmp#0
F1_002633 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__785
    movlb 0x00
ram_bank = 0
F1_002635 equ $ ; in [POLYGENCODE.BAS] if wifi_tmp="WIFIF" Then Set WiFiFailedToJoinSSID
    movlw ((((_strlb__26) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__26) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__835) >> 8)
    btfss STATUS,2
    goto _lbl__835
    bsf _B__VR4,1
_lbl__835
F1_002636 equ $ ; in [POLYGENCODE.BAS] if wifi_tmp="REGOK" Then Set RegisterUserSuccess
    movlw ((((_strlb__27) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__27) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__837) >> 8)
    btfss STATUS,2
    goto _lbl__837
    bsf _B__VR7,7
_lbl__837
F1_002637 equ $ ; in [POLYGENCODE.BAS] if wifi_tmp="REGFA" Then Set RegisterUserFailed
    movlw ((((_strlb__28) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__28) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__839) >> 8)
    btfss STATUS,2
    goto _lbl__839
    bsf _B__VR8,0
_lbl__839
F1_002638 equ $ ; in [POLYGENCODE.BAS] if wifi_tmp="WIPED" Then
    movlw ((((_strlb__29) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__29) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__841) >> 8)
    btfss STATUS,2
    goto _lbl__841
F1_002639 equ $ ; in [POLYGENCODE.BAS] Set WiFiEncryptionKeysWiped
    bsf _B__VR4,2
F1_002640 equ $ ; in [POLYGENCODE.BAS] Clear WiFiHasKeys
    bcf _B__VR3,7
F1_002641 equ $ ; in [POLYGENCODE.BAS] Set WiFiNoKeys
    bsf _B__VR4,0
F1_002642 equ $ ; in [POLYGENCODE.BAS] Clear TXGapTimer
    movlb 0x0A
ram_bank = 10
    clrf TXGapTimer
F1_002643 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__841
    movlb 0x00
ram_bank = 0
F1_002645 equ $ ; in [POLYGENCODE.BAS] if wifi_tmp="SWPOK" Then Set DiscSwapCompleted
    movlw ((((_strlb__30) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__30) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__843) >> 8)
    btfss STATUS,2
    goto _lbl__843
    bsf _B__VR4,5
_lbl__843
F1_002646 equ $ ; in [POLYGENCODE.BAS] if wifi_tmp="SWPFL" Then Set DiscSwapFailed
    movlw ((((_strlb__31) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__31) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__845) >> 8)
    btfss STATUS,2
    goto _lbl__845
    bsf _B__VR4,6
_lbl__845
F1_002648 equ $ ; in [POLYGENCODE.BAS] if wifi_tmp="CMDAK" Then Clear TXGapTimer
    movlw ((((_strlb__32) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__32) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x21
    movwf FSR0LH
    movlw 0xF3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__847) >> 8)
    btfss STATUS,2
    goto _lbl__847
    movlb 0x0A
ram_bank = 10
    clrf TXGapTimer
_lbl__847
    movlb 0x00
ram_bank = 0
F1_002650 equ $ ; in [POLYGENCODE.BAS] return
    return
HexToDec
PowerOnWiFi
F1_002658 equ $ ; in [POLYGENCODE.BAS] Clear RX1BufPos
    movlb 0x05
ram_bank = 5
    clrf RX1BufPos
F1_002659 equ $ ; in [POLYGENCODE.BAS] Clear RX1CommandReceived
    movlb 0x00
ram_bank = 0
    bcf _B__VR1,3
F1_002660 equ $ ; in [POLYGENCODE.BAS] Clear WiFiMQTTFailed
    bcf _B__VR2,2
F1_002661 equ $ ; in [POLYGENCODE.BAS] Clear WiFiTimeFailed
    bcf _B__VR2,3
F1_002662 equ $ ; in [POLYGENCODE.BAS] Clear WiFiConnected
    bcf _B__VR2,1
F1_002663 equ $ ; in [POLYGENCODE.BAS] Clear WiFiPoweredOnOK
    bcf _B__VR8,1
F1_002664 equ $ ; in [POLYGENCODE.BAS] Clear WifiClockError
    bcf _B__VR8,2
F1_002665 equ $ ; in [POLYGENCODE.BAS] Clear WiFiReceivedSomething
    bcf _B__VR5,2
F1_002666 equ $ ; in [POLYGENCODE.BAS] Clear WiFiFailedToJoinSSID
    bcf _B__VR4,1
F1_002667 equ $ ; in [POLYGENCODE.BAS] Clear WifiConfigValid
    bcf _B__VR3,0
F1_002668 equ $ ; in [POLYGENCODE.BAS] Clear WifiConfigBad
    bcf _B__VR3,1
F1_002669 equ $ ; in [POLYGENCODE.BAS] Clear WiFiPowerDownRequested
    bcf _B__VR3,4
F1_002670 equ $ ; in [POLYGENCODE.BAS] Inc WiFiUnresponsive
    movlb 0x0B
ram_bank = 11
    incf WiFiUnresponsive,F
F1_002696 equ $ ; in [POLYGENCODE.BAS] RX1PPS=0x17
    movlb 0x3D
ram_bank = 61
    movlw 23
    movwf RX1PPS
F1_002706 equ $ ; in [POLYGENCODE.BAS] RC6PPS=0x0F
    movlb 0x3E
ram_bank = 62
    movlw 15
    movwf RC6PPS
F1_002720 equ $ ; in [POLYGENCODE.BAS] BAUD1CON=%00001000
    movlb 0x02
ram_bank = 2
    movlw 8
    movwf BAUD1CON
F1_002725 equ $ ; in [POLYGENCODE.BAS] SP1BRGL=68
    movlw 68
    movwf SP1BRGL
F1_002726 equ $ ; in [POLYGENCODE.BAS] SP1BRGH=0
    clrf SP1BRGH
F1_002727 equ $ ; in [POLYGENCODE.BAS] TX1STA=%00100110
    movlw 38
    movwf TX1STA
F1_002728 equ $ ; in [POLYGENCODE.BAS] RC1STA=%10010000
    movlw 144
    movwf RC1STA
F1_002733 equ $ ; in [POLYGENCODE.BAS] Clear WIFIReset
    movlb 0x00
ram_bank = 0
    bcf LATA,3
F1_002734 equ $ ; in [POLYGENCODE.BAS] FastTimer=5
    movlb 0x0D
ram_bank = 13
    movlw 5
    movwf FastTimer
F1_002735 equ $ ; in [POLYGENCODE.BAS] While FastTimer>0
_lbl__848
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movf FastTimer,F
    movlp ((_lbl__849) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__849
F1_002736 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateAnimation
    movlp ((UpdateAnimation) >> 8)
    call UpdateAnimation
ram_bank = 0
F1_002737 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__848
_lbl__849
F1_002738 equ $ ; in [POLYGENCODE.BAS] Set WIFIReset
    bsf LATA,3
F1_002739 equ $ ; in [POLYGENCODE.BAS] Output SerialOutWiFi
    bcf TRISC,6
F1_002740 equ $ ; in [POLYGENCODE.BAS] Set PIE3.5
    movlb 0x0E
ram_bank = 14
    bsf PIE3,5
F1_002743 equ $ ; in [POLYGENCODE.BAS] WiFiPowerOnTimeout=750
    movlb 0x0A
ram_bank = 10
    movlw 2
    movwf WiFiPowerOnTimeoutH
    movlw 238
    movwf WiFiPowerOnTimeout
F1_002745 equ $ ; in [POLYGENCODE.BAS] return
    movlb 0x00
ram_bank = 0
    return
PowerOffWiFi
F1_002748 equ $ ; in [POLYGENCODE.BAS] if WiFiUpdateInProgress=1 Then return
    movlp ((_lbl__851) >> 8)
    btfss _B__VR2,7
    goto _lbl__851
    return
_lbl__851
F1_002749 equ $ ; in [POLYGENCODE.BAS] FastTimer=100
    movlb 0x0D
ram_bank = 13
    movlw 100
    movwf FastTimer
F1_002750 equ $ ; in [POLYGENCODE.BAS] While TXInProgress=1 And FastTimer>0
_lbl__852
    movlb 0x00
ram_bank = 0
    movlw 0
    btfsc _B__VR3,3
    movlw 1
    movwf SP__P9_
    movlb 0x0D
ram_bank = 13
    movf FastTimer,F
    movlp ((_cplb__75) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _cplb__75
    clrw
    btfss STATUS,2
_cplb__75
    movlw 1
    andwf SP__P9_,F
    movlp ((_lbl__853) >> 8)
    btfsc STATUS,2
    goto _lbl__853
F1_002751 equ $ ; in [POLYGENCODE.BAS] GoSub IdleTasks
    movlp ((IdleTasks) >> 8)
    call IdleTasks
ram_bank = 0
F1_002752 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__852
_lbl__853
F1_002753 equ $ ; in [POLYGENCODE.BAS] While TXGapTimer>0
_lbl__854
    movlb 0x0A
ram_bank = 10
    movf TXGapTimer,F
    movlp ((_lbl__855) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__855
F1_002754 equ $ ; in [POLYGENCODE.BAS] GoSub IdleTasks
    movlp ((IdleTasks) >> 8)
    call IdleTasks
ram_bank = 0
F1_002755 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__854
_lbl__855
F1_002756 equ $ ; in [POLYGENCODE.BAS] Set WiFiPowerDownRequested
    bsf _B__VR3,4
F1_002757 equ $ ; in [POLYGENCODE.BAS] WiFiCMD[0] ="P"
    movlb 0x07
ram_bank = 7
    movlw 80
    movwf WiFiCMD#0
F1_002758 equ $ ; in [POLYGENCODE.BAS] WiFiCMD[1] =0
    clrf WiFiCMD#1
F1_002759 equ $ ; in [POLYGENCODE.BAS] GoSub SendWiFiCMD
    movlb 0x00
ram_bank = 0
    movlp ((SendWiFiCMD) >> 8)
    call SendWiFiCMD
ram_bank = 0
F1_002760 equ $ ; in [POLYGENCODE.BAS] Clear WiFiConnected
    bcf _B__VR2,1
F1_002761 equ $ ; in [POLYGENCODE.BAS] Clear WiFiPoweredOnOK
    bcf _B__VR8,1
F1_002762 equ $ ; in [POLYGENCODE.BAS] Clear WifiClockError
    bcf _B__VR8,2
F1_002763 equ $ ; in [POLYGENCODE.BAS] Clear WiFiMQTTFailed
    bcf _B__VR2,2
F1_002764 equ $ ; in [POLYGENCODE.BAS] Clear WiFiTimeFailed
    bcf _B__VR2,3
F1_002765 equ $ ; in [POLYGENCODE.BAS] Clear WiFiFailedToJoinSSID
    bcf _B__VR4,1
F1_002766 equ $ ; in [POLYGENCODE.BAS] Clear WiFiHasKeys
    bcf _B__VR3,7
F1_002767 equ $ ; in [POLYGENCODE.BAS] Clear WiFiNoKeys
    bcf _B__VR4,0
F1_002768 equ $ ; in [POLYGENCODE.BAS] return
    return
SendWiFiCMD
F1_002772 equ $ ; in [POLYGENCODE.BAS] FastTimer=200
    movlb 0x0D
ram_bank = 13
    movlw 200
    movwf FastTimer
F1_002773 equ $ ; in [POLYGENCODE.BAS] While TXInProgress=1 And FastTimer>0
_lbl__856
    movlb 0x00
ram_bank = 0
    movlw 0
    btfsc _B__VR3,3
    movlw 1
    movwf SP__P9_
    movlb 0x0D
ram_bank = 13
    movf FastTimer,F
    movlp ((_cplb__76) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _cplb__76
    clrw
    btfss STATUS,2
_cplb__76
    movlw 1
    andwf SP__P9_,F
    movlp ((_lbl__857) >> 8)
    btfsc STATUS,2
    goto _lbl__857
F1_002774 equ $ ; in [POLYGENCODE.BAS] GoSub IdleTasks
    movlp ((IdleTasks) >> 8)
    call IdleTasks
ram_bank = 0
F1_002775 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__856
_lbl__857
F1_002776 equ $ ; in [POLYGENCODE.BAS] While TXGapTimer>0
_lbl__858
    movlb 0x0A
ram_bank = 10
    movf TXGapTimer,F
    movlp ((_lbl__859) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__859
F1_002777 equ $ ; in [POLYGENCODE.BAS] GoSub IdleTasks
    movlp ((IdleTasks) >> 8)
    call IdleTasks
ram_bank = 0
F1_002778 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__858
_lbl__859
F1_002779 equ $ ; in [POLYGENCODE.BAS] Output SerialOutWiFi
    bcf TRISC,6
F1_002780 equ $ ; in [POLYGENCODE.BAS] Clear WiFiTXPos
    movlb 0x0A
ram_bank = 10
    clrf WiFiTXPos
F1_002784 equ $ ; in [POLYGENCODE.BAS] WiFiCMDActive=WiFiCMD
    movlw 34
    movwf FSR0LH
    movlw 241
    movwf FSR0L
    movlw 0x22
    movwf FSR1LH
    movlw 0x78
    movwf FSR1L
    movlb 0x00
ram_bank = 0
    movlw 120
    movwf PP0
_pblb__860
    movf INDF1,F
    btfsc STATUS,2
    bra _pblb__861
    moviw INDF1++
    movwi INDF0++
    decfsz PP0,F
    bra _pblb__860
_pblb__861
    clrf INDF0
F1_002785 equ $ ; in [POLYGENCODE.BAS] TX1REG=WiFiCMDActive[0]
    movlb 0x09
ram_bank = 9
    movf WiFiCMDActive#0,W
    movlb 0x02
ram_bank = 2
    movwf TX1REG
F1_002787 equ $ ; in [POLYGENCODE.BAS] Inc WiFiTXPos
    movlb 0x0A
ram_bank = 10
    incf WiFiTXPos,F
F1_002788 equ $ ; in [POLYGENCODE.BAS] Set TXInProgress
    movlb 0x00
ram_bank = 0
    bsf _B__VR3,3
F1_002789 equ $ ; in [POLYGENCODE.BAS] Set PIE3.4
    movlb 0x0E
ram_bank = 14
    bsf PIE3,4
F1_002790 equ $ ; in [POLYGENCODE.BAS] return
    movlb 0x00
ram_bank = 0
    return
DoAlivePoll
F1_002795 equ $ ; in [POLYGENCODE.BAS] Clear AliveAcknowledged
    bcf _B__VR3,2
F1_002796 equ $ ; in [POLYGENCODE.BAS] GoSub GetBatteryVoltage
    movlp ((GetBatteryVoltage) >> 8)
    call GetBatteryVoltage
ram_bank = 0
F1_002797 equ $ ; in [POLYGENCODE.BAS] WiFiCMD[0] = "A"
    movlb 0x07
ram_bank = 7
    movlw 65
    movwf WiFiCMD#0
F1_002798 equ $ ; in [POLYGENCODE.BAS] WiFiCMD[1] =0
    clrf WiFiCMD#1
F1_002799 equ $ ; in [POLYGENCODE.BAS] WiFiCMD=WiFiCMD + Str$(Dec,PICFirmwareVersion) + "," + Str$(Dec,BatteryVoltage) + "," + Str$(Dec,DiagResult)
    movlw 34
    movwf FSR0LH
    movlw 120
    movwf FSR0L
    moviw INDF0++
    btfss STATUS,2
    bra $ - 2
    moviw INDF0--
    movlb 0x00
ram_bank = 0
    movlw 2
    movwf BPFH
    movlw 18
    movlp ((__dec__ASCII__outb) >> 8)
    call __dec__ASCII__outb
ram_bank = 0
    movlw 44
    movwi INDF0++
    movlw 2
    movwf BPFH
    clrf GEN4H
    movlb 0x03
ram_bank = 3
    movf BatteryVoltageH,W
    movlb 0x00
ram_bank = 0
    movwf PP2H
    movlb 0x03
ram_bank = 3
    movf BatteryVoltage,W
    movlb 0x00
ram_bank = 0
    movwf PP2
    movlp ((__dec__ASCII__out) >> 8)
    call __dec__ASCII__out
ram_bank = 0
    movlw 44
    movwi INDF0++
    movlw 2
    movwf BPFH
    clrf GEN4H
    movlb 0x0D
ram_bank = 13
    movf DiagResultH,W
    movlb 0x00
ram_bank = 0
    movwf PP2H
    movlb 0x0D
ram_bank = 13
    movf DiagResult,W
    movlb 0x00
ram_bank = 0
    movwf PP2
    movlp ((__dec__ASCII__out) >> 8)
    call __dec__ASCII__out
ram_bank = 0
    clrf INDF0
F1_002805 equ $ ; in [POLYGENCODE.BAS] GoSub SendWiFiCMD
    movlp ((SendWiFiCMD) >> 8)
    call SendWiFiCMD
ram_bank = 0
F1_002806 equ $ ; in [POLYGENCODE.BAS] if BatteryVoltage<CritialBatteryThreshold Then goto FlatBattery
    movlw 1
    movlb 0x03
ram_bank = 3
    subwf BatteryVoltageH,W
    movlp ((FlatBattery) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto FlatBattery
    btfss STATUS,2
    bra _cplb__77
    movlw 254
    movlb 0x03
ram_bank = 3
    subwf BatteryVoltage,W
    movlp ((FlatBattery) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto FlatBattery
_cplb__77
ram_bank = 255
F1_002807 equ $ ; in [POLYGENCODE.BAS] return
    movlb 0x00
ram_bank = 0
    return
FlatBattery
F1_002810 equ $ ; in [POLYGENCODE.BAS] if TXInProgress=1 Then goto FlatBattery
    movlp ((FlatBattery) >> 8)
    btfsc _B__VR3,3
    goto FlatBattery
F1_002811 equ $ ; in [POLYGENCODE.BAS] if TXGapTimer>0 Then goto FlatBattery
    movlb 0x0A
ram_bank = 10
    movf TXGapTimer,F
    movlp ((FlatBattery) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto FlatBattery
F1_002812 equ $ ; in [POLYGENCODE.BAS] WiFiCMD[0] ="F"
    movlb 0x07
ram_bank = 7
    movlw 70
    movwf WiFiCMD#0
F1_002813 equ $ ; in [POLYGENCODE.BAS] WiFiCMD[1] =0
    clrf WiFiCMD#1
F1_002814 equ $ ; in [POLYGENCODE.BAS] WiFiCMD=WiFiCMD + Str$(Dec,BatteryVoltage)
    movlw 34
    movwf FSR0LH
    movlw 120
    movwf FSR0L
    moviw INDF0++
    btfss STATUS,2
    bra $ - 2
    moviw INDF0--
    movlb 0x00
ram_bank = 0
    movlw 2
    movwf BPFH
    clrf GEN4H
    movlb 0x03
ram_bank = 3
    movf BatteryVoltageH,W
    movlb 0x00
ram_bank = 0
    movwf PP2H
    movlb 0x03
ram_bank = 3
    movf BatteryVoltage,W
    movlb 0x00
ram_bank = 0
    movwf PP2
    movlp ((__dec__ASCII__out) >> 8)
    call __dec__ASCII__out
ram_bank = 0
    clrf INDF0
F1_002815 equ $ ; in [POLYGENCODE.BAS] GoSub SendWiFiCMD
    movlp ((SendWiFiCMD) >> 8)
    call SendWiFiCMD
ram_bank = 0
F1_002816 equ $ ; in [POLYGENCODE.BAS] SoundTemp=68
    movlb 0x0B
ram_bank = 11
    movlw 68
    movwf SoundTemp
F1_002817 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_002818 equ $ ; in [POLYGENCODE.BAS] While TXInProgress=1
_lbl__868
    movlp ((_lbl__869) >> 8)
    btfss _B__VR3,3
    goto _lbl__869
F1_002819 equ $ ; in [POLYGENCODE.BAS] GoSub IdleTasks
    movlp ((IdleTasks) >> 8)
    call IdleTasks
ram_bank = 0
F1_002820 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__868
_lbl__869
F1_002821 equ $ ; in [POLYGENCODE.BAS] EndWaitTime=200
    movlb 0x0B
ram_bank = 11
    movlw 200
    movwf EndWaitTime
F1_002822 equ $ ; in [POLYGENCODE.BAS] While EndWaitTime>0
_lbl__870
ram_bank = 0
    movlb 0x0B
ram_bank = 11
    movf EndWaitTime,F
    movlp ((_lbl__871) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__871
F1_002823 equ $ ; in [POLYGENCODE.BAS] GoSub IdleTasks
    movlp ((IdleTasks) >> 8)
    call IdleTasks
ram_bank = 0
F1_002824 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__870
_lbl__871
F1_002825 equ $ ; in [POLYGENCODE.BAS] goto PowerOff
    _mjump PowerOff
F1_002826 equ $ ; in [POLYGENCODE.BAS] return
    return
TokenPresented
F1_002830 equ $ ; in [POLYGENCODE.BAS] Clear tpWiFiStep
    movlb 0x0B
ram_bank = 11
    clrf tpWiFiStep
F1_002831 equ $ ; in [POLYGENCODE.BAS] Clear PlayerUnknown
    movlb 0x00
ram_bank = 0
    bcf _B__VR7,3
F1_002832 equ $ ; in [POLYGENCODE.BAS] Clear mchcount
    movlb 0x0D
ram_bank = 13
    clrf mchcount
F1_002833 equ $ ; in [POLYGENCODE.BAS] Clear emfcount
    clrf emfcount
F1_002834 equ $ ; in [POLYGENCODE.BAS] Clear CCCcount
    clrf CCCcount
F1_002835 equ $ ; in [POLYGENCODE.BAS] Clear PlayerKnown
    movlb 0x00
ram_bank = 0
    bcf _B__VR7,4
F1_002836 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOnWiFi
    movlp ((PowerOnWiFi) >> 8)
    call PowerOnWiFi
ram_bank = 0
F1_002837 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOnSound
    movlp ((PowerOnSound) >> 8)
    call PowerOnSound
ram_bank = 0
F1_002838 equ $ ; in [POLYGENCODE.BAS] Clear discs_NewTeam
    movlb 0x06
ram_bank = 6
    clrf discs_NewTeam
F1_002839 equ $ ; in [POLYGENCODE.BAS] Clear SelectedTeam
    movlb 0x07
ram_bank = 7
    clrf SelectedTeam
F1_002840 equ $ ; in [POLYGENCODE.BAS] Clear CaptureSucess
    movlb 0x00
ram_bank = 0
    bcf _B__VR7,5
F1_002841 equ $ ; in [POLYGENCODE.BAS] Clear CaptureFailed
    bcf _B__VR7,6
F1_002842 equ $ ; in [POLYGENCODE.BAS] Clear RegisterUserSuccess
    bcf _B__VR7,7
F1_002843 equ $ ; in [POLYGENCODE.BAS] Clear RegisterUserFailed
    bcf _B__VR8,0
F1_002846 equ $ ; in [POLYGENCODE.BAS] GoSub LED1PowerOn
    movlp ((LED1PowerOn) >> 8)
    call LED1PowerOn
ram_bank = 0
F1_002847 equ $ ; in [POLYGENCODE.BAS] LEDActiveAnimation=3
    movlb 0x0D
ram_bank = 13
    movlw 3
    movwf LEDActiveAnimation
F1_002848 equ $ ; in [POLYGENCODE.BAS] GoSub PlayAnimation
    movlb 0x00
ram_bank = 0
    movlp ((PlayAnimation) >> 8)
    call PlayAnimation
ram_bank = 0
F1_002850 equ $ ; in [POLYGENCODE.BAS] SoundTemp=127
    movlb 0x0B
ram_bank = 11
    movlw 127
    movwf SoundTemp
F1_002851 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
tpLoop
F1_002855 equ $ ; in [POLYGENCODE.BAS] GoSub IdleTasks
    movlp ((IdleTasks) >> 8)
    call IdleTasks
ram_bank = 0
F1_002856 equ $ ; in [POLYGENCODE.BAS] if tpWiFiStep=0 And WiFiPowerOnTimeout=0 Then
    movlw 1
    movlb 0x0B
ram_bank = 11
    movf tpWiFiStep,F
    btfss STATUS,2
    movlw 0
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlb 0x0A
ram_bank = 10
    movf WiFiPowerOnTimeoutH,W
    iorwf WiFiPowerOnTimeout,W
    movlp ((_cplb__78) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _cplb__78
    clrw
    btfss STATUS,2
_cplb__78
    movlw 1
    andwf SP__P9_,F
    movlp ((_lbl__873) >> 8)
    btfsc STATUS,2
    goto _lbl__873
F1_002858 equ $ ; in [POLYGENCODE.BAS] Set NextSoundNow
    bsf _B__VR5,0
F1_002859 equ $ ; in [POLYGENCODE.BAS] SoundTemp=133
    movlb 0x0B
ram_bank = 11
    movlw 133
    movwf SoundTemp
F1_002860 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_002862 equ $ ; in [POLYGENCODE.BAS] Clear EndWaitTime
    movlb 0x0B
ram_bank = 11
    clrf EndWaitTime
F1_002863 equ $ ; in [POLYGENCODE.BAS] CaptureTimer=600
    movlb 0x0D
ram_bank = 13
    movlw 2
    movwf CaptureTimerH
    movlw 88
    movwf CaptureTimer
F1_002864 equ $ ; in [POLYGENCODE.BAS] tpWiFiStep=99
    movlb 0x0B
ram_bank = 11
    movlw 99
    movwf tpWiFiStep
F1_002865 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__873
ram_bank = 0
F1_002866 equ $ ; in [POLYGENCODE.BAS] if tpWiFiStep=0 And WiFiConnected=1 Then
    movlw 1
    movlb 0x0B
ram_bank = 11
    movf tpWiFiStep,F
    btfss STATUS,2
    movlw 0
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlw 0
    btfsc _B__VR2,1
    movlw 1
    andwf SP__P9_,F
    movlp ((_lbl__875) >> 8)
    btfsc STATUS,2
    goto _lbl__875
F1_002867 equ $ ; in [POLYGENCODE.BAS] tpWiFiStep=40
    movlb 0x0B
ram_bank = 11
    movlw 40
    movwf tpWiFiStep
F1_002868 equ $ ; in [POLYGENCODE.BAS] CaptureTimer=8
    movlb 0x0D
ram_bank = 13
    clrf CaptureTimerH
    movlw 8
    movwf CaptureTimer
F1_002869 equ $ ; in [POLYGENCODE.BAS] GoSub DoAlivePoll
    movlb 0x00
ram_bank = 0
    movlp ((DoAlivePoll) >> 8)
    call DoAlivePoll
ram_bank = 0
F1_002870 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__875
F1_002872 equ $ ; in [POLYGENCODE.BAS] if tpWiFiStep=40 And CaptureTimer=0 Then
    movlw 40
    movlb 0x0B
ram_bank = 11
    subwf tpWiFiStep,W
    movlw 1
    btfss STATUS,2
    movlw 0
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlb 0x0D
ram_bank = 13
    movf CaptureTimerH,W
    iorwf CaptureTimer,W
    movlp ((_cplb__79) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _cplb__79
    clrw
    btfss STATUS,2
_cplb__79
    movlw 1
    andwf SP__P9_,F
    movlp ((_lbl__877) >> 8)
    btfsc STATUS,2
    goto _lbl__877
F1_002873 equ $ ; in [POLYGENCODE.BAS] tpWiFiStep=1
    movlb 0x0B
ram_bank = 11
    movlw 1
    movwf tpWiFiStep
F1_002874 equ $ ; in [POLYGENCODE.BAS] WiFiCMD[0] ="T"
    movlb 0x07
ram_bank = 7
    movlw 84
    movwf WiFiCMD#0
F1_002875 equ $ ; in [POLYGENCODE.BAS] WiFiCMD[1] =0
    clrf WiFiCMD#1
F1_002876 equ $ ; in [POLYGENCODE.BAS] For N=0 To 9
    movlb 0x02
ram_bank = 2
    clrf _N
_frlb__878
ram_bank = 0
    movlw 10
    movlb 0x02
ram_bank = 2
    subwf _N,W
    movlp ((_nxlb__879) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _nxlb__879
F1_002877 equ $ ; in [POLYGENCODE.BAS] WiFiCMD=WiFiCMD + Str$(Hex2, RC522_Token[N])
    movlw 34
    movwf FSR0LH
    movlw 120
    movwf FSR0L
    moviw INDF0++
    btfss STATUS,2
    bra $ - 2
    moviw INDF0--
    movlw 2
    movwf BPFH
    movf FSR0LH,W
    movwf PBS_VAR0H
    movf FSR0L,W
    movwf PBS_VAR0
    movlw 2
    movwf GEN4H
    movlb 0x02
ram_bank = 2
    movf _N,W
    addlw 227
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PP2
    movf PBS_VAR0H,W
    movwf FSR0LH
    movf PBS_VAR0,W
    movwf FSR0L
    movlp ((__hex__ASCII__outd) >> 8)
    call __hex__ASCII__outd
ram_bank = 0
    clrf INDF0
_ctlb__880
F1_002878 equ $ ; in [POLYGENCODE.BAS] Next
    movlw 1
    movlb 0x02
ram_bank = 2
    addwf _N,F
    movlp ((_frlb__878) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _frlb__878
_nxlb__879
F1_002879 equ $ ; in [POLYGENCODE.BAS] GoSub SendWiFiCMD
    movlp ((SendWiFiCMD) >> 8)
    call SendWiFiCMD
ram_bank = 0
F1_002880 equ $ ; in [POLYGENCODE.BAS] CaptureTimer=200
    movlb 0x0D
ram_bank = 13
    clrf CaptureTimerH
    movlw 200
    movwf CaptureTimer
F1_002881 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__877
ram_bank = 0
F1_002882 equ $ ; in [POLYGENCODE.BAS] if tpWiFiStep=1 And CaptureTimer=0 Then
    movlw 1
    movlb 0x0B
ram_bank = 11
    subwf tpWiFiStep,W
    movlw 1
    btfss STATUS,2
    movlw 0
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlb 0x0D
ram_bank = 13
    movf CaptureTimerH,W
    iorwf CaptureTimer,W
    movlp ((_cplb__80) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _cplb__80
    clrw
    btfss STATUS,2
_cplb__80
    movlw 1
    andwf SP__P9_,F
    movlp ((_lbl__882) >> 8)
    btfsc STATUS,2
    goto _lbl__882
F1_002884 equ $ ; in [POLYGENCODE.BAS] SoundTemp=133
    movlb 0x0B
ram_bank = 11
    movlw 133
    movwf SoundTemp
F1_002885 equ $ ; in [POLYGENCODE.BAS] Set NextSoundNow
    movlb 0x00
ram_bank = 0
    bsf _B__VR5,0
F1_002886 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_002887 equ $ ; in [POLYGENCODE.BAS] tpWiFiStep=99
    movlb 0x0B
ram_bank = 11
    movlw 99
    movwf tpWiFiStep
F1_002888 equ $ ; in [POLYGENCODE.BAS] CaptureTimer=600
    movlb 0x0D
ram_bank = 13
    movlw 2
    movwf CaptureTimerH
    movlw 88
    movwf CaptureTimer
F1_002889 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__882
ram_bank = 0
F1_002890 equ $ ; in [POLYGENCODE.BAS] if tpWiFiStep=1 And PlayerUnknown=1 Then
    movlw 1
    movlb 0x0B
ram_bank = 11
    subwf tpWiFiStep,W
    movlw 1
    btfss STATUS,2
    movlw 0
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlw 0
    btfsc _B__VR7,3
    movlw 1
    andwf SP__P9_,F
    movlp ((_lbl__884) >> 8)
    btfsc STATUS,2
    goto _lbl__884
F1_002892 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOffWiFi
    movlp ((PowerOffWiFi) >> 8)
    call PowerOffWiFi
ram_bank = 0
F1_002893 equ $ ; in [POLYGENCODE.BAS] LEDActiveAnimation=7
    movlb 0x0D
ram_bank = 13
    movlw 7
    movwf LEDActiveAnimation
F1_002894 equ $ ; in [POLYGENCODE.BAS] GoSub PlayAnimation
    movlb 0x00
ram_bank = 0
    movlp ((PlayAnimation) >> 8)
    call PlayAnimation
ram_bank = 0
F1_002895 equ $ ; in [POLYGENCODE.BAS] tpWiFiStep=19
    movlb 0x0B
ram_bank = 11
    movlw 19
    movwf tpWiFiStep
F1_002896 equ $ ; in [POLYGENCODE.BAS] if emfcount>0 And mchcount>0 Then
    movlb 0x0D
ram_bank = 13
    movf emfcount,F
    movlp ((_cplb__81) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _cplb__81
    clrw
    btfss STATUS,2
_cplb__81
    movlw 1
    movwf SP__P9_
    movlb 0x0D
ram_bank = 13
    movf mchcount,F
    movlp ((_cplb__82) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _cplb__82
    clrw
    btfss STATUS,2
_cplb__82
    movlw 1
    andwf SP__P9_,F
    movlp ((_lbl__886) >> 8)
    btfsc STATUS,2
    goto _lbl__886
F1_002897 equ $ ; in [POLYGENCODE.BAS] SoundTemp=137
    movlb 0x0B
ram_bank = 11
    movlw 137
    movwf SoundTemp
F1_002898 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_002899 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__886
F1_002900 equ $ ; in [POLYGENCODE.BAS] if emfcount>0 And mchcount=0 Then
    movlb 0x0D
ram_bank = 13
    movf emfcount,F
    movlp ((_cplb__83) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _cplb__83
    clrw
    btfss STATUS,2
_cplb__83
    movlw 1
    movwf SP__P9_
    movlw 1
    movlb 0x0D
ram_bank = 13
    movf mchcount,F
    btfss STATUS,2
    movlw 0
    movlb 0x00
ram_bank = 0
    andwf SP__P9_,F
    movlp ((_lbl__888) >> 8)
    btfsc STATUS,2
    goto _lbl__888
F1_002901 equ $ ; in [POLYGENCODE.BAS] SoundTemp=135
    movlb 0x0B
ram_bank = 11
    movlw 135
    movwf SoundTemp
F1_002902 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_002903 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__888
F1_002904 equ $ ; in [POLYGENCODE.BAS] if emfcount=0 And mchcount>0 Then
    movlw 1
    movlb 0x0D
ram_bank = 13
    movf emfcount,F
    btfss STATUS,2
    movlw 0
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlb 0x0D
ram_bank = 13
    movf mchcount,F
    movlp ((_cplb__84) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _cplb__84
    clrw
    btfss STATUS,2
_cplb__84
    movlw 1
    andwf SP__P9_,F
    movlp ((_lbl__890) >> 8)
    btfsc STATUS,2
    goto _lbl__890
F1_002905 equ $ ; in [POLYGENCODE.BAS] SoundTemp=136
    movlb 0x0B
ram_bank = 11
    movlw 136
    movwf SoundTemp
F1_002906 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_002907 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__890
F1_002908 equ $ ; in [POLYGENCODE.BAS] Set NextSoundNow
    bsf _B__VR5,0
F1_002909 equ $ ; in [POLYGENCODE.BAS] SoundTemp=116
    movlb 0x0B
ram_bank = 11
    movlw 116
    movwf SoundTemp
F1_002910 equ $ ; in [POLYGENCODE.BAS] if NewPlayerSound>0 Then SoundTemp=NewPlayerSound
    movf NewPlayerSound,F
    movlp ((_lbl__892) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__892
    movlb 0x0B
ram_bank = 11
    movf NewPlayerSound,W
    movwf SoundTemp
_lbl__892
    movlb 0x00
ram_bank = 0
F1_002911 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_002912 equ $ ; in [POLYGENCODE.BAS] TeamPickerTime=160
    movlb 0x0B
ram_bank = 11
    clrf TeamPickerTimeH
    movlw 160
    movwf TeamPickerTime
F1_002913 equ $ ; in [POLYGENCODE.BAS] RC522_TokenSaved=RC522_Token
    movlw 32
    movwf FSR0LH
    movlw 239
    movwf FSR0L
    movlw 0x20
    movwf FSR1LH
    movlw 0xE3
    movwf FSR1L
    movlb 0x00
ram_bank = 0
    movlw 10
    movwf PP0
    moviw INDF1++
    movwi INDF0++
    decfsz PP0,F
    bra $ - 3
F1_002914 equ $ ; in [POLYGENCODE.BAS] Clear TeamPickerCycles
    movlb 0x0B
ram_bank = 11
    clrf TeamPickerCycles
F1_002915 equ $ ; in [POLYGENCODE.BAS] CaptureTimer=800
    movlb 0x0D
ram_bank = 13
    movlw 3
    movwf CaptureTimerH
    movlw 32
    movwf CaptureTimer
F1_002917 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__884
ram_bank = 0
F1_002918 equ $ ; in [POLYGENCODE.BAS] if tpWiFiStep=19 Then
    movlw 19
    movlb 0x0B
ram_bank = 11
    subwf tpWiFiStep,W
    movlp ((_lbl__894) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__894
F1_002920 equ $ ; in [POLYGENCODE.BAS] GoSub IsSoundPlaying
    movlp ((IsSoundPlaying) >> 8)
    call IsSoundPlaying
ram_bank = 0
F1_002921 equ $ ; in [POLYGENCODE.BAS] if SoundPlaying=0 Or CaptureTimer=0 Then
    movlw 1
    btfsc _B__VR5,1
    movlw 0
    movwf SP__P9_
    movlb 0x0D
ram_bank = 13
    movf CaptureTimerH,W
    iorwf CaptureTimer,W
    movlp ((_cplb__85) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _cplb__85
    clrw
    btfss STATUS,2
_cplb__85
    movlw 1
    iorwf SP__P9_,F
    movlp ((_lbl__896) >> 8)
    btfsc STATUS,2
    goto _lbl__896
F1_002922 equ $ ; in [POLYGENCODE.BAS] Inc tpWiFiStep
    movlb 0x0B
ram_bank = 11
    incf tpWiFiStep,F
F1_002923 equ $ ; in [POLYGENCODE.BAS] if TeamPickerCount=0 Then
    movf TeamPickerCount,F
    movlp ((_lbl__898) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__898
F1_002924 equ $ ; in [POLYGENCODE.BAS] TeamPickerCount=RC522_Token[1] & 3
    movlb 0x02
ram_bank = 2
    movf RC522_Token#1,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR0
    movlw 3
    andwf PBS_VAR0,W
    movlb 0x0B
ram_bank = 11
    movwf TeamPickerCount
F1_002925 equ $ ; in [POLYGENCODE.BAS] Inc TeamPickerCount
    incf TeamPickerCount,F
F1_002926 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__898
ram_bank = 0
F1_002929 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__896
F1_002930 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__894
F1_002931 equ $ ; in [POLYGENCODE.BAS] if tpWiFiStep=20 Then
    movlw 20
    movlb 0x0B
ram_bank = 11
    subwf tpWiFiStep,W
    movlp ((_lbl__900) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__900
F1_002932 equ $ ; in [POLYGENCODE.BAS] if TeamPickerTime=0 Then
    movlb 0x0B
ram_bank = 11
    movf TeamPickerTimeH,W
    iorwf TeamPickerTime,W
    movlp ((_lbl__902) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__902
F1_002934 equ $ ; in [POLYGENCODE.BAS] TeamPickerTime=200
    movlb 0x0B
ram_bank = 11
    clrf TeamPickerTimeH
    movlw 200
    movwf TeamPickerTime
F1_002935 equ $ ; in [POLYGENCODE.BAS] Inc TeamPickerCount
    incf TeamPickerCount,F
F1_002936 equ $ ; in [POLYGENCODE.BAS] Inc TeamPickerCycles
    incf TeamPickerCycles,F
F1_002937 equ $ ; in [POLYGENCODE.BAS] if TeamPickerCount>TotalTeams Then
    movf TeamPickerCount,W
    movlb 0x0D
ram_bank = 13
    subwf TotalTeams,W
    movlp ((_lbl__904) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__904
F1_002938 equ $ ; in [POLYGENCODE.BAS] TeamPickerCount=1
    movlb 0x0B
ram_bank = 11
    movlw 1
    movwf TeamPickerCount
F1_002939 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__904
ram_bank = 0
F1_002940 equ $ ; in [POLYGENCODE.BAS] if TeamPickerCycles>TeamPickerMaxCycles Then
    movlw 13
    movlb 0x0B
ram_bank = 11
    subwf TeamPickerCycles,W
    movlp ((_lbl__906) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _lbl__906
F1_002942 equ $ ; in [POLYGENCODE.BAS] SoundTemp=110
    movlb 0x0B
ram_bank = 11
    movlw 110
    movwf SoundTemp
F1_002943 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_002944 equ $ ; in [POLYGENCODE.BAS] tpWiFiStep=99
    movlb 0x0B
ram_bank = 11
    movlw 99
    movwf tpWiFiStep
F1_002945 equ $ ; in [POLYGENCODE.BAS] EndWaitTime=100
    movlw 100
    movwf EndWaitTime
F1_002946 equ $ ; in [POLYGENCODE.BAS] CaptureTimer=600
    movlb 0x0D
ram_bank = 13
    movlw 2
    movwf CaptureTimerH
    movlw 88
    movwf CaptureTimer
F1_002947 equ $ ; in [POLYGENCODE.BAS] GoSub LED1PowerOff
    movlb 0x00
ram_bank = 0
    movlp ((LED1PowerOff) >> 8)
    call LED1PowerOff
ram_bank = 0
F1_002948 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__906
F1_002949 equ $ ; in [POLYGENCODE.BAS] if tpWiFiStep<99 Then
    movlw 99
    movlb 0x0B
ram_bank = 11
    subwf tpWiFiStep,W
    movlp ((_lbl__908) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__908
F1_002950 equ $ ; in [POLYGENCODE.BAS] SoundTemp=TeamPickerCount+100+TeamSoundOffset[TeamPickerCount]
    movlw 100
    movlb 0x0B
ram_bank = 11
    addwf TeamPickerCount,W
    movlb 0x00
ram_bank = 0
    clrf PP7H
    movwf PP7
    rlf PP7H,F
    movlb 0x0B
ram_bank = 11
    movf TeamPickerCount,W
    addlw 55
    movwf FSR0L
    movlw 0x24
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR0
    movf PBS_VAR0,W
    addwf PP7,W
    movlb 0x0B
ram_bank = 11
    movwf SoundTemp
F1_002951 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_002952 equ $ ; in [POLYGENCODE.BAS] LEDActiveAnimation=1
    movlb 0x0D
ram_bank = 13
    movlw 1
    movwf LEDActiveAnimation
F1_002953 equ $ ; in [POLYGENCODE.BAS] GoSub PlayAnimation
    movlb 0x00
ram_bank = 0
    movlp ((PlayAnimation) >> 8)
    call PlayAnimation
ram_bank = 0
F1_002954 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__908
    _mjump _lbl__901
F1_002955 equ $ ; in [POLYGENCODE.BAS] ElseIf TeamPickerCount>0 Then
_lbl__902
    movlb 0x0B
ram_bank = 11
    movf TeamPickerCount,F
    movlp ((_lbl__909) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__909
F1_002957 equ $ ; in [POLYGENCODE.BAS] GoSub DetectRFID
    movlp ((DetectRFID) >> 8)
    call DetectRFID
ram_bank = 0
F1_002958 equ $ ; in [POLYGENCODE.BAS] if DetectResult=1 Then
    movlw 1
    movlb 0x07
ram_bank = 7
    subwf DetectResult,W
    movlp ((_lbl__911) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__911
F1_002960 equ $ ; in [POLYGENCODE.BAS] For C=0 To 9
    movlb 0x0D
ram_bank = 13
    clrf _C
_frlb__912
ram_bank = 0
    movlw 10
    movlb 0x0D
ram_bank = 13
    subwf _C,W
    movlp ((_nxlb__913) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _nxlb__913
F1_002961 equ $ ; in [POLYGENCODE.BAS] if RC522_Token[C]<>RC522_TokenSaved[C] Then Clear DetectResult
    movlb 0x0D
ram_bank = 13
    movf _C,W
    addlw 227
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR0
    movlb 0x0D
ram_bank = 13
    movf _C,W
    addlw 239
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR1
    movf PBS_VAR0,W
    subwf PBS_VAR1,W
    movlp ((_lbl__916) >> 8)
    btfsc STATUS,2
    goto _lbl__916
    movlb 0x07
ram_bank = 7
    clrf DetectResult
_lbl__916
ram_bank = 0
_ctlb__914
F1_002962 equ $ ; in [POLYGENCODE.BAS] Next
    movlw 1
    movlb 0x0D
ram_bank = 13
    addwf _C,F
    movlp ((_frlb__912) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _frlb__912
_nxlb__913
F1_002963 equ $ ; in [POLYGENCODE.BAS] if DetectResult=1 Then
    movlw 1
    movlb 0x07
ram_bank = 7
    subwf DetectResult,W
    movlp ((_lbl__918) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__918
F1_002964 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOnWiFi
    movlp ((PowerOnWiFi) >> 8)
    call PowerOnWiFi
ram_bank = 0
F1_002965 equ $ ; in [POLYGENCODE.BAS] Inc tpWiFiStep
    movlb 0x0B
ram_bank = 11
    incf tpWiFiStep,F
F1_002966 equ $ ; in [POLYGENCODE.BAS] TeamPickerTime=400
    movlw 1
    movwf TeamPickerTimeH
    movlw 144
    movwf TeamPickerTime
F1_002967 equ $ ; in [POLYGENCODE.BAS] SoundTemp=112
    movlw 112
    movwf SoundTemp
F1_002968 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_002969 equ $ ; in [POLYGENCODE.BAS] Set NextSoundNow
    bsf _B__VR5,0
F1_002970 equ $ ; in [POLYGENCODE.BAS] if PaymentCardType>0 Then
    movlb 0x03
ram_bank = 3
    movf PaymentCardType,F
    movlp ((_lbl__920) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__920
F1_002971 equ $ ; in [POLYGENCODE.BAS] SoundTemp=PaymentCardType
    movlb 0x03
ram_bank = 3
    movf PaymentCardType,W
    movlb 0x0B
ram_bank = 11
    movwf SoundTemp
F1_002972 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_002973 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__920
F1_002974 equ $ ; in [POLYGENCODE.BAS] LEDActiveAnimation=2
    movlb 0x0D
ram_bank = 13
    movlw 2
    movwf LEDActiveAnimation
F1_002975 equ $ ; in [POLYGENCODE.BAS] GoSub PlayAnimation
    movlb 0x00
ram_bank = 0
    movlp ((PlayAnimation) >> 8)
    call PlayAnimation
ram_bank = 0
    _mjump _lbl__921
_lbl__918
F1_002976 equ $ ; in [POLYGENCODE.BAS] else
F1_002977 equ $ ; in [POLYGENCODE.BAS] goto TokenPresented
    _mjump TokenPresented
F1_002978 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__921
F1_002979 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__911
F1_002980 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__909
_lbl__901
F1_002981 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__900
F1_002982 equ $ ; in [POLYGENCODE.BAS] if tpWiFiStep=21 And TeamPickerTime=0 Then
    movlw 21
    movlb 0x0B
ram_bank = 11
    subwf tpWiFiStep,W
    movlw 1
    btfss STATUS,2
    movlw 0
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlb 0x0B
ram_bank = 11
    movf TeamPickerTimeH,W
    iorwf TeamPickerTime,W
    movlp ((_cplb__86) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _cplb__86
    clrw
    btfss STATUS,2
_cplb__86
    movlw 1
    andwf SP__P9_,F
    movlp ((_lbl__923) >> 8)
    btfsc STATUS,2
    goto _lbl__923
F1_002984 equ $ ; in [POLYGENCODE.BAS] SoundTemp=113
    movlb 0x0B
ram_bank = 11
    movlw 113
    movwf SoundTemp
F1_002985 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_002986 equ $ ; in [POLYGENCODE.BAS] tpWiFiStep=99
    movlb 0x0B
ram_bank = 11
    movlw 99
    movwf tpWiFiStep
F1_002987 equ $ ; in [POLYGENCODE.BAS] EndWaitTime=100
    movlw 100
    movwf EndWaitTime
F1_002988 equ $ ; in [POLYGENCODE.BAS] CaptureTimer=600
    movlb 0x0D
ram_bank = 13
    movlw 2
    movwf CaptureTimerH
    movlw 88
    movwf CaptureTimer
F1_002989 equ $ ; in [POLYGENCODE.BAS] GoSub LED1PowerOff
    movlb 0x00
ram_bank = 0
    movlp ((LED1PowerOff) >> 8)
    call LED1PowerOff
ram_bank = 0
F1_002990 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__923
F1_002991 equ $ ; in [POLYGENCODE.BAS] if tpWiFiStep=21 And WiFiConnected=1 Then
    movlw 21
    movlb 0x0B
ram_bank = 11
    subwf tpWiFiStep,W
    movlw 1
    btfss STATUS,2
    movlw 0
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlw 0
    btfsc _B__VR2,1
    movlw 1
    andwf SP__P9_,F
    movlp ((_lbl__925) >> 8)
    btfsc STATUS,2
    goto _lbl__925
F1_002992 equ $ ; in [POLYGENCODE.BAS] WiFiCMD[0] ="R"
    movlb 0x07
ram_bank = 7
    movlw 82
    movwf WiFiCMD#0
F1_002993 equ $ ; in [POLYGENCODE.BAS] WiFiCMD[1] =0
    clrf WiFiCMD#1
F1_002994 equ $ ; in [POLYGENCODE.BAS] For N=0 To 9
    movlb 0x02
ram_bank = 2
    clrf _N
_frlb__926
ram_bank = 0
    movlw 10
    movlb 0x02
ram_bank = 2
    subwf _N,W
    movlp ((_nxlb__927) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _nxlb__927
F1_002995 equ $ ; in [POLYGENCODE.BAS] WiFiCMD=WiFiCMD + Str$(Hex2, RC522_Token[N])
    movlw 34
    movwf FSR0LH
    movlw 120
    movwf FSR0L
    moviw INDF0++
    btfss STATUS,2
    bra $ - 2
    moviw INDF0--
    movlw 2
    movwf BPFH
    movf FSR0LH,W
    movwf PBS_VAR0H
    movf FSR0L,W
    movwf PBS_VAR0
    movlw 2
    movwf GEN4H
    movlb 0x02
ram_bank = 2
    movf _N,W
    addlw 227
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PP2
    movf PBS_VAR0H,W
    movwf FSR0LH
    movf PBS_VAR0,W
    movwf FSR0L
    movlp ((__hex__ASCII__outd) >> 8)
    call __hex__ASCII__outd
ram_bank = 0
    clrf INDF0
_ctlb__928
F1_002996 equ $ ; in [POLYGENCODE.BAS] Next
    movlw 1
    movlb 0x02
ram_bank = 2
    addwf _N,F
    movlp ((_frlb__926) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _frlb__926
_nxlb__927
F1_002997 equ $ ; in [POLYGENCODE.BAS] WiFiCMD=WiFiCMD + "," + Str$(Dec,TeamPickerCount) + "," + Str$(Dec,PaymentCardType)
    movlw 34
    movwf FSR0LH
    movlw 120
    movwf FSR0L
    moviw INDF0++
    btfss STATUS,2
    bra $ - 2
    moviw INDF0--
    movlw 44
    movwi INDF0++
    movlw 2
    movwf BPFH
    movlb 0x0B
ram_bank = 11
    movf TeamPickerCount,W
    movlb 0x00
ram_bank = 0
    movlp ((__dec__ASCII__outb) >> 8)
    call __dec__ASCII__outb
ram_bank = 0
    movlw 44
    movwi INDF0++
    movlw 2
    movwf BPFH
    movlb 0x03
ram_bank = 3
    movf PaymentCardType,W
    movlb 0x00
ram_bank = 0
    movlp ((__dec__ASCII__outb) >> 8)
    call __dec__ASCII__outb
ram_bank = 0
    clrf INDF0
F1_003002 equ $ ; in [POLYGENCODE.BAS] GoSub SendWiFiCMD
    movlp ((SendWiFiCMD) >> 8)
    call SendWiFiCMD
ram_bank = 0
F1_003003 equ $ ; in [POLYGENCODE.BAS] Inc tpWiFiStep
    movlb 0x0B
ram_bank = 11
    incf tpWiFiStep,F
F1_003004 equ $ ; in [POLYGENCODE.BAS] TeamPickerTime=250
    clrf TeamPickerTimeH
    movlw 250
    movwf TeamPickerTime
F1_003005 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__925
ram_bank = 0
F1_003006 equ $ ; in [POLYGENCODE.BAS] if tpWiFiStep=22 Then
    movlw 22
    movlb 0x0B
ram_bank = 11
    subwf tpWiFiStep,W
    movlp ((_lbl__930) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__930
F1_003007 equ $ ; in [POLYGENCODE.BAS] if RegisterUserFailed=1 Then
    movlp ((_lbl__932) >> 8)
    btfss _B__VR8,0
    goto _lbl__932
F1_003008 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOffWiFi
    movlp ((PowerOffWiFi) >> 8)
    call PowerOffWiFi
ram_bank = 0
F1_003009 equ $ ; in [POLYGENCODE.BAS] SoundTemp=114
    movlb 0x0B
ram_bank = 11
    movlw 114
    movwf SoundTemp
F1_003010 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_003011 equ $ ; in [POLYGENCODE.BAS] tpWiFiStep=99
    movlb 0x0B
ram_bank = 11
    movlw 99
    movwf tpWiFiStep
F1_003012 equ $ ; in [POLYGENCODE.BAS] EndWaitTime=100
    movlw 100
    movwf EndWaitTime
F1_003013 equ $ ; in [POLYGENCODE.BAS] CaptureTimer=600
    movlb 0x0D
ram_bank = 13
    movlw 2
    movwf CaptureTimerH
    movlw 88
    movwf CaptureTimer
F1_003014 equ $ ; in [POLYGENCODE.BAS] GoSub LED1PowerOff
    movlb 0x00
ram_bank = 0
    movlp ((LED1PowerOff) >> 8)
    call LED1PowerOff
ram_bank = 0
F1_003015 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__932
F1_003016 equ $ ; in [POLYGENCODE.BAS] if RegisterUserSuccess=1 Then
    movlp ((_lbl__934) >> 8)
    btfss _B__VR7,7
    goto _lbl__934
F1_003017 equ $ ; in [POLYGENCODE.BAS] SoundTemp=115
    movlb 0x0B
ram_bank = 11
    movlw 115
    movwf SoundTemp
F1_003018 equ $ ; in [POLYGENCODE.BAS] if PostRegSound>0 Then SoundTemp=PostRegSound
    movf PostRegSound,F
    movlp ((_lbl__936) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__936
    movlb 0x0B
ram_bank = 11
    movf PostRegSound,W
    movwf SoundTemp
_lbl__936
    movlb 0x00
ram_bank = 0
F1_003019 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_003027 equ $ ; in [POLYGENCODE.BAS] LEDActiveAnimation=3
    movlb 0x0D
ram_bank = 13
    movlw 3
    movwf LEDActiveAnimation
F1_003028 equ $ ; in [POLYGENCODE.BAS] TeamColourOverride=TeamPickerCount
    movlb 0x0B
ram_bank = 11
    movf TeamPickerCount,W
    movlb 0x06
ram_bank = 6
    movwf TeamColourOverride
F1_003029 equ $ ; in [POLYGENCODE.BAS] GoSub PlayAnimation
    movlb 0x00
ram_bank = 0
    movlp ((PlayAnimation) >> 8)
    call PlayAnimation
ram_bank = 0
F1_003030 equ $ ; in [POLYGENCODE.BAS] Inc tpWiFiStep
    movlb 0x0B
ram_bank = 11
    incf tpWiFiStep,F
F1_003031 equ $ ; in [POLYGENCODE.BAS] Set PlayerKnown
    movlb 0x00
ram_bank = 0
    bsf _B__VR7,4
F1_003032 equ $ ; in [POLYGENCODE.BAS] Clear PlayerUnknown
    bcf _B__VR7,3
F1_003033 equ $ ; in [POLYGENCODE.BAS] EndWaitTime=100
    movlb 0x0B
ram_bank = 11
    movlw 100
    movwf EndWaitTime
F1_003034 equ $ ; in [POLYGENCODE.BAS] CaptureTimer=600
    movlb 0x0D
ram_bank = 13
    movlw 2
    movwf CaptureTimerH
    movlw 88
    movwf CaptureTimer
F1_003035 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__934
ram_bank = 0
F1_003036 equ $ ; in [POLYGENCODE.BAS] if TeamPickerTime=0 Then
    movlb 0x0B
ram_bank = 11
    movf TeamPickerTimeH,W
    iorwf TeamPickerTime,W
    movlp ((_lbl__938) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__938
F1_003037 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOffWiFi
    movlp ((PowerOffWiFi) >> 8)
    call PowerOffWiFi
ram_bank = 0
F1_003038 equ $ ; in [POLYGENCODE.BAS] SoundTemp=113
    movlb 0x0B
ram_bank = 11
    movlw 113
    movwf SoundTemp
F1_003039 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_003040 equ $ ; in [POLYGENCODE.BAS] tpWiFiStep=99
    movlb 0x0B
ram_bank = 11
    movlw 99
    movwf tpWiFiStep
F1_003041 equ $ ; in [POLYGENCODE.BAS] EndWaitTime=100
    movlw 100
    movwf EndWaitTime
F1_003042 equ $ ; in [POLYGENCODE.BAS] CaptureTimer=600
    movlb 0x0D
ram_bank = 13
    movlw 2
    movwf CaptureTimerH
    movlw 88
    movwf CaptureTimer
F1_003043 equ $ ; in [POLYGENCODE.BAS] Clear LEDActiveAnimation
    clrf LEDActiveAnimation
F1_003044 equ $ ; in [POLYGENCODE.BAS] GoSub BlankAllLED1s
    movlb 0x00
ram_bank = 0
    movlp ((BlankAllLED1s) >> 8)
    call BlankAllLED1s
ram_bank = 0
F1_003045 equ $ ; in [POLYGENCODE.BAS] LED1ByteCount=51
    movlb 0x0D
ram_bank = 13
    movlw 51
    movwf LED1ByteCount
F1_003046 equ $ ; in [POLYGENCODE.BAS] GoSub BlankAllLED2s
    movlb 0x00
ram_bank = 0
    movlp ((BlankAllLED2s) >> 8)
    call BlankAllLED2s
ram_bank = 0
F1_003047 equ $ ; in [POLYGENCODE.BAS] LED2ByteCount=36
    movlb 0x0D
ram_bank = 13
    movlw 36
    movwf LED2ByteCount
F1_003048 equ $ ; in [POLYGENCODE.BAS] GoSub SendLEDData
    movlb 0x00
ram_bank = 0
    movlp ((SendLEDData) >> 8)
    call SendLEDData
ram_bank = 0
F1_003049 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__938
F1_003050 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__930
F1_003051 equ $ ; in [POLYGENCODE.BAS] if tpWiFiStep=23 Then
    movlw 23
    movlb 0x0B
ram_bank = 11
    subwf tpWiFiStep,W
    movlp ((_lbl__940) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__940
F1_003052 equ $ ; in [POLYGENCODE.BAS] if EndWaitTime=0 Then
    movlb 0x0B
ram_bank = 11
    movf EndWaitTime,F
    movlp ((_lbl__942) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__942
F1_003053 equ $ ; in [POLYGENCODE.BAS] GoSub IsSoundPlaying
    movlp ((IsSoundPlaying) >> 8)
    call IsSoundPlaying
ram_bank = 0
F1_003054 equ $ ; in [POLYGENCODE.BAS] if SoundPlaying=0 Or CaptureTimer=0 Then
    movlw 1
    btfsc _B__VR5,1
    movlw 0
    movwf SP__P9_
    movlb 0x0D
ram_bank = 13
    movf CaptureTimerH,W
    iorwf CaptureTimer,W
    movlp ((_cplb__87) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _cplb__87
    clrw
    btfss STATUS,2
_cplb__87
    movlw 1
    iorwf SP__P9_,F
    movlp ((_lbl__944) >> 8)
    btfsc STATUS,2
    goto _lbl__944
F1_003055 equ $ ; in [POLYGENCODE.BAS] tpWiFiStep=1
    movlb 0x0B
ram_bank = 11
    movlw 1
    movwf tpWiFiStep
F1_003056 equ $ ; in [POLYGENCODE.BAS] Clear TeamColourOverride
    movlb 0x06
ram_bank = 6
    clrf TeamColourOverride
F1_003057 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__944
ram_bank = 0
F1_003058 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__942
F1_003059 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__940
F1_003060 equ $ ; in [POLYGENCODE.BAS] if tpWiFiStep=1 And PlayerKnown=1 Then
    movlw 1
    movlb 0x0B
ram_bank = 11
    subwf tpWiFiStep,W
    movlw 1
    btfss STATUS,2
    movlw 0
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlw 0
    btfsc _B__VR7,4
    movlw 1
    andwf SP__P9_,F
    movlp ((_lbl__946) >> 8)
    btfsc STATUS,2
    goto _lbl__946
F1_003062 equ $ ; in [POLYGENCODE.BAS] Inc tpWiFiStep
    movlb 0x0B
ram_bank = 11
    incf tpWiFiStep,F
F1_003065 equ $ ; in [POLYGENCODE.BAS] For N=0 To 9
    movlb 0x02
ram_bank = 2
    clrf _N
_frlb__947
ram_bank = 0
    movlw 10
    movlb 0x02
ram_bank = 2
    subwf _N,W
    movlp ((_nxlb__948) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _nxlb__948
F1_003066 equ $ ; in [POLYGENCODE.BAS] discs_LastToken[N] =RC522_Token[N]
    movlb 0x02
ram_bank = 2
    movf _N,W
    addlw 227
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR0
    movlb 0x02
ram_bank = 2
    movf _N,W
    addlw 230
    movwf FSR0L
    movlw 0x21
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x00
ram_bank = 0
    movf PBS_VAR0,W
    movwf INDF0
_ctlb__949
F1_003067 equ $ ; in [POLYGENCODE.BAS] Next
    movlw 1
    movlb 0x02
ram_bank = 2
    addwf _N,F
    movlp ((_frlb__947) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _frlb__947
_nxlb__948
F1_003069 equ $ ; in [POLYGENCODE.BAS] if discs_NewTeam=discs_OwnerTeam Then
    movlb 0x06
ram_bank = 6
    movf discs_NewTeam,W
    subwf discs_OwnerTeam,W
    movlp ((_lbl__951) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__951
F1_003071 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOffWiFi
    movlp ((PowerOffWiFi) >> 8)
    call PowerOffWiFi
ram_bank = 0
F1_003077 equ $ ; in [POLYGENCODE.BAS] Select BoostResult
F1_003078 equ $ ; in [POLYGENCODE.BAS] Case 0,3
    movlb 0x0E
ram_bank = 14
    movf BoostResult,F
    movlp ((_lbl__954) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__954
    movlw 3
    movlb 0x0E
ram_bank = 14
    subwf BoostResult,W
    movlp ((_lbl__953) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__953
_lbl__954
F1_003079 equ $ ; in [POLYGENCODE.BAS] SoundTemp=140 + LangDelta
    movlw 140
    movlb 0x0E
ram_bank = 14
    addwf LangDelta,W
    movlb 0x0B
ram_bank = 11
    movwf SoundTemp
    movlb 0x00
ram_bank = 0
    _mjump _lbl__952
_lbl__953
F1_003080 equ $ ; in [POLYGENCODE.BAS] Case 1
    movlw 1
    movlb 0x0E
ram_bank = 14
    subwf BoostResult,W
    movlp ((_lbl__956) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__956
F1_003081 equ $ ; in [POLYGENCODE.BAS] SoundTemp=128 + LangDelta
    movlw 128
    movlb 0x0E
ram_bank = 14
    addwf LangDelta,W
    movlb 0x0B
ram_bank = 11
    movwf SoundTemp
    movlb 0x00
ram_bank = 0
    _mjump _lbl__952
_lbl__956
F1_003082 equ $ ; in [POLYGENCODE.BAS] Case 2
    movlw 2
    movlb 0x0E
ram_bank = 14
    subwf BoostResult,W
    movlp ((_lbl__958) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__958
F1_003083 equ $ ; in [POLYGENCODE.BAS] Inc CurrentBoostCount
    movlb 0x0E
ram_bank = 14
    incf CurrentBoostCount,F
F1_003084 equ $ ; in [POLYGENCODE.BAS] if CurrentBoostCount>10 Then
    movlw 11
    subwf CurrentBoostCount,W
    movlp ((_lbl__960) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _lbl__960
F1_003085 equ $ ; in [POLYGENCODE.BAS] SoundTemp=139+LangDelta
    movlw 139
    movlb 0x0E
ram_bank = 14
    addwf LangDelta,W
    movlb 0x0B
ram_bank = 11
    movwf SoundTemp
    movlb 0x00
ram_bank = 0
    _mjump _lbl__961
_lbl__960
F1_003086 equ $ ; in [POLYGENCODE.BAS] else
F1_003087 equ $ ; in [POLYGENCODE.BAS] SoundTemp=140 + CurrentBoostCount + LangDelta
    movlw 140
    movlb 0x0E
ram_bank = 14
    addwf CurrentBoostCount,W
    movlb 0x00
ram_bank = 0
    clrf PP7H
    movwf PP7
    rlf PP7H,F
    movf PP7,W
    movlb 0x0E
ram_bank = 14
    addwf LangDelta,W
    movlb 0x0B
ram_bank = 11
    movwf SoundTemp
F1_003088 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__961
    movlb 0x00
ram_bank = 0
F1_003089 equ $ ; in [POLYGENCODE.BAS] EndSelect
_lbl__958
_lbl__952
F1_003090 equ $ ; in [POLYGENCODE.BAS] Set NextSoundNow
    bsf _B__VR5,0
F1_003091 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_003092 equ $ ; in [POLYGENCODE.BAS] LEDActiveAnimation=4
    movlb 0x0D
ram_bank = 13
    movlw 4
    movwf LEDActiveAnimation
F1_003093 equ $ ; in [POLYGENCODE.BAS] GoSub PlayAnimation
    movlb 0x00
ram_bank = 0
    movlp ((PlayAnimation) >> 8)
    call PlayAnimation
ram_bank = 0
F1_003094 equ $ ; in [POLYGENCODE.BAS] tpWiFiStep=99
    movlb 0x0B
ram_bank = 11
    movlw 99
    movwf tpWiFiStep
F1_003095 equ $ ; in [POLYGENCODE.BAS] EndWaitTime=50
    movlw 50
    movwf EndWaitTime
F1_003096 equ $ ; in [POLYGENCODE.BAS] CaptureTimer=600
    movlb 0x0D
ram_bank = 13
    movlw 2
    movwf CaptureTimerH
    movlw 88
    movwf CaptureTimer
    movlb 0x00
ram_bank = 0
    _mjump _lbl__962
_lbl__951
F1_003097 equ $ ; in [POLYGENCODE.BAS] else
F1_003098 equ $ ; in [POLYGENCODE.BAS] SoundTemp=150+ discs_NewTeam  + TeamSoundOffset[discs_NewTeam]
    movlw 150
    movlb 0x06
ram_bank = 6
    addwf discs_NewTeam,W
    movlb 0x00
ram_bank = 0
    clrf PP7H
    movwf PP7
    rlf PP7H,F
    movlb 0x06
ram_bank = 6
    movf discs_NewTeam,W
    addlw 55
    movwf FSR0L
    movlw 0x24
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR0
    movf PBS_VAR0,W
    addwf PP7,W
    movlb 0x0B
ram_bank = 11
    movwf SoundTemp
F1_003099 equ $ ; in [POLYGENCODE.BAS] Set NextSoundNow
    movlb 0x00
ram_bank = 0
    bsf _B__VR5,0
F1_003100 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_003102 equ $ ; in [POLYGENCODE.BAS] Inc tpWiFiStep
    movlb 0x0B
ram_bank = 11
    incf tpWiFiStep,F
F1_003103 equ $ ; in [POLYGENCODE.BAS] LEDActiveAnimation=5
    movlb 0x0D
ram_bank = 13
    movlw 5
    movwf LEDActiveAnimation
F1_003104 equ $ ; in [POLYGENCODE.BAS] CaptureTimer=50
    clrf CaptureTimerH
    movlw 50
    movwf CaptureTimer
F1_003105 equ $ ; in [POLYGENCODE.BAS] GoSub PlayAnimation
    movlb 0x00
ram_bank = 0
    movlp ((PlayAnimation) >> 8)
    call PlayAnimation
ram_bank = 0
F1_003106 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__962
F1_003107 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__946
F1_003108 equ $ ; in [POLYGENCODE.BAS] if tpWiFiStep=2 And EndWaitTime=0 Then
    movlw 2
    movlb 0x0B
ram_bank = 11
    subwf tpWiFiStep,W
    movlw 1
    btfss STATUS,2
    movlw 0
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlw 1
    movlb 0x0B
ram_bank = 11
    movf EndWaitTime,F
    btfss STATUS,2
    movlw 0
    movlb 0x00
ram_bank = 0
    andwf SP__P9_,F
    movlp ((_lbl__964) >> 8)
    btfsc STATUS,2
    goto _lbl__964
F1_003110 equ $ ; in [POLYGENCODE.BAS] Inc tpWiFiStep
    movlb 0x0B
ram_bank = 11
    incf tpWiFiStep,F
F1_003111 equ $ ; in [POLYGENCODE.BAS] CaptureTimer=500
    movlb 0x0D
ram_bank = 13
    movlw 1
    movwf CaptureTimerH
    movlw 244
    movwf CaptureTimer
F1_003112 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__964
ram_bank = 0
F1_003113 equ $ ; in [POLYGENCODE.BAS] if tpWiFiStep=3 And CaptureTimer=0 Then
    movlw 3
    movlb 0x0B
ram_bank = 11
    subwf tpWiFiStep,W
    movlw 1
    btfss STATUS,2
    movlw 0
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlb 0x0D
ram_bank = 13
    movf CaptureTimerH,W
    iorwf CaptureTimer,W
    movlp ((_cplb__88) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _cplb__88
    clrw
    btfss STATUS,2
_cplb__88
    movlw 1
    andwf SP__P9_,F
    movlp ((_lbl__966) >> 8)
    btfsc STATUS,2
    goto _lbl__966
F1_003115 equ $ ; in [POLYGENCODE.BAS] SoundTemp=133 + LangDelta
    movlw 133
    movlb 0x0E
ram_bank = 14
    addwf LangDelta,W
    movlb 0x0B
ram_bank = 11
    movwf SoundTemp
F1_003116 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_003117 equ $ ; in [POLYGENCODE.BAS] tpWiFiStep=99
    movlb 0x0B
ram_bank = 11
    movlw 99
    movwf tpWiFiStep
F1_003118 equ $ ; in [POLYGENCODE.BAS] CaptureTimer=600
    movlb 0x0D
ram_bank = 13
    movlw 2
    movwf CaptureTimerH
    movlw 88
    movwf CaptureTimer
F1_003119 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__966
ram_bank = 0
F1_003120 equ $ ; in [POLYGENCODE.BAS] if tpWiFiStep=3 And WiFiConnected=1 Then
    movlw 3
    movlb 0x0B
ram_bank = 11
    subwf tpWiFiStep,W
    movlw 1
    btfss STATUS,2
    movlw 0
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlw 0
    btfsc _B__VR2,1
    movlw 1
    andwf SP__P9_,F
    movlp ((_lbl__968) >> 8)
    btfsc STATUS,2
    goto _lbl__968
F1_003121 equ $ ; in [POLYGENCODE.BAS] WiFiCMD[0] ="C"
    movlb 0x07
ram_bank = 7
    movlw 67
    movwf WiFiCMD#0
F1_003122 equ $ ; in [POLYGENCODE.BAS] WiFiCMD[1] =0
    clrf WiFiCMD#1
F1_003123 equ $ ; in [POLYGENCODE.BAS] For N=0 To 9
    movlb 0x02
ram_bank = 2
    clrf _N
_frlb__969
ram_bank = 0
    movlw 10
    movlb 0x02
ram_bank = 2
    subwf _N,W
    movlp ((_nxlb__970) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _nxlb__970
F1_003124 equ $ ; in [POLYGENCODE.BAS] WiFiCMD=WiFiCMD + Str$(Hex2, RC522_Token[N])
    movlw 34
    movwf FSR0LH
    movlw 120
    movwf FSR0L
    moviw INDF0++
    btfss STATUS,2
    bra $ - 2
    moviw INDF0--
    movlw 2
    movwf BPFH
    movf FSR0LH,W
    movwf PBS_VAR0H
    movf FSR0L,W
    movwf PBS_VAR0
    movlw 2
    movwf GEN4H
    movlb 0x02
ram_bank = 2
    movf _N,W
    addlw 227
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PP2
    movf PBS_VAR0H,W
    movwf FSR0LH
    movf PBS_VAR0,W
    movwf FSR0L
    movlp ((__hex__ASCII__outd) >> 8)
    call __hex__ASCII__outd
ram_bank = 0
    clrf INDF0
_ctlb__971
F1_003125 equ $ ; in [POLYGENCODE.BAS] Next
    movlw 1
    movlb 0x02
ram_bank = 2
    addwf _N,F
    movlp ((_frlb__969) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _frlb__969
_nxlb__970
F1_003126 equ $ ; in [POLYGENCODE.BAS] GoSub SendWiFiCMD
    movlp ((SendWiFiCMD) >> 8)
    call SendWiFiCMD
ram_bank = 0
F1_003127 equ $ ; in [POLYGENCODE.BAS] Inc tpWiFiStep
    movlb 0x0B
ram_bank = 11
    incf tpWiFiStep,F
F1_003128 equ $ ; in [POLYGENCODE.BAS] EndWaitTime=250
    movlw 250
    movwf EndWaitTime
F1_003129 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__968
ram_bank = 0
F1_003130 equ $ ; in [POLYGENCODE.BAS] if tpWiFiStep=4 Then
    movlw 4
    movlb 0x0B
ram_bank = 11
    subwf tpWiFiStep,W
    movlp ((_lbl__973) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__973
F1_003131 equ $ ; in [POLYGENCODE.BAS] GoSub IsSoundPlaying
    movlp ((IsSoundPlaying) >> 8)
    call IsSoundPlaying
ram_bank = 0
F1_003132 equ $ ; in [POLYGENCODE.BAS] if SoundPlaying=0 Or EndWaitTime=0 Then
    movlw 1
    btfsc _B__VR5,1
    movlw 0
    movwf SP__P9_
    movlw 1
    movlb 0x0B
ram_bank = 11
    movf EndWaitTime,F
    btfss STATUS,2
    movlw 0
    movlb 0x00
ram_bank = 0
    iorwf SP__P9_,F
    movlp ((_lbl__975) >> 8)
    btfsc STATUS,2
    goto _lbl__975
F1_003133 equ $ ; in [POLYGENCODE.BAS] if CaptureSucess=1 Then
    movlp ((_lbl__977) >> 8)
    btfss _B__VR7,5
    goto _lbl__977
F1_003134 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOffWiFi
    movlp ((PowerOffWiFi) >> 8)
    call PowerOffWiFi
ram_bank = 0
F1_003135 equ $ ; in [POLYGENCODE.BAS] discs_OwnerTeam=discs_NewTeam
    movlb 0x06
ram_bank = 6
    movf discs_NewTeam,W
    movwf discs_OwnerTeam
F1_003136 equ $ ; in [POLYGENCODE.BAS] For N=0 To 9
    movlb 0x02
ram_bank = 2
    clrf _N
_frlb__978
ram_bank = 0
    movlw 10
    movlb 0x02
ram_bank = 2
    subwf _N,W
    movlp ((_nxlb__979) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _nxlb__979
F1_003137 equ $ ; in [POLYGENCODE.BAS] discs_OwnerToken[N] =discs_LastToken[N]
    movlb 0x02
ram_bank = 2
    movf _N,W
    addlw 230
    movwf FSR0L
    movlw 0x21
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR0
    movlb 0x02
ram_bank = 2
    movf _N,W
    addlw 218
    movwf FSR0L
    movlw 0x21
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x00
ram_bank = 0
    movf PBS_VAR0,W
    movwf INDF0
_ctlb__980
F1_003138 equ $ ; in [POLYGENCODE.BAS] Next
    movlw 1
    movlb 0x02
ram_bank = 2
    addwf _N,F
    movlp ((_frlb__978) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _frlb__978
_nxlb__979
F1_003139 equ $ ; in [POLYGENCODE.BAS] SoundTemp=130 + LangDelta
    movlw 130
    movlb 0x0E
ram_bank = 14
    addwf LangDelta,W
    movlb 0x0B
ram_bank = 11
    movwf SoundTemp
F1_003140 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_003141 equ $ ; in [POLYGENCODE.BAS] Inc tpWiFiStep
    movlb 0x0B
ram_bank = 11
    incf tpWiFiStep,F
F1_003142 equ $ ; in [POLYGENCODE.BAS] LEDActiveAnimation=6
    movlb 0x0D
ram_bank = 13
    movlw 6
    movwf LEDActiveAnimation
F1_003143 equ $ ; in [POLYGENCODE.BAS] GoSub PlayAnimation
    movlb 0x00
ram_bank = 0
    movlp ((PlayAnimation) >> 8)
    call PlayAnimation
ram_bank = 0
F1_003144 equ $ ; in [POLYGENCODE.BAS] EndWaitTime=50
    movlb 0x0B
ram_bank = 11
    movlw 50
    movwf EndWaitTime
F1_003145 equ $ ; in [POLYGENCODE.BAS] CaptureTimer=500
    movlb 0x0D
ram_bank = 13
    movlw 1
    movwf CaptureTimerH
    movlw 244
    movwf CaptureTimer
F1_003146 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__977
    movlb 0x00
ram_bank = 0
F1_003147 equ $ ; in [POLYGENCODE.BAS] if CaptureFailed=1 Then
    movlp ((_lbl__982) >> 8)
    btfss _B__VR7,6
    goto _lbl__982
F1_003148 equ $ ; in [POLYGENCODE.BAS] Clear discs_LastToken
    movlw 0x21
    movwf FSR0LH
    movlw 0xE6
    movwf FSR0L
    movlw 11
    movwf PP0
    movlw 0
    movwi INDF0++
    decfsz PP0,F
    bra $ - 3
F1_003149 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOffWiFi
    movlp ((PowerOffWiFi) >> 8)
    call PowerOffWiFi
ram_bank = 0
F1_003150 equ $ ; in [POLYGENCODE.BAS] SoundTemp=132 + LangDelta
    movlw 132
    movlb 0x0E
ram_bank = 14
    addwf LangDelta,W
    movlb 0x0B
ram_bank = 11
    movwf SoundTemp
F1_003151 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_003152 equ $ ; in [POLYGENCODE.BAS] tpWiFiStep=99
    movlb 0x0B
ram_bank = 11
    movlw 99
    movwf tpWiFiStep
F1_003153 equ $ ; in [POLYGENCODE.BAS] EndWaitTime=50
    movlw 50
    movwf EndWaitTime
F1_003154 equ $ ; in [POLYGENCODE.BAS] CaptureTimer=500
    movlb 0x0D
ram_bank = 13
    movlw 1
    movwf CaptureTimerH
    movlw 244
    movwf CaptureTimer
F1_003155 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__982
ram_bank = 0
F1_003156 equ $ ; in [POLYGENCODE.BAS] if EndWaitTime=0 Then
    movlb 0x0B
ram_bank = 11
    movf EndWaitTime,F
    movlp ((_lbl__984) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__984
F1_003157 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOffWiFi
    movlp ((PowerOffWiFi) >> 8)
    call PowerOffWiFi
ram_bank = 0
F1_003158 equ $ ; in [POLYGENCODE.BAS] SoundTemp=132 + LangDelta
    movlw 132
    movlb 0x0E
ram_bank = 14
    addwf LangDelta,W
    movlb 0x0B
ram_bank = 11
    movwf SoundTemp
F1_003159 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_003160 equ $ ; in [POLYGENCODE.BAS] tpWiFiStep=99
    movlb 0x0B
ram_bank = 11
    movlw 99
    movwf tpWiFiStep
F1_003161 equ $ ; in [POLYGENCODE.BAS] EndWaitTime=50
    movlw 50
    movwf EndWaitTime
F1_003162 equ $ ; in [POLYGENCODE.BAS] CaptureTimer=500
    movlb 0x0D
ram_bank = 13
    movlw 1
    movwf CaptureTimerH
    movlw 244
    movwf CaptureTimer
F1_003163 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__984
ram_bank = 0
F1_003164 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__975
F1_003165 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__973
F1_003166 equ $ ; in [POLYGENCODE.BAS] if tpWiFiStep=99 And EndWaitTime=0 Then
    movlw 99
    movlb 0x0B
ram_bank = 11
    subwf tpWiFiStep,W
    movlw 1
    btfss STATUS,2
    movlw 0
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlw 1
    movlb 0x0B
ram_bank = 11
    movf EndWaitTime,F
    btfss STATUS,2
    movlw 0
    movlb 0x00
ram_bank = 0
    andwf SP__P9_,F
    movlp ((_lbl__986) >> 8)
    btfsc STATUS,2
    goto _lbl__986
F1_003167 equ $ ; in [POLYGENCODE.BAS] if WiFiPoweredOnOK=1 Or WiFiConnected=1 Then GoSub PowerOffWiFi
    movlw 0
    btfsc _B__VR8,1
    movlw 1
    movwf SP__P9_
    movlw 0
    btfsc _B__VR2,1
    movlw 1
    iorwf SP__P9_,F
    movlp ((_lbl__988) >> 8)
    btfsc STATUS,2
    goto _lbl__988
    movlp ((PowerOffWiFi) >> 8)
    call PowerOffWiFi
ram_bank = 0
_lbl__988
F1_003168 equ $ ; in [POLYGENCODE.BAS] GoSub IsSoundPlaying
    movlp ((IsSoundPlaying) >> 8)
    call IsSoundPlaying
ram_bank = 0
F1_003169 equ $ ; in [POLYGENCODE.BAS] if SoundPlaying=0 Or CaptureTimer=0 Then tpWiFiStep=100
    movlw 1
    btfsc _B__VR5,1
    movlw 0
    movwf SP__P9_
    movlb 0x0D
ram_bank = 13
    movf CaptureTimerH,W
    iorwf CaptureTimer,W
    movlp ((_cplb__89) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _cplb__89
    clrw
    btfss STATUS,2
_cplb__89
    movlw 1
    iorwf SP__P9_,F
    movlp ((_lbl__990) >> 8)
    btfsc STATUS,2
    goto _lbl__990
    movlb 0x0B
ram_bank = 11
    movlw 100
    movwf tpWiFiStep
_lbl__990
ram_bank = 0
F1_003170 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__986
F1_003171 equ $ ; in [POLYGENCODE.BAS] if tpWiFiStep=100 Then
    movlw 100
    movlb 0x0B
ram_bank = 11
    subwf tpWiFiStep,W
    movlp ((_lbl__992) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__992
F1_003172 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOffSound
    movlp ((PowerOffSound) >> 8)
    call PowerOffSound
ram_bank = 0
F1_003173 equ $ ; in [POLYGENCODE.BAS] GoSub LED1PowerOff
    movlp ((LED1PowerOff) >> 8)
    call LED1PowerOff
ram_bank = 0
F1_003174 equ $ ; in [POLYGENCODE.BAS] return
    return
F1_003175 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__992
F1_003176 equ $ ; in [POLYGENCODE.BAS] if tpWiFiStep=5 Then
    movlw 5
    movlb 0x0B
ram_bank = 11
    subwf tpWiFiStep,W
    movlp ((_lbl__994) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__994
F1_003178 equ $ ; in [POLYGENCODE.BAS] tpWiFiStep=99
    movlb 0x0B
ram_bank = 11
    movlw 99
    movwf tpWiFiStep
F1_003179 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__994
    movlb 0x00
ram_bank = 0
F1_003180 equ $ ; in [POLYGENCODE.BAS] goto tpLoop
    _mjump tpLoop
PlayAnimation
F1_003187 equ $ ; in [POLYGENCODE.BAS] Select LEDActiveAnimation
F1_003188 equ $ ; in [POLYGENCODE.BAS] Case 1
    movlw 1
    movlb 0x0D
ram_bank = 13
    subwf LEDActiveAnimation,W
    movlp ((_lbl__996) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__996
F1_003189 equ $ ; in [POLYGENCODE.BAS] LEDFrame=1000
    movlb 0x0D
ram_bank = 13
    movlw 3
    movwf LEDFrameH
    movlw 232
    movwf LEDFrame
F1_003190 equ $ ; in [POLYGENCODE.BAS] Clear HSVv
    movlb 0x0E
ram_bank = 14
    clrf HSVv
F1_003191 equ $ ; in [POLYGENCODE.BAS] HSVs=255
    movlw 255
    movwf HSVs
F1_003192 equ $ ; in [POLYGENCODE.BAS] HSVh=TeamColourHue[TeamPickerCount]
    movlb 0x0B
ram_bank = 11
    lslf TeamPickerCount,W
    movwf FSR0L
    clrf FSR0H
    rlf FSR0H,F
    movlw 0x23
    addwf FSR0L,F
    movlw 0x24
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x0E
ram_bank = 14
    movwf HSVh
    moviw ++INDF0
    movwf HSVhH
F1_003193 equ $ ; in [POLYGENCODE.BAS] Clear FrameTemp2
    clrf FrameTemp2
    movlb 0x00
ram_bank = 0
    _mjump _lbl__995
_lbl__996
F1_003194 equ $ ; in [POLYGENCODE.BAS] Case 2
    movlw 2
    movlb 0x0D
ram_bank = 13
    subwf LEDActiveAnimation,W
    movlp ((_lbl__999) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__999
F1_003195 equ $ ; in [POLYGENCODE.BAS] LEDFrame=100
    movlb 0x0D
ram_bank = 13
    clrf LEDFrameH
    movlw 100
    movwf LEDFrame
F1_003197 equ $ ; in [POLYGENCODE.BAS] HSVs=255
    movlb 0x0E
ram_bank = 14
    movlw 255
    movwf HSVs
F1_003198 equ $ ; in [POLYGENCODE.BAS] HSVv=200
    movlw 200
    movwf HSVv
F1_003199 equ $ ; in [POLYGENCODE.BAS] HSVh=TeamColourHue[TeamPickerCount]
    movlb 0x0B
ram_bank = 11
    lslf TeamPickerCount,W
    movwf FSR0L
    clrf FSR0H
    rlf FSR0H,F
    movlw 0x23
    addwf FSR0L,F
    movlw 0x24
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x0E
ram_bank = 14
    movwf HSVh
    moviw ++INDF0
    movwf HSVhH
F1_003200 equ $ ; in [POLYGENCODE.BAS] GoSub HSV2RGB
    movlb 0x00
ram_bank = 0
    movlp ((HSV2RGB) >> 8)
    call HSV2RGB
ram_bank = 0
    _mjump _lbl__995
_lbl__999
F1_003201 equ $ ; in [POLYGENCODE.BAS] Case 3
    movlw 3
    movlb 0x0D
ram_bank = 13
    subwf LEDActiveAnimation,W
    movlp ((_lbl__1001) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1001
F1_003202 equ $ ; in [POLYGENCODE.BAS] LEDFrame=545
    movlb 0x0D
ram_bank = 13
    movlw 2
    movwf LEDFrameH
    movlw 33
    movwf LEDFrame
F1_003204 equ $ ; in [POLYGENCODE.BAS] Clear FrameTemp2
    movlb 0x0E
ram_bank = 14
    clrf FrameTemp2
    movlb 0x00
ram_bank = 0
    _mjump _lbl__995
_lbl__1001
F1_003205 equ $ ; in [POLYGENCODE.BAS] Case 4
    movlw 4
    movlb 0x0D
ram_bank = 13
    subwf LEDActiveAnimation,W
    movlp ((_lbl__1003) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1003
F1_003206 equ $ ; in [POLYGENCODE.BAS] LEDFrame=63
    movlb 0x0D
ram_bank = 13
    clrf LEDFrameH
    movlw 63
    movwf LEDFrame
F1_003207 equ $ ; in [POLYGENCODE.BAS] HSVv=200
    movlb 0x0E
ram_bank = 14
    movlw 200
    movwf HSVv
F1_003209 equ $ ; in [POLYGENCODE.BAS] GoSub LoadOwnerColour
    movlb 0x00
ram_bank = 0
    movlp ((LoadOwnerColour) >> 8)
    call LoadOwnerColour
ram_bank = 0
F1_003211 equ $ ; in [POLYGENCODE.BAS] GoSub HSV2RGB
    movlp ((HSV2RGB) >> 8)
    call HSV2RGB
ram_bank = 0
F1_003212 equ $ ; in [POLYGENCODE.BAS] LEDActiveAnimation=2
    movlb 0x0D
ram_bank = 13
    movlw 2
    movwf LEDActiveAnimation
    movlb 0x00
ram_bank = 0
    _mjump _lbl__995
_lbl__1003
F1_003213 equ $ ; in [POLYGENCODE.BAS] Case 5
    movlw 5
    movlb 0x0D
ram_bank = 13
    subwf LEDActiveAnimation,W
    movlp ((_lbl__1005) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1005
F1_003214 equ $ ; in [POLYGENCODE.BAS] if LEDFrame=0 Then LEDFrame=511
    movlb 0x0D
ram_bank = 13
    movf LEDFrameH,W
    iorwf LEDFrame,W
    movlp ((_lbl__1007) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1007
    movlb 0x0D
ram_bank = 13
    movlw 1
    movwf LEDFrameH
    movlw 255
    movwf LEDFrame
_lbl__1007
    movlb 0x00
ram_bank = 0
    _mjump _lbl__995
_lbl__1005
F1_003218 equ $ ; in [POLYGENCODE.BAS] Case 6
    movlw 6
    movlb 0x0D
ram_bank = 13
    subwf LEDActiveAnimation,W
    movlp ((_lbl__1009) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1009
F1_003220 equ $ ; in [POLYGENCODE.BAS] LEDFrame=488
    movlb 0x0D
ram_bank = 13
    movlw 1
    movwf LEDFrameH
    movlw 232
    movwf LEDFrame
F1_003221 equ $ ; in [POLYGENCODE.BAS] HSVv=255
    movlb 0x0E
ram_bank = 14
    movlw 255
    movwf HSVv
F1_003224 equ $ ; in [POLYGENCODE.BAS] GoSub LoadOwnerColour
    movlb 0x00
ram_bank = 0
    movlp ((LoadOwnerColour) >> 8)
    call LoadOwnerColour
ram_bank = 0
F1_003225 equ $ ; in [POLYGENCODE.BAS] GoSub HSV2RGB
    movlp ((HSV2RGB) >> 8)
    call HSV2RGB
ram_bank = 0
F1_003226 equ $ ; in [POLYGENCODE.BAS] AnimationTempR=OutR
    movlb 0x0E
ram_bank = 14
    movf OutR,W
    movwf AnimationTempR
F1_003227 equ $ ; in [POLYGENCODE.BAS] AnimationTempG=OutG
    movf OutG,W
    movwf AnimationTempG
F1_003228 equ $ ; in [POLYGENCODE.BAS] AnimationTempB=OutB
    movf OutB,W
    movwf AnimationTempB
    movlb 0x00
ram_bank = 0
    _mjump _lbl__995
_lbl__1009
F1_003229 equ $ ; in [POLYGENCODE.BAS] Case 7
    movlw 7
    movlb 0x0D
ram_bank = 13
    subwf LEDActiveAnimation,W
    movlp ((_lbl__1011) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1011
F1_003230 equ $ ; in [POLYGENCODE.BAS] FrameTemp=TotalTeams+1
    movlw 1
    movlb 0x0D
ram_bank = 13
    addwf TotalTeams,W
    movwf FrameTemp
    clrf FrameTempH
    rlf FrameTempH,F
F1_003231 equ $ ; in [POLYGENCODE.BAS] LEDFrame=FrameTemp<<5
    rlf FrameTemp,W
    movwf LEDFrame
    rlf FrameTempH,W
    movwf LEDFrameH
    rlf LEDFrame,F
    rlf LEDFrameH,F
    rlf LEDFrame,F
    rlf LEDFrameH,F
    rlf LEDFrame,F
    rlf LEDFrameH,F
    rlf LEDFrame,F
    rlf LEDFrameH,F
    movlw 224
    andwf LEDFrame,F
F1_003232 equ $ ; in [POLYGENCODE.BAS] Dec LEDFrame
    movlw 1
    subwf LEDFrame,F
    movlw 0
    subwfb LEDFrameH,F
    movlb 0x00
ram_bank = 0
    _mjump _lbl__995
_lbl__1011
F1_003233 equ $ ; in [POLYGENCODE.BAS] Case 8
    movlw 8
    movlb 0x0D
ram_bank = 13
    subwf LEDActiveAnimation,W
    movlp ((_lbl__1013) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1013
F1_003234 equ $ ; in [POLYGENCODE.BAS] LEDFrame=200
    movlb 0x0D
ram_bank = 13
    clrf LEDFrameH
    movlw 200
    movwf LEDFrame
    movlb 0x00
ram_bank = 0
    _mjump _lbl__995
_lbl__1013
F1_003235 equ $ ; in [POLYGENCODE.BAS] Case 9
    movlw 9
    movlb 0x0D
ram_bank = 13
    subwf LEDActiveAnimation,W
    movlp ((_lbl__1015) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1015
F1_003236 equ $ ; in [POLYGENCODE.BAS] LEDFrame=800
    movlb 0x0D
ram_bank = 13
    movlw 3
    movwf LEDFrameH
    movlw 32
    movwf LEDFrame
F1_003237 equ $ ; in [POLYGENCODE.BAS] EndSelect
_lbl__1015
ram_bank = 0
_lbl__995
F1_003238 equ $ ; in [POLYGENCODE.BAS] LEDLastFrame=LEDFrame
    movlb 0x0D
ram_bank = 13
    movf LEDFrameH,W
    movwf LEDLastFrameH
    movf LEDFrame,W
    movwf LEDLastFrame
F1_003239 equ $ ; in [POLYGENCODE.BAS] return
    movlb 0x00
ram_bank = 0
    return
UpdateAnimation
F1_003244 equ $ ; in [POLYGENCODE.BAS] if LEDActiveAnimation=0 Then return
    movlb 0x0D
ram_bank = 13
    movf LEDActiveAnimation,F
    movlp ((_lbl__1017) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1017
    return
_lbl__1017
F1_003245 equ $ ; in [POLYGENCODE.BAS] if LEDFrame>0 And LEDLastFrame=LEDFrame Then return
    movlb 0x0D
ram_bank = 13
    movf LEDFrame,W
    iorwf LEDFrameH,W
    movlp ((_cplb__90) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _cplb__90
_cplb__91
ram_bank = 255
    clrw
    btfss STATUS,2
_cplb__90
    movlw 1
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlb 0x0D
ram_bank = 13
    movf LEDFrameH,W
    subwf LEDLastFrameH,W
    btfss STATUS,2
    bra _cplb__93
    movf LEDFrame,W
    subwf LEDLastFrame,W
    movlp ((_cplb__92) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _cplb__92
_cplb__93
ram_bank = 255
    clrw
    btfss STATUS,2
_cplb__92
    movlw 1
    movlb 0x00
ram_bank = 0
    andwf SP__P9_,F
    movlp ((_lbl__1019) >> 8)
    btfsc STATUS,2
    goto _lbl__1019
    return
_lbl__1019
F1_003247 equ $ ; in [POLYGENCODE.BAS] LEDLastFrame=LEDFrame
    movlb 0x0D
ram_bank = 13
    movf LEDFrameH,W
    movwf LEDLastFrameH
    movf LEDFrame,W
    movwf LEDLastFrame
F1_003248 equ $ ; in [POLYGENCODE.BAS] Select LEDActiveAnimation
F1_003249 equ $ ; in [POLYGENCODE.BAS] Case 1
    movlw 1
    subwf LEDActiveAnimation,W
    movlp ((_lbl__1021) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1021
F1_003251 equ $ ; in [POLYGENCODE.BAS] if LEDFrame>255 Then
    movlw 1
    movlb 0x0D
ram_bank = 13
    subwf LEDFrameH,W
    movlp ((_lbl__1024) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _lbl__1024
F1_003252 equ $ ; in [POLYGENCODE.BAS] if LEDFrame.1=1 And LEDFrame.0=0 And FrameTemp2<255 Then Inc FrameTemp2
    movlw 0
    movlb 0x0D
ram_bank = 13
    btfsc LEDFrame,1
    movlw 1
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlw 1
    movlb 0x0D
ram_bank = 13
    btfsc LEDFrame,0
    movlw 0
    movlb 0x00
ram_bank = 0
    andwf SP__P9_,F
    movlw 255
    movlb 0x0E
ram_bank = 14
    subwf FrameTemp2,W
    movlw 1
    btfsc STATUS,0
    movlw 0
    movlb 0x00
ram_bank = 0
    andwf SP__P9_,F
    movlp ((_lbl__1026) >> 8)
    btfsc STATUS,2
    goto _lbl__1026
    movlb 0x0E
ram_bank = 14
    incf FrameTemp2,F
_lbl__1026
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1027
_lbl__1024
F1_003253 equ $ ; in [POLYGENCODE.BAS] else
F1_003254 equ $ ; in [POLYGENCODE.BAS] Dec FrameTemp2
    movlb 0x0E
ram_bank = 14
    decf FrameTemp2,F
F1_003255 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1027
ram_bank = 0
F1_003256 equ $ ; in [POLYGENCODE.BAS] HSVv=FrameTemp2
    movlb 0x0E
ram_bank = 14
    movf FrameTemp2,W
    movwf HSVv
F1_003257 equ $ ; in [POLYGENCODE.BAS] if FrameTemp2=0 Then Inc FrameTemp2
    movf FrameTemp2,F
    movlp ((_lbl__1029) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1029
    movlb 0x0E
ram_bank = 14
    incf FrameTemp2,F
_lbl__1029
ram_bank = 0
F1_003258 equ $ ; in [POLYGENCODE.BAS] if HSVv=0 Then
    movlb 0x0E
ram_bank = 14
    movf HSVv,F
    movlp ((_lbl__1031) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1031
F1_003259 equ $ ; in [POLYGENCODE.BAS] Clear OutR
    movlb 0x0E
ram_bank = 14
    clrf OutR
F1_003260 equ $ ; in [POLYGENCODE.BAS] Clear OutG
    clrf OutG
F1_003261 equ $ ; in [POLYGENCODE.BAS] Clear OutB
    clrf OutB
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1032
_lbl__1031
F1_003262 equ $ ; in [POLYGENCODE.BAS] else
F1_003263 equ $ ; in [POLYGENCODE.BAS] GoSub HSV2RGB
    movlp ((HSV2RGB) >> 8)
    call HSV2RGB
ram_bank = 0
F1_003264 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1032
F1_003265 equ $ ; in [POLYGENCODE.BAS] GoSub LoadAllLED2s
    movlp ((LoadAllLED2s) >> 8)
    call LoadAllLED2s
ram_bank = 0
F1_003267 equ $ ; in [POLYGENCODE.BAS] if LEDFrame>255 Then
    movlw 1
    movlb 0x0D
ram_bank = 13
    subwf LEDFrameH,W
    movlp ((_lbl__1034) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _lbl__1034
F1_003268 equ $ ; in [POLYGENCODE.BAS] HSVv=255
    movlb 0x0E
ram_bank = 14
    movlw 255
    movwf HSVv
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1035
_lbl__1034
F1_003269 equ $ ; in [POLYGENCODE.BAS] else
F1_003270 equ $ ; in [POLYGENCODE.BAS] HSVv=LEDFrame.LowByte
    movlb 0x0D
ram_bank = 13
    movf LEDFrame,W
    movlb 0x0E
ram_bank = 14
    movwf HSVv
F1_003271 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1035
    movlb 0x00
ram_bank = 0
F1_003272 equ $ ; in [POLYGENCODE.BAS] GoSub HSV2RGB
    movlp ((HSV2RGB) >> 8)
    call HSV2RGB
ram_bank = 0
F1_003273 equ $ ; in [POLYGENCODE.BAS] Clear FrameTemp.LowByte
    movlb 0x0D
ram_bank = 13
    clrf FrameTemp
F1_003274 equ $ ; in [POLYGENCODE.BAS] FrameTemp.0=LEDFrame.3
    bsf FrameTemp,0
    btfss LEDFrame,3
    bcf FrameTemp,0
F1_003275 equ $ ; in [POLYGENCODE.BAS] FrameTemp.1=LEDFrame.4
    bsf FrameTemp,1
    btfss LEDFrame,4
    bcf FrameTemp,1
F1_003276 equ $ ; in [POLYGENCODE.BAS] Clear FrameTemp.HighByte
    clrf FrameTempH
F1_003277 equ $ ; in [POLYGENCODE.BAS] For C=0 To 50 Step 3
    clrf _C
_frlb__1036
ram_bank = 0
    movlw 51
    movlb 0x0D
ram_bank = 13
    subwf _C,W
    movlp ((_nxlb__1037) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _nxlb__1037
F1_003278 equ $ ; in [POLYGENCODE.BAS] if FrameTemp.LowByte=FrameTemp.HighByte Then
    movlb 0x0D
ram_bank = 13
    movf FrameTemp,W
    subwf FrameTempH,W
    movlp ((_lbl__1040) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1040
F1_003279 equ $ ; in [POLYGENCODE.BAS] LED1Data[C] =OutB
    movlb 0x0D
ram_bank = 13
    movf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutB,W
    movwf INDF0
F1_003280 equ $ ; in [POLYGENCODE.BAS] LED1Data[C+1] =OutR
    movlb 0x0D
ram_bank = 13
    incf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutR,W
    movwf INDF0
F1_003281 equ $ ; in [POLYGENCODE.BAS] LED1Data[C+2] =OutG
    movlw 2
    movlb 0x0D
ram_bank = 13
    addwf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutG,W
    movwf INDF0
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1041
_lbl__1040
F1_003282 equ $ ; in [POLYGENCODE.BAS] else
F1_003283 equ $ ; in [POLYGENCODE.BAS] Clear LED1Data[C]
    movlb 0x0D
ram_bank = 13
    movf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    clrf INDF0
F1_003284 equ $ ; in [POLYGENCODE.BAS] LED1Data[C+1] =0
    incf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    clrf INDF0
F1_003285 equ $ ; in [POLYGENCODE.BAS] LED1Data[C+2] =0
    movlw 2
    addwf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    clrf INDF0
F1_003286 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1041
ram_bank = 0
F1_003287 equ $ ; in [POLYGENCODE.BAS] Inc FrameTemp.HighByte
    movlb 0x0D
ram_bank = 13
    incf FrameTempH,F
F1_003288 equ $ ; in [POLYGENCODE.BAS] if FrameTemp.HighByte>3 Then Clear FrameTemp.HighByte
    movlw 4
    subwf FrameTempH,W
    movlp ((_lbl__1043) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _lbl__1043
    movlb 0x0D
ram_bank = 13
    clrf FrameTempH
_lbl__1043
ram_bank = 0
_ctlb__1038
F1_003289 equ $ ; in [POLYGENCODE.BAS] Next
    movlw 3
    movlb 0x0D
ram_bank = 13
    addwf _C,F
    movlp ((_frlb__1036) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _frlb__1036
_nxlb__1037
F1_003290 equ $ ; in [POLYGENCODE.BAS] if LEDFrame=0 Then Clear LEDActiveAnimation
    movlb 0x0D
ram_bank = 13
    movf LEDFrameH,W
    iorwf LEDFrame,W
    movlp ((_lbl__1045) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1045
    movlb 0x0D
ram_bank = 13
    clrf LEDActiveAnimation
_lbl__1045
ram_bank = 0
F1_003291 equ $ ; in [POLYGENCODE.BAS] LED1ByteCount=51
    movlb 0x0D
ram_bank = 13
    movlw 51
    movwf LED1ByteCount
F1_003292 equ $ ; in [POLYGENCODE.BAS] LED2ByteCount=36
    movlw 36
    movwf LED2ByteCount
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1020
_lbl__1021
F1_003293 equ $ ; in [POLYGENCODE.BAS] Case 2
    movlw 2
    movlb 0x0D
ram_bank = 13
    subwf LEDActiveAnimation,W
    movlp ((_lbl__1047) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1047
F1_003294 equ $ ; in [POLYGENCODE.BAS] if LEDFrame>63 Then
    movlb 0x0D
ram_bank = 13
    movf LEDFrameH,F
    btfss STATUS,2
    bra _cplb__96
    movlw 64
    subwf LEDFrame,W
    movlp ((_lbl__1049) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _lbl__1049
_cplb__96
ram_bank = 255
F1_003295 equ $ ; in [POLYGENCODE.BAS] GoSub WhiteLED1Flash
    movlb 0x00
ram_bank = 0
    movlp ((WhiteLED1Flash) >> 8)
    call WhiteLED1Flash
ram_bank = 0
F1_003296 equ $ ; in [POLYGENCODE.BAS] GoSub WhiteLED2Flash
    movlp ((WhiteLED2Flash) >> 8)
    call WhiteLED2Flash
ram_bank = 0
    _mjump _lbl__1050
_lbl__1049
F1_003297 equ $ ; in [POLYGENCODE.BAS] else
F1_003298 equ $ ; in [POLYGENCODE.BAS] if LEDFrame=0 Then LEDFrame=63
    movlb 0x0D
ram_bank = 13
    movf LEDFrameH,W
    iorwf LEDFrame,W
    movlp ((_lbl__1052) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1052
    movlb 0x0D
ram_bank = 13
    clrf LEDFrameH
    movlw 63
    movwf LEDFrame
_lbl__1052
ram_bank = 0
F1_003303 equ $ ; in [POLYGENCODE.BAS] Ftemp=LEDFrame.LowByte >> 4
    movlb 0x0D
ram_bank = 13
    swapf LEDFrame,W
    andlw 15
    movwf Ftemp
F1_003304 equ $ ; in [POLYGENCODE.BAS] FrameTemp.LowByte=Ftemp
    movf Ftemp,W
    movwf FrameTemp
F1_003305 equ $ ; in [POLYGENCODE.BAS] For C=0 To 50 Step 3
    clrf _C
_frlb__1053
ram_bank = 0
    movlw 51
    movlb 0x0D
ram_bank = 13
    subwf _C,W
    movlp ((_nxlb__1054) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _nxlb__1054
F1_003306 equ $ ; in [POLYGENCODE.BAS] if FrameTemp.LowByte=0 Then
    movlb 0x0D
ram_bank = 13
    movf FrameTemp,F
    movlp ((_lbl__1057) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1057
F1_003307 equ $ ; in [POLYGENCODE.BAS] LED1Data[C] =OutB
    movlb 0x0D
ram_bank = 13
    movf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutB,W
    movwf INDF0
F1_003308 equ $ ; in [POLYGENCODE.BAS] LED1Data[C+1] =OutR
    movlb 0x0D
ram_bank = 13
    incf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutR,W
    movwf INDF0
F1_003309 equ $ ; in [POLYGENCODE.BAS] LED1Data[C+2] =OutG
    movlw 2
    movlb 0x0D
ram_bank = 13
    addwf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutG,W
    movwf INDF0
F1_003310 equ $ ; in [POLYGENCODE.BAS] FrameTemp=4
    movlb 0x0D
ram_bank = 13
    clrf FrameTempH
    movlw 4
    movwf FrameTemp
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1058
_lbl__1057
F1_003311 equ $ ; in [POLYGENCODE.BAS] else
F1_003312 equ $ ; in [POLYGENCODE.BAS] Clear LED1Data[C]
    movlb 0x0D
ram_bank = 13
    movf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    clrf INDF0
F1_003313 equ $ ; in [POLYGENCODE.BAS] LED1Data[C+1] =0
    incf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    clrf INDF0
F1_003314 equ $ ; in [POLYGENCODE.BAS] LED1Data[C+2] =0
    movlw 2
    addwf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    clrf INDF0
F1_003315 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1058
ram_bank = 0
F1_003316 equ $ ; in [POLYGENCODE.BAS] Dec FrameTemp
    movlw 1
    movlb 0x0D
ram_bank = 13
    subwf FrameTemp,F
    movlw 0
    subwfb FrameTempH,F
_ctlb__1055
ram_bank = 0
F1_003317 equ $ ; in [POLYGENCODE.BAS] Next
    movlw 3
    movlb 0x0D
ram_bank = 13
    addwf _C,F
    movlp ((_frlb__1053) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _frlb__1053
_nxlb__1054
F1_003318 equ $ ; in [POLYGENCODE.BAS] FrameTemp=LEDFrame & 15
    movlw 15
    movlb 0x0D
ram_bank = 13
    andwf LEDFrame,W
    movwf FrameTemp
    movlw 0
    andwf LEDFrameH,W
    movwf FrameTempH
F1_003319 equ $ ; in [POLYGENCODE.BAS] if FrameTemp=0 Then
    movf FrameTempH,W
    iorwf FrameTemp,W
    movlp ((_lbl__1060) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1060
F1_003320 equ $ ; in [POLYGENCODE.BAS] For C=0 To 35 Step 3
    movlb 0x0D
ram_bank = 13
    clrf _C
_frlb__1061
ram_bank = 0
    movlw 36
    movlb 0x0D
ram_bank = 13
    subwf _C,W
    movlp ((_nxlb__1062) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _nxlb__1062
F1_003321 equ $ ; in [POLYGENCODE.BAS] FrameTemp=Random & 3
    movlp ((__random_) >> 8)
    call __random_
ram_bank = 0
    movwf PBS_VAR0
    movf PP_RNDH,W
    movwf PBS_VAR0H
    movlw 3
    andwf PBS_VAR0,W
    movlb 0x0D
ram_bank = 13
    movwf FrameTemp
    movlw 0
    movlb 0x00
ram_bank = 0
    andwf PBS_VAR0H,W
    movlb 0x0D
ram_bank = 13
    movwf FrameTempH
F1_003322 equ $ ; in [POLYGENCODE.BAS] if FrameTemp=1 Then
    decf FrameTemp,W
    iorwf FrameTempH,W
    movlp ((_lbl__1065) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1065
F1_003323 equ $ ; in [POLYGENCODE.BAS] LED2Data[C] =OutB
    movlb 0x0D
ram_bank = 13
    movf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutB,W
    movwf INDF0
F1_003324 equ $ ; in [POLYGENCODE.BAS] LED2Data[C+1] =OutR
    movlb 0x0D
ram_bank = 13
    incf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutR,W
    movwf INDF0
F1_003325 equ $ ; in [POLYGENCODE.BAS] LED2Data[C+2] =OutG
    movlw 2
    movlb 0x0D
ram_bank = 13
    addwf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutG,W
    movwf INDF0
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1064
F1_003326 equ $ ; in [POLYGENCODE.BAS] ElseIf FrameTemp=2 Then
_lbl__1065
    movlb 0x0D
ram_bank = 13
    movf FrameTemp,W
    xorlw 2
    iorwf FrameTempH,W
    movlp ((_lbl__1066) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1066
F1_003327 equ $ ; in [POLYGENCODE.BAS] LED2Data[C] =200
    movlb 0x0D
ram_bank = 13
    movf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlw 200
    movwf INDF0
F1_003328 equ $ ; in [POLYGENCODE.BAS] LED2Data[C+1] =200
    incf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlw 200
    movwf INDF0
F1_003329 equ $ ; in [POLYGENCODE.BAS] LED2Data[C+2] =200
    movlw 2
    addwf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlw 200
    movwf INDF0
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1067
_lbl__1066
F1_003330 equ $ ; in [POLYGENCODE.BAS] else
F1_003331 equ $ ; in [POLYGENCODE.BAS] Clear LED2Data[C]
    movlb 0x0D
ram_bank = 13
    movf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    clrf INDF0
F1_003332 equ $ ; in [POLYGENCODE.BAS] LED2Data[C+1] =0
    incf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    clrf INDF0
F1_003333 equ $ ; in [POLYGENCODE.BAS] LED2Data[C+2] =0
    movlw 2
    addwf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    clrf INDF0
F1_003334 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1067
ram_bank = 0
_lbl__1064
_ctlb__1063
F1_003335 equ $ ; in [POLYGENCODE.BAS] Next
    movlw 3
    movlb 0x0D
ram_bank = 13
    addwf _C,F
    movlp ((_frlb__1061) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _frlb__1061
_nxlb__1062
F1_003336 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1060
F1_003337 equ $ ; in [POLYGENCODE.BAS] LED1ByteCount=51
    movlb 0x0D
ram_bank = 13
    movlw 51
    movwf LED1ByteCount
F1_003338 equ $ ; in [POLYGENCODE.BAS] LED2ByteCount=36
    movlw 36
    movwf LED2ByteCount
F1_003339 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1050
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1020
_lbl__1047
F1_003340 equ $ ; in [POLYGENCODE.BAS] Case 3
    movlw 3
    movlb 0x0D
ram_bank = 13
    subwf LEDActiveAnimation,W
    movlp ((_lbl__1069) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1069
F1_003341 equ $ ; in [POLYGENCODE.BAS] if LEDFrame>512 Then
    movlw 2
    movlb 0x0D
ram_bank = 13
    subwf LEDFrameH,W
    movlp ((_lbl__1071) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _lbl__1071
    btfss STATUS,2
    bra _cplb__97
    movlw 1
    movlb 0x0D
ram_bank = 13
    subwf LEDFrame,W
    movlp ((_lbl__1071) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _lbl__1071
_cplb__97
ram_bank = 255
F1_003342 equ $ ; in [POLYGENCODE.BAS] GoSub WhiteLED1Flash
    movlb 0x00
ram_bank = 0
    movlp ((WhiteLED1Flash) >> 8)
    call WhiteLED1Flash
ram_bank = 0
F1_003343 equ $ ; in [POLYGENCODE.BAS] GoSub WhiteLED2Flash
    movlp ((WhiteLED2Flash) >> 8)
    call WhiteLED2Flash
ram_bank = 0
    _mjump _lbl__1072
_lbl__1071
F1_003344 equ $ ; in [POLYGENCODE.BAS] else
F1_003345 equ $ ; in [POLYGENCODE.BAS] if LEDFrame=0 Then LEDFrame=511
    movlb 0x0D
ram_bank = 13
    movf LEDFrameH,W
    iorwf LEDFrame,W
    movlp ((_lbl__1074) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1074
    movlb 0x0D
ram_bank = 13
    movlw 1
    movwf LEDFrameH
    movlw 255
    movwf LEDFrame
_lbl__1074
    movlb 0x00
ram_bank = 0
F1_003346 equ $ ; in [POLYGENCODE.BAS] GoSub LoadOwnerColour
    movlp ((LoadOwnerColour) >> 8)
    call LoadOwnerColour
ram_bank = 0
F1_003347 equ $ ; in [POLYGENCODE.BAS] GoSub HSV2RGB
    movlp ((HSV2RGB) >> 8)
    call HSV2RGB
ram_bank = 0
F1_003355 equ $ ; in [POLYGENCODE.BAS] FrameTemp=LEDFrame & %1111
    movlw 15
    movlb 0x0D
ram_bank = 13
    andwf LEDFrame,W
    movwf FrameTemp
    movlw 0
    andwf LEDFrameH,W
    movwf FrameTempH
F1_003356 equ $ ; in [POLYGENCODE.BAS] if FrameTemp=0 Then
    movf FrameTempH,W
    iorwf FrameTemp,W
    movlp ((_lbl__1076) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1076
F1_003359 equ $ ; in [POLYGENCODE.BAS] FrameTemp=LEDFrame & %01110000
    movlw 112
    movlb 0x0D
ram_bank = 13
    andwf LEDFrame,W
    movwf FrameTemp
    movlw 0
    andwf LEDFrameH,W
    movwf FrameTempH
F1_003360 equ $ ; in [POLYGENCODE.BAS] FrameTemp.LowByte=FrameTemp.LowByte >> 4
    swapf FrameTemp,W
    andlw 15
    movwf FrameTemp
F1_003361 equ $ ; in [POLYGENCODE.BAS] if LEDFrame.7=1 Then
    movlp ((_lbl__1078) >> 8)
    movf LEDFrame,W
    movlb 0x00
ram_bank = 0
    btfss WREG,7
    goto _lbl__1078
F1_003362 equ $ ; in [POLYGENCODE.BAS] FrameTemp.LowByte=7 - FrameTemp.LowByte
    movlb 0x0D
ram_bank = 13
    movf FrameTemp,W
    sublw 7
    movwf FrameTemp
F1_003363 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1078
    movlb 0x00
ram_bank = 0
F1_003364 equ $ ; in [POLYGENCODE.BAS] GoSub LED1PulseEffect
    movlp ((LED1PulseEffect) >> 8)
    call LED1PulseEffect
ram_bank = 0
F1_003365 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1076
F1_003367 equ $ ; in [POLYGENCODE.BAS] FrameTemp.LowByte=LEDFrame & %00111111
    movlw 63
    movlb 0x0D
ram_bank = 13
    andwf LEDFrame,W
    movwf FrameTemp
F1_003369 equ $ ; in [POLYGENCODE.BAS] if FrameTemp.LowByte=0 Then
    movf FrameTemp,F
    movlp ((_lbl__1080) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1080
F1_003370 equ $ ; in [POLYGENCODE.BAS] GoSub BlankAllLED2s
    movlp ((BlankAllLED2s) >> 8)
    call BlankAllLED2s
ram_bank = 0
F1_003371 equ $ ; in [POLYGENCODE.BAS] HSVv=250
    movlb 0x0E
ram_bank = 14
    movlw 250
    movwf HSVv
F1_003372 equ $ ; in [POLYGENCODE.BAS] GoSub HSV2RGB
    movlb 0x00
ram_bank = 0
    movlp ((HSV2RGB) >> 8)
    call HSV2RGB
ram_bank = 0
F1_003373 equ $ ; in [POLYGENCODE.BAS] LED2Data[FrameTemp2] =OutB
    movlb 0x0E
ram_bank = 14
    movf FrameTemp2,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movf OutB,W
    movwf INDF0
F1_003374 equ $ ; in [POLYGENCODE.BAS] LED2Data[FrameTemp2+18] =OutB
    movlw 18
    addwf FrameTemp2,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movf OutB,W
    movwf INDF0
F1_003375 equ $ ; in [POLYGENCODE.BAS] Inc FrameTemp2
    incf FrameTemp2,F
F1_003376 equ $ ; in [POLYGENCODE.BAS] LED2Data[FrameTemp2] =OutR
    movf FrameTemp2,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movf OutR,W
    movwf INDF0
F1_003377 equ $ ; in [POLYGENCODE.BAS] LED2Data[FrameTemp2+18] =OutR
    movlw 18
    addwf FrameTemp2,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movf OutR,W
    movwf INDF0
F1_003378 equ $ ; in [POLYGENCODE.BAS] Inc FrameTemp2
    incf FrameTemp2,F
F1_003379 equ $ ; in [POLYGENCODE.BAS] LED2Data[FrameTemp2] =OutG
    movf FrameTemp2,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movf OutG,W
    movwf INDF0
F1_003380 equ $ ; in [POLYGENCODE.BAS] LED2Data[FrameTemp2+18] =OutG
    movlw 18
    addwf FrameTemp2,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movf OutG,W
    movwf INDF0
F1_003381 equ $ ; in [POLYGENCODE.BAS] Inc FrameTemp2
    incf FrameTemp2,F
F1_003382 equ $ ; in [POLYGENCODE.BAS] if FrameTemp2>=18 Then Clear FrameTemp2
    movlw 18
    subwf FrameTemp2,W
    movlp ((_lbl__1082) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _lbl__1082
    movlb 0x0E
ram_bank = 14
    clrf FrameTemp2
_lbl__1082
ram_bank = 0
F1_003383 equ $ ; in [POLYGENCODE.BAS] LED2ByteCount=36
    movlb 0x0D
ram_bank = 13
    movlw 36
    movwf LED2ByteCount
F1_003384 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1080
    movlb 0x00
ram_bank = 0
F1_003385 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1072
    _mjump _lbl__1020
_lbl__1069
F1_003386 equ $ ; in [POLYGENCODE.BAS] Case 5
    movlw 5
    movlb 0x0D
ram_bank = 13
    subwf LEDActiveAnimation,W
    movlp ((_lbl__1084) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1084
F1_003388 equ $ ; in [POLYGENCODE.BAS] if LEDFrame=0 Then LEDFrame=511
    movlb 0x0D
ram_bank = 13
    movf LEDFrameH,W
    iorwf LEDFrame,W
    movlp ((_lbl__1086) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1086
    movlb 0x0D
ram_bank = 13
    movlw 1
    movwf LEDFrameH
    movlw 255
    movwf LEDFrame
_lbl__1086
ram_bank = 0
F1_003397 equ $ ; in [POLYGENCODE.BAS] FrameTemp=LEDFrame & %111
    movlw 7
    movlb 0x0D
ram_bank = 13
    andwf LEDFrame,W
    movwf FrameTemp
    movlw 0
    andwf LEDFrameH,W
    movwf FrameTempH
F1_003398 equ $ ; in [POLYGENCODE.BAS] if FrameTemp=0 Then
    movf FrameTempH,W
    iorwf FrameTemp,W
    movlp ((_lbl__1088) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1088
F1_003401 equ $ ; in [POLYGENCODE.BAS] FrameTemp=LEDFrame & %00111000
    movlw 56
    movlb 0x0D
ram_bank = 13
    andwf LEDFrame,W
    movwf FrameTemp
    movlw 0
    andwf LEDFrameH,W
    movwf FrameTempH
F1_003402 equ $ ; in [POLYGENCODE.BAS] FrameTemp.LowByte=FrameTemp.LowByte >> 3
    LSRF FrameTemp,F
    LSRF FrameTemp,F
    LSRF FrameTemp,F
F1_003403 equ $ ; in [POLYGENCODE.BAS] if LEDFrame.6=1 Then
    movlp ((_lbl__1090) >> 8)
    movf LEDFrame,W
    movlb 0x00
ram_bank = 0
    btfss WREG,6
    goto _lbl__1090
F1_003404 equ $ ; in [POLYGENCODE.BAS] FrameTemp.LowByte=7 - FrameTemp.LowByte
    movlb 0x0D
ram_bank = 13
    movf FrameTemp,W
    sublw 7
    movwf FrameTemp
F1_003405 equ $ ; in [POLYGENCODE.BAS] HSVh=TeamColourHue[discs_NewTeam]
    movlb 0x06
ram_bank = 6
    lslf discs_NewTeam,W
    movwf FSR0L
    clrf FSR0H
    rlf FSR0H,F
    movlw 0x23
    addwf FSR0L,F
    movlw 0x24
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x0E
ram_bank = 14
    movwf HSVh
    moviw ++INDF0
    movwf HSVhH
F1_003406 equ $ ; in [POLYGENCODE.BAS] HSVs=255
    movlw 255
    movwf HSVs
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1091
_lbl__1090
F1_003407 equ $ ; in [POLYGENCODE.BAS] else
F1_003408 equ $ ; in [POLYGENCODE.BAS] GoSub LoadOwnerColour
    movlp ((LoadOwnerColour) >> 8)
    call LoadOwnerColour
ram_bank = 0
F1_003409 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1091
F1_003410 equ $ ; in [POLYGENCODE.BAS] GoSub HSV2RGB
    movlp ((HSV2RGB) >> 8)
    call HSV2RGB
ram_bank = 0
F1_003411 equ $ ; in [POLYGENCODE.BAS] GoSub LED1PulseEffect
    movlp ((LED1PulseEffect) >> 8)
    call LED1PulseEffect
ram_bank = 0
F1_003413 equ $ ; in [POLYGENCODE.BAS] GoSub BlankAllLED2s
    movlp ((BlankAllLED2s) >> 8)
    call BlankAllLED2s
ram_bank = 0
F1_003414 equ $ ; in [POLYGENCODE.BAS] FrameTemp=Random
    movlp ((__random_) >> 8)
    call __random_
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movwf FrameTemp
    movlb 0x00
ram_bank = 0
    movf PP_RNDH,W
    movlb 0x0D
ram_bank = 13
    movwf FrameTempH
F1_003415 equ $ ; in [POLYGENCODE.BAS] For C=0 To 35 Step 3
    clrf _C
_frlb__1092
ram_bank = 0
    movlw 36
    movlb 0x0D
ram_bank = 13
    subwf _C,W
    movlp ((_nxlb__1093) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _nxlb__1093
F1_003416 equ $ ; in [POLYGENCODE.BAS] if FrameTemp.0=1 Then
    movlp ((_lbl__1096) >> 8)
    movlb 0x0D
ram_bank = 13
    movf FrameTemp,W
    movlb 0x00
ram_bank = 0
    btfss WREG,0
    goto _lbl__1096
F1_003417 equ $ ; in [POLYGENCODE.BAS] GoSub LoadOwnerColour
    movlp ((LoadOwnerColour) >> 8)
    call LoadOwnerColour
ram_bank = 0
    _mjump _lbl__1097
_lbl__1096
F1_003418 equ $ ; in [POLYGENCODE.BAS] else
F1_003419 equ $ ; in [POLYGENCODE.BAS] HSVh=TeamColourHue[discs_NewTeam]
    movlb 0x06
ram_bank = 6
    lslf discs_NewTeam,W
    movwf FSR0L
    clrf FSR0H
    rlf FSR0H,F
    movlw 0x23
    addwf FSR0L,F
    movlw 0x24
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x0E
ram_bank = 14
    movwf HSVh
    moviw ++INDF0
    movwf HSVhH
F1_003420 equ $ ; in [POLYGENCODE.BAS] HSVs=255
    movlw 255
    movwf HSVs
F1_003421 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1097
    movlb 0x00
ram_bank = 0
F1_003422 equ $ ; in [POLYGENCODE.BAS] HSVv=Random
    movlp ((__random_) >> 8)
    call __random_
ram_bank = 0
    movlb 0x0E
ram_bank = 14
    movwf HSVv
F1_003423 equ $ ; in [POLYGENCODE.BAS] GoSub HSV2RGB
    movlb 0x00
ram_bank = 0
    movlp ((HSV2RGB) >> 8)
    call HSV2RGB
ram_bank = 0
F1_003424 equ $ ; in [POLYGENCODE.BAS] LED2Data[C] =OutB
    movlb 0x0D
ram_bank = 13
    movf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutB,W
    movwf INDF0
F1_003425 equ $ ; in [POLYGENCODE.BAS] LED2Data[C+1] =OutR
    movlb 0x0D
ram_bank = 13
    incf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutR,W
    movwf INDF0
F1_003426 equ $ ; in [POLYGENCODE.BAS] LED2Data[C+2] =OutG
    movlw 2
    movlb 0x0D
ram_bank = 13
    addwf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutG,W
    movwf INDF0
_ctlb__1094
ram_bank = 0
F1_003427 equ $ ; in [POLYGENCODE.BAS] Next
    movlw 3
    movlb 0x0D
ram_bank = 13
    addwf _C,F
    movlp ((_frlb__1092) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _frlb__1092
_nxlb__1093
F1_003428 equ $ ; in [POLYGENCODE.BAS] LED2ByteCount=36
    movlb 0x0D
ram_bank = 13
    movlw 36
    movwf LED2ByteCount
F1_003429 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1088
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1020
_lbl__1084
F1_003431 equ $ ; in [POLYGENCODE.BAS] Case 6
    movlw 6
    movlb 0x0D
ram_bank = 13
    subwf LEDActiveAnimation,W
    movlp ((_lbl__1099) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1099
F1_003432 equ $ ; in [POLYGENCODE.BAS] Clear FillAllFlagged
    bcf _B__VR5,3
F1_003433 equ $ ; in [POLYGENCODE.BAS] Select LEDFrame
F1_003434 equ $ ; in [POLYGENCODE.BAS] Case 65 To 128
    movlb 0x0D
ram_bank = 13
    movf LEDFrameH,F
    btfss STATUS,2
    bra _cplb__98
    movlw 65
    subwf LEDFrame,W
    movlp ((_lbl__1101) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _lbl__1101
_cplb__98
ram_bank = 255
    movlb 0x0D
ram_bank = 13
    movf LEDFrameH,F
    movlp ((_lbl__1101) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1101
    movlw 129
    movlb 0x0D
ram_bank = 13
    subwf LEDFrame,W
    movlp ((_lbl__1101) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__1101
F1_003435 equ $ ; in [POLYGENCODE.BAS] if (LEDFrame & %00001111) = 0 Then
    movlw 15
    movlb 0x0D
ram_bank = 13
    andwf LEDFrame,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR0
    movlw 0
    movlb 0x0D
ram_bank = 13
    andwf LEDFrameH,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR0H
    movf PBS_VAR0H,W
    iorwf PBS_VAR0,W
    movlp ((_lbl__1104) >> 8)
    btfss STATUS,2
    goto _lbl__1104
F1_003436 equ $ ; in [POLYGENCODE.BAS] Set FillAllFlagged
    bsf _B__VR5,3
F1_003437 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1104
    _mjump _lbl__1100
_lbl__1101
F1_003438 equ $ ; in [POLYGENCODE.BAS] Case 129 To 192
    movlb 0x0D
ram_bank = 13
    movf LEDFrameH,F
    btfss STATUS,2
    bra _cplb__99
    movlw 129
    subwf LEDFrame,W
    movlp ((_lbl__1106) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _lbl__1106
_cplb__99
ram_bank = 255
    movlb 0x0D
ram_bank = 13
    movf LEDFrameH,F
    movlp ((_lbl__1106) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1106
    movlw 193
    movlb 0x0D
ram_bank = 13
    subwf LEDFrame,W
    movlp ((_lbl__1106) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__1106
F1_003439 equ $ ; in [POLYGENCODE.BAS] if (LEDFrame & %00000111) =0  Then
    movlw 7
    movlb 0x0D
ram_bank = 13
    andwf LEDFrame,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR0
    movlw 0
    movlb 0x0D
ram_bank = 13
    andwf LEDFrameH,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR0H
    movf PBS_VAR0H,W
    iorwf PBS_VAR0,W
    movlp ((_lbl__1108) >> 8)
    btfss STATUS,2
    goto _lbl__1108
F1_003440 equ $ ; in [POLYGENCODE.BAS] Set FillAllFlagged
    bsf _B__VR5,3
F1_003441 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1108
    _mjump _lbl__1100
_lbl__1106
F1_003442 equ $ ; in [POLYGENCODE.BAS] Case 193 To 322
    movlb 0x0D
ram_bank = 13
    movf LEDFrameH,F
    btfss STATUS,2
    bra _cplb__100
    movlw 193
    subwf LEDFrame,W
    movlp ((_lbl__1110) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _lbl__1110
_cplb__100
ram_bank = 255
    movlw 1
    movlb 0x0D
ram_bank = 13
    subwf LEDFrameH,W
    movlp ((_cplb__101) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _cplb__101
    movlp ((_lbl__1110) >> 8)
    btfss STATUS,2
    goto _lbl__1110
    movlw 67
    movlb 0x0D
ram_bank = 13
    subwf LEDFrame,W
    movlp ((_lbl__1110) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__1110
_cplb__101
ram_bank = 255
F1_003443 equ $ ; in [POLYGENCODE.BAS] if (LEDFrame & %00000011) = 0 Then
    movlw 3
    movlb 0x0D
ram_bank = 13
    andwf LEDFrame,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR0
    movlw 0
    movlb 0x0D
ram_bank = 13
    andwf LEDFrameH,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR0H
    movf PBS_VAR0H,W
    iorwf PBS_VAR0,W
    movlp ((_lbl__1112) >> 8)
    btfss STATUS,2
    goto _lbl__1112
F1_003444 equ $ ; in [POLYGENCODE.BAS] Set FillAllFlagged
    bsf _B__VR5,3
F1_003445 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1112
    _mjump _lbl__1100
_lbl__1110
F1_003446 equ $ ; in [POLYGENCODE.BAS] Case 321 To 488
    movlw 1
    movlb 0x0D
ram_bank = 13
    subwf LEDFrameH,W
    movlp ((_lbl__1114) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _lbl__1114
    btfss STATUS,2
    bra _cplb__102
    movlw 65
    movlb 0x0D
ram_bank = 13
    subwf LEDFrame,W
    movlp ((_lbl__1114) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _lbl__1114
_cplb__102
ram_bank = 255
    movlw 1
    movlb 0x0D
ram_bank = 13
    subwf LEDFrameH,W
    movlp ((_cplb__103) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _cplb__103
    movlp ((_lbl__1114) >> 8)
    btfss STATUS,2
    goto _lbl__1114
    movlw 233
    movlb 0x0D
ram_bank = 13
    subwf LEDFrame,W
    movlp ((_lbl__1114) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__1114
_cplb__103
ram_bank = 255
F1_003447 equ $ ; in [POLYGENCODE.BAS] if LEDFrame.0=1 Then
    movlp ((_lbl__1116) >> 8)
    movlb 0x0D
ram_bank = 13
    movf LEDFrame,W
    movlb 0x00
ram_bank = 0
    btfss WREG,0
    goto _lbl__1116
F1_003448 equ $ ; in [POLYGENCODE.BAS] Set FillAllFlagged
    bsf _B__VR5,3
F1_003449 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1116
F1_003450 equ $ ; in [POLYGENCODE.BAS] Case else
    _mjump _lbl__1118
_lbl__1114
F1_003451 equ $ ; in [POLYGENCODE.BAS] GoSub BlankAllLED1s
    movlp ((BlankAllLED1s) >> 8)
    call BlankAllLED1s
ram_bank = 0
F1_003452 equ $ ; in [POLYGENCODE.BAS] LED1ByteCount=51
    movlb 0x0D
ram_bank = 13
    movlw 51
    movwf LED1ByteCount
F1_003453 equ $ ; in [POLYGENCODE.BAS] EndSelect
_lbl__1118
    movlb 0x00
ram_bank = 0
_lbl__1100
F1_003454 equ $ ; in [POLYGENCODE.BAS] if FillAllFlagged=1 Then
    movlp ((_lbl__1120) >> 8)
    btfss _B__VR5,3
    goto _lbl__1120
F1_003455 equ $ ; in [POLYGENCODE.BAS] if HSVv<2 Then HSVv=2
    movlw 2
    movlb 0x0E
ram_bank = 14
    subwf HSVv,W
    movlp ((_lbl__1122) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__1122
    movlb 0x0E
ram_bank = 14
    movlw 2
    movwf HSVv
_lbl__1122
ram_bank = 0
F1_003456 equ $ ; in [POLYGENCODE.BAS] Dec HSVv
    movlb 0x0E
ram_bank = 14
    decf HSVv,F
F1_003457 equ $ ; in [POLYGENCODE.BAS] Dec HSVv
    decf HSVv,F
F1_003458 equ $ ; in [POLYGENCODE.BAS] GoSub HSV2RGB
    movlb 0x00
ram_bank = 0
    movlp ((HSV2RGB) >> 8)
    call HSV2RGB
ram_bank = 0
F1_003459 equ $ ; in [POLYGENCODE.BAS] GoSub LoadAllLED1s
    movlp ((LoadAllLED1s) >> 8)
    call LoadAllLED1s
ram_bank = 0
F1_003460 equ $ ; in [POLYGENCODE.BAS] LED1ByteCount=51
    movlb 0x0D
ram_bank = 13
    movlw 51
    movwf LED1ByteCount
F1_003461 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1120
ram_bank = 0
F1_003462 equ $ ; in [POLYGENCODE.BAS] if (LEDFrame & %00000111)=0 Then
    movlw 7
    movlb 0x0D
ram_bank = 13
    andwf LEDFrame,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR0
    movlw 0
    movlb 0x0D
ram_bank = 13
    andwf LEDFrameH,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR0H
    movf PBS_VAR0H,W
    iorwf PBS_VAR0,W
    movlp ((_lbl__1124) >> 8)
    btfss STATUS,2
    goto _lbl__1124
F1_003463 equ $ ; in [POLYGENCODE.BAS] LED2ByteCount=36
    movlb 0x0D
ram_bank = 13
    movlw 36
    movwf LED2ByteCount
F1_003464 equ $ ; in [POLYGENCODE.BAS] FrameTemp=Random
    movlb 0x00
ram_bank = 0
    movlp ((__random_) >> 8)
    call __random_
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movwf FrameTemp
    movlb 0x00
ram_bank = 0
    movf PP_RNDH,W
    movlb 0x0D
ram_bank = 13
    movwf FrameTempH
F1_003465 equ $ ; in [POLYGENCODE.BAS] While FrameTemp.HighByte > 11
_lbl__1125
ram_bank = 0
    movlw 12
    movlb 0x0D
ram_bank = 13
    subwf FrameTempH,W
    movlp ((_lbl__1126) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _lbl__1126
F1_003466 equ $ ; in [POLYGENCODE.BAS] FrameTemp.HighByte=FrameTemp.HighByte - 12
    movlw 12
    movlb 0x0D
ram_bank = 13
    subwf FrameTempH,F
F1_003467 equ $ ; in [POLYGENCODE.BAS] Wend
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1125
_lbl__1126
F1_003468 equ $ ; in [POLYGENCODE.BAS] While FrameTemp.LowByte > 11
_lbl__1127
    movlw 12
    movlb 0x0D
ram_bank = 13
    subwf FrameTemp,W
    movlp ((_lbl__1128) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _lbl__1128
F1_003469 equ $ ; in [POLYGENCODE.BAS] FrameTemp.LowByte=FrameTemp.LowByte - 12
    movlw 12
    movlb 0x0D
ram_bank = 13
    subwf FrameTemp,F
F1_003470 equ $ ; in [POLYGENCODE.BAS] Wend
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1127
_lbl__1128
F1_003471 equ $ ; in [POLYGENCODE.BAS] FrameTemp.LowByte=FrameTemp.LowByte * 3
    movlb 0x0D
ram_bank = 13
    lslf FrameTemp,W
    addwf FrameTemp,F
F1_003472 equ $ ; in [POLYGENCODE.BAS] FrameTemp.HighByte=FrameTemp.HighByte * 3
    lslf FrameTempH,W
    addwf FrameTempH,F
F1_003473 equ $ ; in [POLYGENCODE.BAS] For C=0 To 35 Step 3
    clrf _C
_frlb__1129
ram_bank = 0
    movlw 36
    movlb 0x0D
ram_bank = 13
    subwf _C,W
    movlp ((_nxlb__1130) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _nxlb__1130
F1_003474 equ $ ; in [POLYGENCODE.BAS] if C=FrameTemp.HighByte Or C=FrameTemp.LowByte Then
    movlb 0x0D
ram_bank = 13
    movf _C,W
    subwf FrameTempH,W
    btfsc STATUS,2
    movlw 1
    btfss STATUS,2
    movlw 0
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlb 0x0D
ram_bank = 13
    movf _C,W
    subwf FrameTemp,W
    btfsc STATUS,2
    movlw 1
    btfss STATUS,2
    movlw 0
    movlb 0x00
ram_bank = 0
    iorwf SP__P9_,F
    movlp ((_lbl__1133) >> 8)
    btfsc STATUS,2
    goto _lbl__1133
F1_003475 equ $ ; in [POLYGENCODE.BAS] LED2Data[C] =255
    movlb 0x0D
ram_bank = 13
    movf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlw 255
    movwf INDF0
F1_003476 equ $ ; in [POLYGENCODE.BAS] LED2Data[C+1] =255
    incf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlw 255
    movwf INDF0
F1_003477 equ $ ; in [POLYGENCODE.BAS] LED2Data[C+2] =255
    movlw 2
    addwf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlw 255
    movwf INDF0
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1134
_lbl__1133
F1_003478 equ $ ; in [POLYGENCODE.BAS] else
F1_003479 equ $ ; in [POLYGENCODE.BAS] LED2Data[C] =AnimationTempB
    movlb 0x0D
ram_bank = 13
    movf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf AnimationTempB,W
    movwf INDF0
F1_003480 equ $ ; in [POLYGENCODE.BAS] LED2Data[C+1] =AnimationTempR
    movlb 0x0D
ram_bank = 13
    incf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf AnimationTempR,W
    movwf INDF0
F1_003481 equ $ ; in [POLYGENCODE.BAS] LED2Data[C+2] =AnimationTempG
    movlw 2
    movlb 0x0D
ram_bank = 13
    addwf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf AnimationTempG,W
    movwf INDF0
F1_003482 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1134
ram_bank = 0
_ctlb__1131
F1_003483 equ $ ; in [POLYGENCODE.BAS] Next
    movlw 3
    movlb 0x0D
ram_bank = 13
    addwf _C,F
    movlp ((_frlb__1129) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _frlb__1129
_nxlb__1130
F1_003484 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1124
F1_003485 equ $ ; in [POLYGENCODE.BAS] if LEDFrame=0 Then LEDFrame=64
    movlb 0x0D
ram_bank = 13
    movf LEDFrameH,W
    iorwf LEDFrame,W
    movlp ((_lbl__1136) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1136
    movlb 0x0D
ram_bank = 13
    clrf LEDFrameH
    movlw 64
    movwf LEDFrame
_lbl__1136
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1020
_lbl__1099
F1_003486 equ $ ; in [POLYGENCODE.BAS] Case 7
    movlw 7
    movlb 0x0D
ram_bank = 13
    subwf LEDActiveAnimation,W
    movlp ((_lbl__1138) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1138
F1_003487 equ $ ; in [POLYGENCODE.BAS] if LEDFrame=0 Then
    movlb 0x0D
ram_bank = 13
    movf LEDFrameH,W
    iorwf LEDFrame,W
    movlp ((_lbl__1140) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1140
F1_003488 equ $ ; in [POLYGENCODE.BAS] FrameTemp=TotalTeams
    movlb 0x0D
ram_bank = 13
    clrf FrameTempH
    movf TotalTeams,W
    movwf FrameTemp
F1_003489 equ $ ; in [POLYGENCODE.BAS] LEDFrame=FrameTemp<<5
    rlf FrameTemp,W
    movwf LEDFrame
    rlf FrameTempH,W
    movwf LEDFrameH
    rlf LEDFrame,F
    rlf LEDFrameH,F
    rlf LEDFrame,F
    rlf LEDFrameH,F
    rlf LEDFrame,F
    rlf LEDFrameH,F
    rlf LEDFrame,F
    rlf LEDFrameH,F
    movlw 224
    andwf LEDFrame,F
F1_003490 equ $ ; in [POLYGENCODE.BAS] Dec LEDFrame
    movlw 1
    subwf LEDFrame,F
    movlw 0
    subwfb LEDFrameH,F
F1_003491 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1140
ram_bank = 0
F1_003492 equ $ ; in [POLYGENCODE.BAS] FrameTemp=LEDFrame>>5
    movlb 0x0D
ram_bank = 13
    rrf LEDFrameH,W
    movwf FrameTempH
    rrf LEDFrame,W
    movwf FrameTemp
    rrf FrameTempH,F
    rrf FrameTemp,F
    rrf FrameTempH,F
    rrf FrameTemp,F
    rrf FrameTempH,F
    rrf FrameTemp,F
    rrf FrameTempH,F
    rrf FrameTemp,F
    movlw 7
    andwf FrameTempH,F
F1_003493 equ $ ; in [POLYGENCODE.BAS] Inc FrameTemp.LowByte
    incf FrameTemp,F
F1_003494 equ $ ; in [POLYGENCODE.BAS] HSVs=255
    movlb 0x0E
ram_bank = 14
    movlw 255
    movwf HSVs
F1_003495 equ $ ; in [POLYGENCODE.BAS] HSVv=180
    movlw 180
    movwf HSVv
F1_003496 equ $ ; in [POLYGENCODE.BAS] if FrameTemp.LowByte>TotalTeams Then FrameTemp.LowByte=TotalTeams
    movlb 0x0D
ram_bank = 13
    movf FrameTemp,W
    subwf TotalTeams,W
    movlp ((_lbl__1142) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__1142
    movlb 0x0D
ram_bank = 13
    movf TotalTeams,W
    movwf FrameTemp
_lbl__1142
ram_bank = 0
F1_003497 equ $ ; in [POLYGENCODE.BAS] For C=0 To 50 Step 3
    movlb 0x0D
ram_bank = 13
    clrf _C
_frlb__1143
ram_bank = 0
    movlw 51
    movlb 0x0D
ram_bank = 13
    subwf _C,W
    movlp ((_nxlb__1144) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _nxlb__1144
F1_003498 equ $ ; in [POLYGENCODE.BAS] HSVh=TeamColourHue[FrameTemp.LowByte]
    movlb 0x0D
ram_bank = 13
    lslf FrameTemp,W
    movwf FSR0L
    clrf FSR0H
    rlf FSR0H,F
    movlw 0x23
    addwf FSR0L,F
    movlw 0x24
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x0E
ram_bank = 14
    movwf HSVh
    moviw ++INDF0
    movwf HSVhH
F1_003499 equ $ ; in [POLYGENCODE.BAS] GoSub HSV2RGB
    movlb 0x00
ram_bank = 0
    movlp ((HSV2RGB) >> 8)
    call HSV2RGB
ram_bank = 0
F1_003500 equ $ ; in [POLYGENCODE.BAS] LED1Data[C] =OutB
    movlb 0x0D
ram_bank = 13
    movf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutB,W
    movwf INDF0
F1_003501 equ $ ; in [POLYGENCODE.BAS] LED1Data[C+1] =OutR
    movlb 0x0D
ram_bank = 13
    incf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutR,W
    movwf INDF0
F1_003502 equ $ ; in [POLYGENCODE.BAS] LED1Data[C+2] =OutG
    movlw 2
    movlb 0x0D
ram_bank = 13
    addwf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutG,W
    movwf INDF0
F1_003503 equ $ ; in [POLYGENCODE.BAS] if C<36 Then
    movlw 36
    movlb 0x0D
ram_bank = 13
    subwf _C,W
    movlp ((_lbl__1147) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__1147
F1_003504 equ $ ; in [POLYGENCODE.BAS] LED2Data[C] =OutB
    movlb 0x0D
ram_bank = 13
    movf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutB,W
    movwf INDF0
F1_003505 equ $ ; in [POLYGENCODE.BAS] LED2Data[C+1] =OutR
    movlb 0x0D
ram_bank = 13
    incf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutR,W
    movwf INDF0
F1_003506 equ $ ; in [POLYGENCODE.BAS] LED2Data[C+2] =OutG
    movlw 2
    movlb 0x0D
ram_bank = 13
    addwf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutG,W
    movwf INDF0
F1_003507 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1147
ram_bank = 0
F1_003508 equ $ ; in [POLYGENCODE.BAS] Dec FrameTemp.LowByte
    movlb 0x0D
ram_bank = 13
    decf FrameTemp,F
F1_003509 equ $ ; in [POLYGENCODE.BAS] if FrameTemp.LowByte=0 Then FrameTemp.LowByte=TotalTeams
    movf FrameTemp,F
    movlp ((_lbl__1149) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1149
    movlb 0x0D
ram_bank = 13
    movf TotalTeams,W
    movwf FrameTemp
_lbl__1149
ram_bank = 0
_ctlb__1145
F1_003510 equ $ ; in [POLYGENCODE.BAS] Next
    movlw 3
    movlb 0x0D
ram_bank = 13
    addwf _C,F
    movlp ((_frlb__1143) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _frlb__1143
_nxlb__1144
F1_003511 equ $ ; in [POLYGENCODE.BAS] LED1ByteCount=51
    movlb 0x0D
ram_bank = 13
    movlw 51
    movwf LED1ByteCount
F1_003512 equ $ ; in [POLYGENCODE.BAS] LED2ByteCount=36
    movlw 36
    movwf LED2ByteCount
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1020
_lbl__1138
F1_003513 equ $ ; in [POLYGENCODE.BAS] Case 8
    movlw 8
    movlb 0x0D
ram_bank = 13
    subwf LEDActiveAnimation,W
    movlp ((_lbl__1151) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1151
F1_003514 equ $ ; in [POLYGENCODE.BAS] if LEDFrame=0 Then LEDFrame=200
    movlb 0x0D
ram_bank = 13
    movf LEDFrameH,W
    iorwf LEDFrame,W
    movlp ((_lbl__1153) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1153
    movlb 0x0D
ram_bank = 13
    clrf LEDFrameH
    movlw 200
    movwf LEDFrame
_lbl__1153
ram_bank = 0
F1_003515 equ $ ; in [POLYGENCODE.BAS] HSVv=LEDFrame.LowByte
    movlb 0x0D
ram_bank = 13
    movf LEDFrame,W
    movlb 0x0E
ram_bank = 14
    movwf HSVv
F1_003516 equ $ ; in [POLYGENCODE.BAS] if NDEFStage>0 And NDEFStage<100 Then
    movf NDEFStage,F
    movlp ((_cplb__104) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _cplb__104
    clrw
    btfss STATUS,2
_cplb__104
    movlw 1
    movwf SP__P9_
    movlw 100
    movlb 0x0E
ram_bank = 14
    subwf NDEFStage,W
    movlw 1
    btfsc STATUS,0
    movlw 0
    movlb 0x00
ram_bank = 0
    andwf SP__P9_,F
    movlp ((_lbl__1155) >> 8)
    btfsc STATUS,2
    goto _lbl__1155
F1_003517 equ $ ; in [POLYGENCODE.BAS] OutB=255
    movlb 0x0E
ram_bank = 14
    movlw 255
    movwf OutB
F1_003518 equ $ ; in [POLYGENCODE.BAS] Clear OutG
    clrf OutG
F1_003519 equ $ ; in [POLYGENCODE.BAS] Clear OutR
    clrf OutR
F1_003520 equ $ ; in [POLYGENCODE.BAS] GoSub LoadAllLED2s
    movlb 0x00
ram_bank = 0
    movlp ((LoadAllLED2s) >> 8)
    call LoadAllLED2s
ram_bank = 0
F1_003521 equ $ ; in [POLYGENCODE.BAS] GoSub LoadAllLED1s
    movlp ((LoadAllLED1s) >> 8)
    call LoadAllLED1s
ram_bank = 0
F1_003522 equ $ ; in [POLYGENCODE.BAS] if NDEFStage=10 Then
    movlw 10
    movlb 0x0E
ram_bank = 14
    subwf NDEFStage,W
    movlp ((_lbl__1157) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1157
F1_003523 equ $ ; in [POLYGENCODE.BAS] Clear OutB
    movlb 0x0E
ram_bank = 14
    clrf OutB
F1_003524 equ $ ; in [POLYGENCODE.BAS] OutG=255
    movlw 255
    movwf OutG
F1_003525 equ $ ; in [POLYGENCODE.BAS] C=(ConfigEntryCount)*3
    lslf ConfigEntryCount,W
    addwf ConfigEntryCount,W
    movlb 0x0D
ram_bank = 13
    movwf _C
F1_003526 equ $ ; in [POLYGENCODE.BAS] While C>0
_lbl__1158
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movf _C,F
    movlp ((_lbl__1159) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__1159
F1_003527 equ $ ; in [POLYGENCODE.BAS] Dec C
    movlb 0x0D
ram_bank = 13
    decf _C,F
F1_003528 equ $ ; in [POLYGENCODE.BAS] LED2Data[C] =OutG
    movf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutG,W
    movwf INDF0
F1_003529 equ $ ; in [POLYGENCODE.BAS] LED1Data[C] =OutG
    movlb 0x0D
ram_bank = 13
    movf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutG,W
    movwf INDF0
F1_003530 equ $ ; in [POLYGENCODE.BAS] Dec C
    movlb 0x0D
ram_bank = 13
    decf _C,F
F1_003531 equ $ ; in [POLYGENCODE.BAS] LED2Data[C] =OutR
    movf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutR,W
    movwf INDF0
F1_003532 equ $ ; in [POLYGENCODE.BAS] LED1Data[C] =OutR
    movlb 0x0D
ram_bank = 13
    movf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutR,W
    movwf INDF0
F1_003533 equ $ ; in [POLYGENCODE.BAS] Dec C
    movlb 0x0D
ram_bank = 13
    decf _C,F
F1_003534 equ $ ; in [POLYGENCODE.BAS] LED2Data[C] =OutB
    movf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutB,W
    movwf INDF0
F1_003535 equ $ ; in [POLYGENCODE.BAS] LED1Data[C] =OutB
    movlb 0x0D
ram_bank = 13
    movf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutB,W
    movwf INDF0
F1_003536 equ $ ; in [POLYGENCODE.BAS] Wend
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1158
_lbl__1159
F1_003537 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1157
    _mjump _lbl__1160
_lbl__1155
F1_003538 equ $ ; in [POLYGENCODE.BAS] else
F1_003539 equ $ ; in [POLYGENCODE.BAS] HSVh=cmdMenu << 6
    movlb 0x0D
ram_bank = 13
    movf cmdMenu,W
    movlb 0x0E
ram_bank = 14
    movwf HSVhH
    clrf HSVh
    bcf STATUS,0
    rrf HSVhH,F
    rrf HSVh,F
    rrf HSVhH,F
    rrf HSVh,F
F1_003540 equ $ ; in [POLYGENCODE.BAS] HSVs=255
    movlw 255
    movwf HSVs
F1_003541 equ $ ; in [POLYGENCODE.BAS] GoSub HSV2RGB
    movlb 0x00
ram_bank = 0
    movlp ((HSV2RGB) >> 8)
    call HSV2RGB
ram_bank = 0
F1_003542 equ $ ; in [POLYGENCODE.BAS] GoSub BlankAllLED2s
    movlp ((BlankAllLED2s) >> 8)
    call BlankAllLED2s
ram_bank = 0
F1_003543 equ $ ; in [POLYGENCODE.BAS] C=(cmdMenu+1) * 3
    movlw 1
    movlb 0x0D
ram_bank = 13
    addwf cmdMenu,W
    movlb 0x00
ram_bank = 0
    movwf PP7
    clrf PP7H
    rlf PP7H,F
    lslf PP7,W
    addwf PP7,W
    movlb 0x0D
ram_bank = 13
    movwf _C
F1_003544 equ $ ; in [POLYGENCODE.BAS] While C>0
_lbl__1161
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movf _C,F
    movlp ((_lbl__1162) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__1162
F1_003545 equ $ ; in [POLYGENCODE.BAS] Dec C
    movlb 0x0D
ram_bank = 13
    decf _C,F
F1_003546 equ $ ; in [POLYGENCODE.BAS] LED2Data[C] =OutG
    movf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutG,W
    movwf INDF0
F1_003547 equ $ ; in [POLYGENCODE.BAS] LED1Data[C] =OutG
    movlb 0x0D
ram_bank = 13
    movf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutG,W
    movwf INDF0
F1_003548 equ $ ; in [POLYGENCODE.BAS] Dec C
    movlb 0x0D
ram_bank = 13
    decf _C,F
F1_003549 equ $ ; in [POLYGENCODE.BAS] LED2Data[C] =OutR
    movf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutR,W
    movwf INDF0
F1_003550 equ $ ; in [POLYGENCODE.BAS] LED1Data[C] =OutR
    movlb 0x0D
ram_bank = 13
    movf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutR,W
    movwf INDF0
F1_003551 equ $ ; in [POLYGENCODE.BAS] Dec C
    movlb 0x0D
ram_bank = 13
    decf _C,F
F1_003552 equ $ ; in [POLYGENCODE.BAS] LED2Data[C] =OutB
    movf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutB,W
    movwf INDF0
F1_003553 equ $ ; in [POLYGENCODE.BAS] LED1Data[C] =OutB
    movlb 0x0D
ram_bank = 13
    movf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutB,W
    movwf INDF0
F1_003554 equ $ ; in [POLYGENCODE.BAS] Wend
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1161
_lbl__1162
F1_003555 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1160
F1_003556 equ $ ; in [POLYGENCODE.BAS] LED2ByteCount=36
    movlb 0x0D
ram_bank = 13
    movlw 36
    movwf LED2ByteCount
F1_003557 equ $ ; in [POLYGENCODE.BAS] LED1ByteCount=51
    movlw 51
    movwf LED1ByteCount
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1020
_lbl__1151
F1_003558 equ $ ; in [POLYGENCODE.BAS] Case 9
    movlw 9
    movlb 0x0D
ram_bank = 13
    subwf LEDActiveAnimation,W
    movlp ((_lbl__1164) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1164
F1_003559 equ $ ; in [POLYGENCODE.BAS] if LEDFrame=0 Then LEDFrame=800
    movlb 0x0D
ram_bank = 13
    movf LEDFrameH,W
    iorwf LEDFrame,W
    movlp ((_lbl__1166) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1166
    movlb 0x0D
ram_bank = 13
    movlw 3
    movwf LEDFrameH
    movlw 32
    movwf LEDFrame
_lbl__1166
ram_bank = 0
F1_003560 equ $ ; in [POLYGENCODE.BAS] Select LEDFrame
F1_003561 equ $ ; in [POLYGENCODE.BAS] Case 400 To 800
    movlw 1
    movlb 0x0D
ram_bank = 13
    subwf LEDFrameH,W
    movlp ((_lbl__1168) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _lbl__1168
    btfss STATUS,2
    bra _cplb__105
    movlw 144
    movlb 0x0D
ram_bank = 13
    subwf LEDFrame,W
    movlp ((_lbl__1168) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _lbl__1168
_cplb__105
ram_bank = 255
    movlw 3
    movlb 0x0D
ram_bank = 13
    subwf LEDFrameH,W
    movlp ((_cplb__106) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _cplb__106
    movlp ((_lbl__1168) >> 8)
    btfss STATUS,2
    goto _lbl__1168
    movlw 33
    movlb 0x0D
ram_bank = 13
    subwf LEDFrame,W
    movlp ((_lbl__1168) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__1168
_cplb__106
ram_bank = 255
F1_003562 equ $ ; in [POLYGENCODE.BAS] GoSub BlankAllLED1s
    movlb 0x00
ram_bank = 0
    movlp ((BlankAllLED1s) >> 8)
    call BlankAllLED1s
ram_bank = 0
F1_003563 equ $ ; in [POLYGENCODE.BAS] GoSub BlankAllLED2s
    movlp ((BlankAllLED2s) >> 8)
    call BlankAllLED2s
ram_bank = 0
F1_003564 equ $ ; in [POLYGENCODE.BAS] Clear OutG
    movlb 0x0E
ram_bank = 14
    clrf OutG
F1_003565 equ $ ; in [POLYGENCODE.BAS] if LEDFrame.4=1  Then
    movlp ((_lbl__1171) >> 8)
    movlb 0x0D
ram_bank = 13
    movf LEDFrame,W
    movlb 0x00
ram_bank = 0
    btfss WREG,4
    goto _lbl__1171
F1_003566 equ $ ; in [POLYGENCODE.BAS] OutR=255
    movlb 0x0E
ram_bank = 14
    movlw 255
    movwf OutR
F1_003567 equ $ ; in [POLYGENCODE.BAS] Clear OutB
    clrf OutB
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1172
_lbl__1171
F1_003568 equ $ ; in [POLYGENCODE.BAS] else
F1_003569 equ $ ; in [POLYGENCODE.BAS] OutB=255
    movlb 0x0E
ram_bank = 14
    movlw 255
    movwf OutB
F1_003570 equ $ ; in [POLYGENCODE.BAS] Clear OutR
    clrf OutR
F1_003571 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1172
ram_bank = 0
F1_003573 equ $ ; in [POLYGENCODE.BAS] flipflop= LEDFrame.3
    movlb 0x0D
ram_bank = 13
    bcf STATUS,1
    btfsc LEDFrame,3
    bsf STATUS,1
    movlb 0x00
ram_bank = 0
    btfsc STATUS,1
    bsf _B__VR8,3
    btfss STATUS,1
    bcf _B__VR8,3
F1_003574 equ $ ; in [POLYGENCODE.BAS] For C=0 To 51 Step 3
    movlb 0x0D
ram_bank = 13
    clrf _C
_frlb__1173
ram_bank = 0
    movlw 52
    movlb 0x0D
ram_bank = 13
    subwf _C,W
    movlp ((_nxlb__1174) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _nxlb__1174
F1_003575 equ $ ; in [POLYGENCODE.BAS] if flipflop=1 Then
    movlp ((_lbl__1177) >> 8)
    btfss _B__VR8,3
    goto _lbl__1177
F1_003576 equ $ ; in [POLYGENCODE.BAS] Clear flipflop
    bcf _B__VR8,3
    _mjump _lbl__1178
_lbl__1177
F1_003577 equ $ ; in [POLYGENCODE.BAS] else
F1_003578 equ $ ; in [POLYGENCODE.BAS] LED1Data[C] =OutG
    movlb 0x0D
ram_bank = 13
    movf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutG,W
    movwf INDF0
F1_003579 equ $ ; in [POLYGENCODE.BAS] LED1Data[C+1] =OutR
    movlb 0x0D
ram_bank = 13
    incf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutR,W
    movwf INDF0
F1_003580 equ $ ; in [POLYGENCODE.BAS] LED1Data[C+2] =OutB
    movlw 2
    movlb 0x0D
ram_bank = 13
    addwf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutB,W
    movwf INDF0
F1_003581 equ $ ; in [POLYGENCODE.BAS] if C<36 Then
    movlw 36
    movlb 0x0D
ram_bank = 13
    subwf _C,W
    movlp ((_lbl__1180) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__1180
F1_003582 equ $ ; in [POLYGENCODE.BAS] LED2Data[C] =OutG
    movlb 0x0D
ram_bank = 13
    movf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutG,W
    movwf INDF0
F1_003583 equ $ ; in [POLYGENCODE.BAS] LED2Data[C+1] =OutR
    movlb 0x0D
ram_bank = 13
    incf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutR,W
    movwf INDF0
F1_003584 equ $ ; in [POLYGENCODE.BAS] LED2Data[C+2] =OutB
    movlw 2
    movlb 0x0D
ram_bank = 13
    addwf _C,W
    addlw 219
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutB,W
    movwf INDF0
F1_003585 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1180
ram_bank = 0
F1_003586 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1178
_ctlb__1175
F1_003587 equ $ ; in [POLYGENCODE.BAS] Next
    movlw 3
    movlb 0x0D
ram_bank = 13
    addwf _C,F
    movlp ((_frlb__1173) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _frlb__1173
_nxlb__1174
    _mjump _lbl__1167
_lbl__1168
F1_003588 equ $ ; in [POLYGENCODE.BAS] Case 0 To 400
    movlw 1
    movlb 0x0D
ram_bank = 13
    subwf LEDFrameH,W
    movlp ((_cplb__107) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _cplb__107
    movlp ((_lbl__1182) >> 8)
    btfss STATUS,2
    goto _lbl__1182
    movlw 145
    movlb 0x0D
ram_bank = 13
    subwf LEDFrame,W
    movlp ((_lbl__1182) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__1182
_cplb__107
ram_bank = 255
F1_003589 equ $ ; in [POLYGENCODE.BAS] if LEDFrame.3=1 Then
    movlp ((_lbl__1184) >> 8)
    movlb 0x0D
ram_bank = 13
    movf LEDFrame,W
    movlb 0x00
ram_bank = 0
    btfss WREG,3
    goto _lbl__1184
F1_003590 equ $ ; in [POLYGENCODE.BAS] if LEDFrame.5=1 Then
    movlp ((_lbl__1186) >> 8)
    movlb 0x0D
ram_bank = 13
    movf LEDFrame,W
    movlb 0x00
ram_bank = 0
    btfss WREG,5
    goto _lbl__1186
F1_003591 equ $ ; in [POLYGENCODE.BAS] OutR=255
    movlb 0x0E
ram_bank = 14
    movlw 255
    movwf OutR
F1_003592 equ $ ; in [POLYGENCODE.BAS] Clear OutB
    clrf OutB
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1187
_lbl__1186
F1_003593 equ $ ; in [POLYGENCODE.BAS] else
F1_003594 equ $ ; in [POLYGENCODE.BAS] OutB=255
    movlb 0x0E
ram_bank = 14
    movlw 255
    movwf OutB
F1_003595 equ $ ; in [POLYGENCODE.BAS] Clear OutR
    clrf OutR
F1_003596 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1187
ram_bank = 0
F1_003597 equ $ ; in [POLYGENCODE.BAS] Clear OutG
    movlb 0x0E
ram_bank = 14
    clrf OutG
F1_003598 equ $ ; in [POLYGENCODE.BAS] GoSub LoadAllLED1s
    movlb 0x00
ram_bank = 0
    movlp ((LoadAllLED1s) >> 8)
    call LoadAllLED1s
ram_bank = 0
F1_003599 equ $ ; in [POLYGENCODE.BAS] GoSub LoadAllLED2s
    movlp ((LoadAllLED2s) >> 8)
    call LoadAllLED2s
ram_bank = 0
    _mjump _lbl__1188
_lbl__1184
F1_003600 equ $ ; in [POLYGENCODE.BAS] else
F1_003601 equ $ ; in [POLYGENCODE.BAS] GoSub BlankAllLED1s
    movlp ((BlankAllLED1s) >> 8)
    call BlankAllLED1s
ram_bank = 0
F1_003602 equ $ ; in [POLYGENCODE.BAS] GoSub BlankAllLED2s
    movlp ((BlankAllLED2s) >> 8)
    call BlankAllLED2s
ram_bank = 0
F1_003603 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1188
F1_003604 equ $ ; in [POLYGENCODE.BAS] EndSelect
_lbl__1182
_lbl__1167
F1_003605 equ $ ; in [POLYGENCODE.BAS] LED1ByteCount=51
    movlb 0x0D
ram_bank = 13
    movlw 51
    movwf LED1ByteCount
F1_003606 equ $ ; in [POLYGENCODE.BAS] LED2ByteCount=36
    movlw 36
    movwf LED2ByteCount
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1020
_lbl__1164
F1_003607 equ $ ; in [POLYGENCODE.BAS] Case 10
    movlw 10
    movlb 0x0D
ram_bank = 13
    subwf LEDActiveAnimation,W
    movlp ((_lbl__1190) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1190
F1_003608 equ $ ; in [POLYGENCODE.BAS] OutR=255
    movlb 0x0E
ram_bank = 14
    movlw 255
    movwf OutR
F1_003609 equ $ ; in [POLYGENCODE.BAS] OutB=255
    movwf OutB
F1_003610 equ $ ; in [POLYGENCODE.BAS] OutG=255
    movwf OutG
F1_003611 equ $ ; in [POLYGENCODE.BAS] GoSub LoadAllLED1s
    movlb 0x00
ram_bank = 0
    movlp ((LoadAllLED1s) >> 8)
    call LoadAllLED1s
ram_bank = 0
F1_003612 equ $ ; in [POLYGENCODE.BAS] GoSub LoadAllLED2s
    movlp ((LoadAllLED2s) >> 8)
    call LoadAllLED2s
ram_bank = 0
F1_003613 equ $ ; in [POLYGENCODE.BAS] LED1ByteCount=51
    movlb 0x0D
ram_bank = 13
    movlw 51
    movwf LED1ByteCount
F1_003614 equ $ ; in [POLYGENCODE.BAS] LED2ByteCount=36
    movlw 36
    movwf LED2ByteCount
F1_003615 equ $ ; in [POLYGENCODE.BAS] Case else
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1192
_lbl__1190
F1_003616 equ $ ; in [POLYGENCODE.BAS] return
    return
F1_003617 equ $ ; in [POLYGENCODE.BAS] EndSelect
_lbl__1192
_lbl__1020
F1_003618 equ $ ; in [POLYGENCODE.BAS] GoSub SendLEDData
    movlp ((SendLEDData) >> 8)
    call SendLEDData
ram_bank = 0
F1_003619 equ $ ; in [POLYGENCODE.BAS] return
    return
LoadOwnerColour
F1_003622 equ $ ; in [POLYGENCODE.BAS] HSVs=255
    movlb 0x0E
ram_bank = 14
    movlw 255
    movwf HSVs
F1_003623 equ $ ; in [POLYGENCODE.BAS] if TeamColourOverride>0 Then
    movlb 0x06
ram_bank = 6
    movf TeamColourOverride,F
    movlp ((_lbl__1194) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__1194
F1_003624 equ $ ; in [POLYGENCODE.BAS] HSVh=TeamColourHue[TeamColourOverride]
    movlb 0x06
ram_bank = 6
    lslf TeamColourOverride,W
    movwf FSR0L
    clrf FSR0H
    rlf FSR0H,F
    movlw 0x23
    addwf FSR0L,F
    movlw 0x24
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x0E
ram_bank = 14
    movwf HSVh
    moviw ++INDF0
    movwf HSVhH
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1195
_lbl__1194
F1_003625 equ $ ; in [POLYGENCODE.BAS] else
F1_003626 equ $ ; in [POLYGENCODE.BAS] if discs_OwnerTeam>0 Then
    movlb 0x06
ram_bank = 6
    movf discs_OwnerTeam,F
    movlp ((_lbl__1197) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__1197
F1_003627 equ $ ; in [POLYGENCODE.BAS] HSVh=TeamColourHue[discs_OwnerTeam]
    movlb 0x06
ram_bank = 6
    lslf discs_OwnerTeam,W
    movwf FSR0L
    clrf FSR0H
    rlf FSR0H,F
    movlw 0x23
    addwf FSR0L,F
    movlw 0x24
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x0E
ram_bank = 14
    movwf HSVh
    moviw ++INDF0
    movwf HSVhH
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1198
_lbl__1197
F1_003628 equ $ ; in [POLYGENCODE.BAS] else
F1_003630 equ $ ; in [POLYGENCODE.BAS] Clear HSVs
    movlb 0x0E
ram_bank = 14
    clrf HSVs
F1_003631 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1198
    movlb 0x00
ram_bank = 0
F1_003632 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1195
F1_003633 equ $ ; in [POLYGENCODE.BAS] return
    return
LED1PulseEffect
F1_003637 equ $ ; in [POLYGENCODE.BAS] GoSub BlankAllLED1s
    movlp ((BlankAllLED1s) >> 8)
    call BlankAllLED1s
ram_bank = 0
F1_003639 equ $ ; in [POLYGENCODE.BAS] For C=6 To 26 Step 3
    movlb 0x0D
ram_bank = 13
    movlw 6
    movwf _C
_frlb__1199
ram_bank = 0
    movlw 27
    movlb 0x0D
ram_bank = 13
    subwf _C,W
    movlp ((_nxlb__1200) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _nxlb__1200
F1_003640 equ $ ; in [POLYGENCODE.BAS] Clear OutB
    movlb 0x0E
ram_bank = 14
    clrf OutB
F1_003641 equ $ ; in [POLYGENCODE.BAS] Clear OutR
    clrf OutR
F1_003642 equ $ ; in [POLYGENCODE.BAS] Clear OutG
    clrf OutG
F1_003643 equ $ ; in [POLYGENCODE.BAS] if FrameTemp.LowByte =FrameTemp.HighByte + 4 Or FrameTemp.LowByte=FrameTemp.HighByte Then
    movlw 4
    movlb 0x0D
ram_bank = 13
    addwf FrameTempH,W
    movlb 0x00
ram_bank = 0
    clrf PBS_VAR0H
    movwf PBS_VAR0
    rlf PBS_VAR0H,F
    movf PBS_VAR0H,F
    btfss STATUS,2
    bra _cplb__109
    movf PBS_VAR0,W
    movlb 0x0D
ram_bank = 13
    subwf FrameTemp,W
    movlp ((_cplb__108) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _cplb__108
_cplb__109
ram_bank = 255
    clrw
    btfss STATUS,2
_cplb__108
    movlw 1
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlb 0x0D
ram_bank = 13
    movf FrameTemp,W
    subwf FrameTempH,W
    btfsc STATUS,2
    movlw 1
    btfss STATUS,2
    movlw 0
    movlb 0x00
ram_bank = 0
    iorwf SP__P9_,F
    movlp ((_lbl__1203) >> 8)
    btfsc STATUS,2
    goto _lbl__1203
F1_003644 equ $ ; in [POLYGENCODE.BAS] HSVv=10
    movlb 0x0E
ram_bank = 14
    movlw 10
    movwf HSVv
F1_003645 equ $ ; in [POLYGENCODE.BAS] GoSub HSV2RGB
    movlb 0x00
ram_bank = 0
    movlp ((HSV2RGB) >> 8)
    call HSV2RGB
ram_bank = 0
F1_003646 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1203
F1_003647 equ $ ; in [POLYGENCODE.BAS] if FrameTemp.LowByte =FrameTemp.HighByte + 3 Or FrameTemp.LowByte =FrameTemp.HighByte + 1 Then
    movlw 3
    movlb 0x0D
ram_bank = 13
    addwf FrameTempH,W
    movlb 0x00
ram_bank = 0
    clrf PBS_VAR0H
    movwf PBS_VAR0
    rlf PBS_VAR0H,F
    movf PBS_VAR0H,F
    btfss STATUS,2
    bra _cplb__111
    movf PBS_VAR0,W
    movlb 0x0D
ram_bank = 13
    subwf FrameTemp,W
    movlp ((_cplb__110) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _cplb__110
_cplb__111
ram_bank = 255
    clrw
    btfss STATUS,2
_cplb__110
    movlw 1
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlw 1
    movlb 0x0D
ram_bank = 13
    addwf FrameTempH,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR0
    clrf PBS_VAR0H
    rlf PBS_VAR0H,F
    movf PBS_VAR0H,F
    btfss STATUS,2
    bra _cplb__113
    movf PBS_VAR0,W
    movlb 0x0D
ram_bank = 13
    subwf FrameTemp,W
    movlp ((_cplb__112) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _cplb__112
_cplb__113
ram_bank = 255
    clrw
    btfss STATUS,2
_cplb__112
    movlw 1
    movlb 0x00
ram_bank = 0
    iorwf SP__P9_,F
    movlp ((_lbl__1205) >> 8)
    btfsc STATUS,2
    goto _lbl__1205
F1_003648 equ $ ; in [POLYGENCODE.BAS] HSVv=25
    movlb 0x0E
ram_bank = 14
    movlw 25
    movwf HSVv
F1_003649 equ $ ; in [POLYGENCODE.BAS] GoSub HSV2RGB
    movlb 0x00
ram_bank = 0
    movlp ((HSV2RGB) >> 8)
    call HSV2RGB
ram_bank = 0
F1_003650 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1205
F1_003651 equ $ ; in [POLYGENCODE.BAS] if FrameTemp.LowByte=FrameTemp.HighByte + 2 Then
    movlw 2
    movlb 0x0D
ram_bank = 13
    addwf FrameTempH,W
    movlb 0x00
ram_bank = 0
    clrf PBS_VAR0H
    movwf PBS_VAR0
    rlf PBS_VAR0H,F
    movf PBS_VAR0H,F
    movlp ((_lbl__1207) >> 8)
    btfss STATUS,2
    goto _lbl__1207
    movf PBS_VAR0,W
    movlb 0x0D
ram_bank = 13
    subwf FrameTemp,W
    movlp ((_lbl__1207) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1207
F1_003652 equ $ ; in [POLYGENCODE.BAS] HSVv=200
    movlb 0x0E
ram_bank = 14
    movlw 200
    movwf HSVv
F1_003653 equ $ ; in [POLYGENCODE.BAS] GoSub HSV2RGB
    movlb 0x00
ram_bank = 0
    movlp ((HSV2RGB) >> 8)
    call HSV2RGB
ram_bank = 0
F1_003654 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1207
F1_003655 equ $ ; in [POLYGENCODE.BAS] Inc FrameTemp.HighByte
    movlb 0x0D
ram_bank = 13
    incf FrameTempH,F
F1_003656 equ $ ; in [POLYGENCODE.BAS] LED1Data[C] =OutB
    movf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutB,W
    movwf INDF0
F1_003657 equ $ ; in [POLYGENCODE.BAS] LED1Data[C+1] =OutR
    movlb 0x0D
ram_bank = 13
    incf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutR,W
    movwf INDF0
F1_003658 equ $ ; in [POLYGENCODE.BAS] LED1Data[C+2] =OutG
    movlw 2
    movlb 0x0D
ram_bank = 13
    addwf _C,W
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutG,W
    movwf INDF0
F1_003659 equ $ ; in [POLYGENCODE.BAS] LED1Data[54-C] =OutB
    movlb 0x0D
ram_bank = 13
    movf _C,W
    sublw 54
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutB,W
    movwf INDF0
F1_003660 equ $ ; in [POLYGENCODE.BAS] LED1Data[55-C] =OutR
    movlb 0x0D
ram_bank = 13
    movf _C,W
    sublw 55
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutR,W
    movwf INDF0
F1_003661 equ $ ; in [POLYGENCODE.BAS] LED1Data[56-C] =OutG
    movlb 0x0D
ram_bank = 13
    movf _C,W
    sublw 56
    addlw 159
    movwf FSR0L
    movlw 0x23
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x0E
ram_bank = 14
    movf OutG,W
    movwf INDF0
_ctlb__1201
ram_bank = 0
F1_003662 equ $ ; in [POLYGENCODE.BAS] Next
    movlw 3
    movlb 0x0D
ram_bank = 13
    addwf _C,F
    movlp ((_frlb__1199) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _frlb__1199
_nxlb__1200
F1_003663 equ $ ; in [POLYGENCODE.BAS] LED1ByteCount=51
    movlb 0x0D
ram_bank = 13
    movlw 51
    movwf LED1ByteCount
F1_003664 equ $ ; in [POLYGENCODE.BAS] return
    movlb 0x00
ram_bank = 0
    return
HSV2RGB
F1_003684 equ $ ; in [POLYGENCODE.BAS] if HSVs=0 Then
    movlb 0x0E
ram_bank = 14
    movf HSVs,F
    movlp ((_lbl__1209) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1209
F1_003685 equ $ ; in [POLYGENCODE.BAS] OutR=HSVv
    movlb 0x0E
ram_bank = 14
    movf HSVv,W
    movwf OutR
F1_003686 equ $ ; in [POLYGENCODE.BAS] OutG=HSVv
    movf HSVv,W
    movwf OutG
F1_003687 equ $ ; in [POLYGENCODE.BAS] OutB=HSVv
    movf HSVv,W
    movwf OutB
F1_003688 equ $ ; in [POLYGENCODE.BAS] return
    movlb 0x00
ram_bank = 0
    return
F1_003689 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1209
F1_003691 equ $ ; in [POLYGENCODE.BAS] if HSVh.HighByte >5 Then HSVh.HighByte=5
    movlw 6
    movlb 0x0E
ram_bank = 14
    subwf HSVhH,W
    movlp ((_lbl__1211) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _lbl__1211
    movlb 0x0E
ram_bank = 14
    movlw 5
    movwf HSVhH
_lbl__1211
ram_bank = 0
F1_003692 equ $ ; in [POLYGENCODE.BAS] Cv=HSVv
    movlb 0x0E
ram_bank = 14
    movf HSVv,W
    movwf Cv
F1_003693 equ $ ; in [POLYGENCODE.BAS] bb=~HSVs
    comf HSVs,W
    movwf bb
F1_003694 equ $ ; in [POLYGENCODE.BAS] ww=HSVv * bb
    movlb 0x00
ram_bank = 0
    clrf PP3H
    movlb 0x0E
ram_bank = 14
    movf HSVv,W
    movlb 0x00
ram_bank = 0
    movwf PP3
    clrf PP1H
    movlb 0x0E
ram_bank = 14
    movf bb,W
    movlb 0x00
ram_bank = 0
    movwf PP1
    movlp ((__multiply_u1616_) >> 8)
    call __multiply_u1616_
ram_bank = 0
    movlb 0x0E
ram_bank = 14
    movwf ww
    movlb 0x00
ram_bank = 0
    movf PP2H,W
    movlb 0x0E
ram_bank = 14
    movwf wwH
F1_003695 equ $ ; in [POLYGENCODE.BAS] Inc ww
    incf ww,F
    btfsc STATUS,2
    incf wwH,F
F1_003696 equ $ ; in [POLYGENCODE.BAS] ww=ww+ww.HighByte
    movf wwH,W
    addwf ww,F
    movlw 0
    addwfc wwH,F
F1_003697 equ $ ; in [POLYGENCODE.BAS] Cc=ww.HighByte
    movf wwH,W
    movwf Cc
F1_003698 equ $ ; in [POLYGENCODE.BAS] if HSVh.8=0 Then
    movlp ((_lbl__1213) >> 8)
    movf HSVhH,W
    movlb 0x00
ram_bank = 0
    btfsc WREG,0
    goto _lbl__1213
F1_003699 equ $ ; in [POLYGENCODE.BAS] if HSVh.LowByte=0 Then
    movlb 0x0E
ram_bank = 14
    movf HSVh,F
    movlp ((_lbl__1215) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1215
F1_003700 equ $ ; in [POLYGENCODE.BAS] ww.HighByte=HSVs
    movlb 0x0E
ram_bank = 14
    movf HSVs,W
    movwf wwH
F1_003701 equ $ ; in [POLYGENCODE.BAS] Clear ww.LowByte
    clrf ww
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1216
_lbl__1215
F1_003702 equ $ ; in [POLYGENCODE.BAS] else
F1_003703 equ $ ; in [POLYGENCODE.BAS] mm=~HSVh.LowByte
    movlb 0x0E
ram_bank = 14
    comf HSVh,W
    movwf mm
F1_003704 equ $ ; in [POLYGENCODE.BAS] Inc mm
    incf mm,F
F1_003705 equ $ ; in [POLYGENCODE.BAS] ww=HSVs * mm
    movlb 0x00
ram_bank = 0
    clrf PP3H
    movlb 0x0E
ram_bank = 14
    movf HSVs,W
    movlb 0x00
ram_bank = 0
    movwf PP3
    clrf PP1H
    movlb 0x0E
ram_bank = 14
    movf mm,W
    movlb 0x00
ram_bank = 0
    movwf PP1
    movlp ((__multiply_u1616_) >> 8)
    call __multiply_u1616_
ram_bank = 0
    movlb 0x0E
ram_bank = 14
    movwf ww
    movlb 0x00
ram_bank = 0
    movf PP2H,W
    movlb 0x0E
ram_bank = 14
    movwf wwH
F1_003706 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1216
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1217
_lbl__1213
F1_003707 equ $ ; in [POLYGENCODE.BAS] else
F1_003708 equ $ ; in [POLYGENCODE.BAS] ww=HSVs * HSVh.LowByte
    clrf PP3H
    movlb 0x0E
ram_bank = 14
    movf HSVs,W
    movlb 0x00
ram_bank = 0
    movwf PP3
    clrf PP1H
    movlb 0x0E
ram_bank = 14
    movf HSVh,W
    movlb 0x00
ram_bank = 0
    movwf PP1
    movlp ((__multiply_u1616_) >> 8)
    call __multiply_u1616_
ram_bank = 0
    movlb 0x0E
ram_bank = 14
    movwf ww
    movlb 0x00
ram_bank = 0
    movf PP2H,W
    movlb 0x0E
ram_bank = 14
    movwf wwH
F1_003709 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1217
ram_bank = 0
F1_003710 equ $ ; in [POLYGENCODE.BAS] ww=ww + ww.HighByte
    movlb 0x0E
ram_bank = 14
    movf wwH,W
    addwf ww,F
    movlw 0
    addwfc wwH,F
F1_003711 equ $ ; in [POLYGENCODE.BAS] bb=~ww.HighByte
    comf wwH,W
    movwf bb
F1_003712 equ $ ; in [POLYGENCODE.BAS] ww=HSVv * bb
    movlb 0x00
ram_bank = 0
    clrf PP3H
    movlb 0x0E
ram_bank = 14
    movf HSVv,W
    movlb 0x00
ram_bank = 0
    movwf PP3
    clrf PP1H
    movlb 0x0E
ram_bank = 14
    movf bb,W
    movlb 0x00
ram_bank = 0
    movwf PP1
    movlp ((__multiply_u1616_) >> 8)
    call __multiply_u1616_
ram_bank = 0
    movlb 0x0E
ram_bank = 14
    movwf ww
    movlb 0x00
ram_bank = 0
    movf PP2H,W
    movlb 0x0E
ram_bank = 14
    movwf wwH
F1_003713 equ $ ; in [POLYGENCODE.BAS] mm=HSVv>>1
    LSRF HSVv,W
    movwf mm
F1_003714 equ $ ; in [POLYGENCODE.BAS] ww=ww + mm
    movf mm,W
    addwf ww,F
    movlw 0
    addwfc wwH,F
F1_003715 equ $ ; in [POLYGENCODE.BAS] Cs=ww.HighByte
    movf wwH,W
    movwf Cs
F1_003717 equ $ ; in [POLYGENCODE.BAS] Select HSVh.HighByte
F1_003718 equ $ ; in [POLYGENCODE.BAS] Case 0
    movf HSVhH,F
    movlp ((_lbl__1219) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1219
F1_003719 equ $ ; in [POLYGENCODE.BAS] OutR=Cv
    movlb 0x0E
ram_bank = 14
    movf Cv,W
    movwf OutR
F1_003720 equ $ ; in [POLYGENCODE.BAS] OutB=Cc
    movf Cc,W
    movwf OutB
F1_003721 equ $ ; in [POLYGENCODE.BAS] OutG=Cs
    movf Cs,W
    movwf OutG
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1218
_lbl__1219
F1_003722 equ $ ; in [POLYGENCODE.BAS] Case 1
    movlw 1
    movlb 0x0E
ram_bank = 14
    subwf HSVhH,W
    movlp ((_lbl__1222) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1222
F1_003723 equ $ ; in [POLYGENCODE.BAS] OutR=Cs
    movlb 0x0E
ram_bank = 14
    movf Cs,W
    movwf OutR
F1_003724 equ $ ; in [POLYGENCODE.BAS] OutB=Cc
    movf Cc,W
    movwf OutB
F1_003725 equ $ ; in [POLYGENCODE.BAS] OutG=Cv
    movf Cv,W
    movwf OutG
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1218
_lbl__1222
F1_003726 equ $ ; in [POLYGENCODE.BAS] Case 2
    movlw 2
    movlb 0x0E
ram_bank = 14
    subwf HSVhH,W
    movlp ((_lbl__1224) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1224
F1_003727 equ $ ; in [POLYGENCODE.BAS] OutR=Cc
    movlb 0x0E
ram_bank = 14
    movf Cc,W
    movwf OutR
F1_003728 equ $ ; in [POLYGENCODE.BAS] OutB=Cs
    movf Cs,W
    movwf OutB
F1_003729 equ $ ; in [POLYGENCODE.BAS] OutG=Cv
    movf Cv,W
    movwf OutG
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1218
_lbl__1224
F1_003730 equ $ ; in [POLYGENCODE.BAS] Case 3
    movlw 3
    movlb 0x0E
ram_bank = 14
    subwf HSVhH,W
    movlp ((_lbl__1226) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1226
F1_003731 equ $ ; in [POLYGENCODE.BAS] OutR=Cc
    movlb 0x0E
ram_bank = 14
    movf Cc,W
    movwf OutR
F1_003732 equ $ ; in [POLYGENCODE.BAS] OutB=Cv
    movf Cv,W
    movwf OutB
F1_003733 equ $ ; in [POLYGENCODE.BAS] OutG=Cs
    movf Cs,W
    movwf OutG
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1218
_lbl__1226
F1_003734 equ $ ; in [POLYGENCODE.BAS] Case 4
    movlw 4
    movlb 0x0E
ram_bank = 14
    subwf HSVhH,W
    movlp ((_lbl__1228) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1228
F1_003735 equ $ ; in [POLYGENCODE.BAS] OutR=Cs
    movlb 0x0E
ram_bank = 14
    movf Cs,W
    movwf OutR
F1_003736 equ $ ; in [POLYGENCODE.BAS] OutB=Cv
    movf Cv,W
    movwf OutB
F1_003737 equ $ ; in [POLYGENCODE.BAS] OutG=Cc
    movf Cc,W
    movwf OutG
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1218
_lbl__1228
F1_003738 equ $ ; in [POLYGENCODE.BAS] Case 5
    movlw 5
    movlb 0x0E
ram_bank = 14
    subwf HSVhH,W
    movlp ((_lbl__1230) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1230
F1_003739 equ $ ; in [POLYGENCODE.BAS] OutR=Cv
    movlb 0x0E
ram_bank = 14
    movf Cv,W
    movwf OutR
F1_003740 equ $ ; in [POLYGENCODE.BAS] OutB=Cs
    movf Cs,W
    movwf OutB
F1_003741 equ $ ; in [POLYGENCODE.BAS] OutG=Cc
    movf Cc,W
    movwf OutG
F1_003742 equ $ ; in [POLYGENCODE.BAS] EndSelect
_lbl__1230
    movlb 0x00
ram_bank = 0
_lbl__1218
F1_003744 equ $ ; in [POLYGENCODE.BAS] return
    return
DetectRFID
F1_003754 equ $ ; in [POLYGENCODE.BAS] Clear DetectResult
    movlb 0x07
ram_bank = 7
    clrf DetectResult
F1_003756 equ $ ; in [POLYGENCODE.BAS] Set RFIDShutdown
    movlb 0x00
ram_bank = 0
    bsf LATC,5
F1_003757 equ $ ; in [POLYGENCODE.BAS] MaxRFIDWaitTime=2000
    movlb 0x03
ram_bank = 3
    movlw 7
    movwf MaxRFIDWaitTimeH
    movlw 208
    movwf MaxRFIDWaitTime
F1_003760 equ $ ; in [POLYGENCODE.BAS] DelayUs 100
    movlw 100
    movlb 0x00
ram_bank = 0
    movlp ((__delay_us_) >> 8)
    call __delay_us_
ram_bank = 0
F1_003761 equ $ ; in [POLYGENCODE.BAS] GoSub IdleTasks
    movlp ((IdleTasks) >> 8)
    call IdleTasks
ram_bank = 0
F1_003762 equ $ ; in [POLYGENCODE.BAS] DelayUs 100
    movlw 100
    movlp ((__delay_us_) >> 8)
    call __delay_us_
ram_bank = 0
F1_003763 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Init
    movlp ((RC522_Init) >> 8)
    call RC522_Init
ram_bank = 0
F1_003766 equ $ ; in [POLYGENCODE.BAS] FastTimer=8
    movlb 0x0D
ram_bank = 13
    movlw 8
    movwf FastTimer
F1_003767 equ $ ; in [POLYGENCODE.BAS] FastTimer=10
    movlw 10
    movwf FastTimer
F1_003768 equ $ ; in [POLYGENCODE.BAS] While FastTimer>0
_lbl__1231
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movf FastTimer,F
    movlp ((_lbl__1232) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__1232
F1_003769 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateAnimation
    movlp ((UpdateAnimation) >> 8)
    call UpdateAnimation
ram_bank = 0
F1_003770 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__1231
_lbl__1232
F1_003773 equ $ ; in [POLYGENCODE.BAS] Clear RFIDLoopCount
    movlb 0x03
ram_bank = 3
    clrf RFIDLoopCount
F1_003774 equ $ ; in [POLYGENCODE.BAS] Clear RC522_TokenLen
    movlb 0x02
ram_bank = 2
    clrf RC522_TokenLen
F1_003775 equ $ ; in [POLYGENCODE.BAS] While RFIDLoopCount<16 And RC522_TokenLen<4
_lbl__1233
ram_bank = 0
    movlw 16
    movlb 0x03
ram_bank = 3
    subwf RFIDLoopCount,W
    movlw 1
    btfsc STATUS,0
    movlw 0
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlw 4
    movlb 0x02
ram_bank = 2
    subwf RC522_TokenLen,W
    movlw 1
    btfsc STATUS,0
    movlw 0
    movlb 0x00
ram_bank = 0
    andwf SP__P9_,F
    movlp ((_lbl__1234) >> 8)
    btfsc STATUS,2
    goto _lbl__1234
F1_003776 equ $ ; in [POLYGENCODE.BAS] GoSub IdleTasks
    movlp ((IdleTasks) >> 8)
    call IdleTasks
ram_bank = 0
F1_003777 equ $ ; in [POLYGENCODE.BAS] Inc RFIDLoopCount
    movlb 0x03
ram_bank = 3
    incf RFIDLoopCount,F
F1_003778 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_DetectCard
    movlb 0x00
ram_bank = 0
    movlp ((RC522_DetectCard) >> 8)
    call RC522_DetectCard
ram_bank = 0
F1_003779 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__1233
_lbl__1234
F1_003780 equ $ ; in [POLYGENCODE.BAS] if RC522_TokenLen<4 Then
    movlw 4
    movlb 0x02
ram_bank = 2
    subwf RC522_TokenLen,W
    movlp ((_lbl__1236) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__1236
F1_003781 equ $ ; in [POLYGENCODE.BAS] Clear RFIDShutdown
    bcf LATC,5
F1_003782 equ $ ; in [POLYGENCODE.BAS] return
    return
F1_003783 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1236
F1_003785 equ $ ; in [POLYGENCODE.BAS] if RC522_Token[0] =0x08 And RC522_TokenLen=4 Then
    movlb 0x02
ram_bank = 2
    movf RC522_Token#0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR0
    movlw 8
    subwf PBS_VAR0,W
    movlw 1
    btfss STATUS,2
    movlw 0
    movwf SP__P9_
    movlw 4
    movlb 0x02
ram_bank = 2
    subwf RC522_TokenLen,W
    movlw 1
    btfss STATUS,2
    movlw 0
    movlb 0x00
ram_bank = 0
    andwf SP__P9_,F
    movlp ((_lbl__1238) >> 8)
    btfsc STATUS,2
    goto _lbl__1238
F1_003787 equ $ ; in [POLYGENCODE.BAS] if  cmdMenu=0 Then
    movlb 0x0D
ram_bank = 13
    movf cmdMenu,F
    movlp ((_lbl__1240) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1240
F1_003789 equ $ ; in [POLYGENCODE.BAS] Clear RFIDShutdown
    bcf LATC,5
F1_003790 equ $ ; in [POLYGENCODE.BAS] Clear RC522_TokenLen
    movlb 0x02
ram_bank = 2
    clrf RC522_TokenLen
F1_003791 equ $ ; in [POLYGENCODE.BAS] return
    movlb 0x00
ram_bank = 0
    return
F1_003792 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1240
F1_003793 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1238
F1_003795 equ $ ; in [POLYGENCODE.BAS] N=RC522_TokenLen
    movlb 0x02
ram_bank = 2
    movf RC522_TokenLen,W
    movwf _N
F1_003796 equ $ ; in [POLYGENCODE.BAS] While N<10
_lbl__1241
ram_bank = 0
    movlw 10
    movlb 0x02
ram_bank = 2
    subwf _N,W
    movlp ((_lbl__1242) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__1242
F1_003797 equ $ ; in [POLYGENCODE.BAS] Clear RC522_Token[N]
    movlb 0x02
ram_bank = 2
    movf _N,W
    addlw 227
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    clrf INDF0
F1_003798 equ $ ; in [POLYGENCODE.BAS] Inc N
    incf _N,F
F1_003799 equ $ ; in [POLYGENCODE.BAS] Wend
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1241
_lbl__1242
F1_003800 equ $ ; in [POLYGENCODE.BAS] Set LastMatched
    bsf _B__VR1,5
F1_003801 equ $ ; in [POLYGENCODE.BAS] Set OwnerMatched
    bsf _B__VR1,6
F1_003802 equ $ ; in [POLYGENCODE.BAS] Set CommandMatched
    bsf _B__VR1,7
F1_003803 equ $ ; in [POLYGENCODE.BAS] Set CommandMatched2
    bsf _B__VR2,0
F1_003804 equ $ ; in [POLYGENCODE.BAS] For N=0 To 9
    movlb 0x02
ram_bank = 2
    clrf _N
_frlb__1243
ram_bank = 0
    movlw 10
    movlb 0x02
ram_bank = 2
    subwf _N,W
    movlp ((_nxlb__1244) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _nxlb__1244
F1_003805 equ $ ; in [POLYGENCODE.BAS] if RC522_Token[N]<>discs_LastToken[N] Then Clear LastMatched
    movlb 0x02
ram_bank = 2
    movf _N,W
    addlw 227
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR0
    movlb 0x02
ram_bank = 2
    movf _N,W
    addlw 230
    movwf FSR0L
    movlw 0x21
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR1
    movf PBS_VAR0,W
    subwf PBS_VAR1,W
    movlp ((_lbl__1247) >> 8)
    btfsc STATUS,2
    goto _lbl__1247
    bcf _B__VR1,5
_lbl__1247
F1_003806 equ $ ; in [POLYGENCODE.BAS] if RC522_Token[N]<>discs_OwnerToken[N] Then Clear OwnerMatched
    movlb 0x02
ram_bank = 2
    movf _N,W
    addlw 227
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR0
    movlb 0x02
ram_bank = 2
    movf _N,W
    addlw 218
    movwf FSR0L
    movlw 0x21
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR1
    movf PBS_VAR0,W
    subwf PBS_VAR1,W
    movlp ((_lbl__1249) >> 8)
    btfsc STATUS,2
    goto _lbl__1249
    bcf _B__VR1,6
_lbl__1249
F1_003807 equ $ ; in [POLYGENCODE.BAS] RC522_Temp=CRead8 MJTToken[N]
    clrf FSR1LH
    movlb 0x02
ram_bank = 2
    movf _N,W
    movwf FSR1L
    movlw (((MJTToken)+0X8000)&0xFF)
    addwf FSR1L,F
    movlw ((((MJTToken)+0X8000)>>8)&0xFF)
    addwfc FSR1H,F
    moviw INDF1++
    movlb 0x00
ram_bank = 0
    movwf RC522_Temp
F1_003808 equ $ ; in [POLYGENCODE.BAS] if RC522_Token[N]<>RC522_Temp Then Clear CommandMatched
    movlb 0x02
ram_bank = 2
    movf _N,W
    addlw 227
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR0
    movf PBS_VAR0,W
    subwf RC522_Temp,W
    movlp ((_lbl__1251) >> 8)
    btfsc STATUS,2
    goto _lbl__1251
    bcf _B__VR1,7
_lbl__1251
F1_003809 equ $ ; in [POLYGENCODE.BAS] RC522_Temp=CRead8 MJTToken2[N]
    clrf FSR1LH
    movlb 0x02
ram_bank = 2
    movf _N,W
    movwf FSR1L
    movlw (((MJTToken2)+0X8000)&0xFF)
    addwf FSR1L,F
    movlw ((((MJTToken2)+0X8000)>>8)&0xFF)
    addwfc FSR1H,F
    moviw INDF1++
    movlb 0x00
ram_bank = 0
    movwf RC522_Temp
F1_003810 equ $ ; in [POLYGENCODE.BAS] if RC522_Token[N]<>RC522_Temp Then Clear CommandMatched2
    movlb 0x02
ram_bank = 2
    movf _N,W
    addlw 227
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR0
    movf PBS_VAR0,W
    subwf RC522_Temp,W
    movlp ((_lbl__1253) >> 8)
    btfsc STATUS,2
    goto _lbl__1253
    bcf _B__VR2,0
_lbl__1253
_ctlb__1245
F1_003811 equ $ ; in [POLYGENCODE.BAS] Next
    movlw 1
    movlb 0x02
ram_bank = 2
    addwf _N,F
    movlp ((_frlb__1243) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _frlb__1243
_nxlb__1244
F1_003812 equ $ ; in [POLYGENCODE.BAS] DetectResult=1
    movlb 0x07
ram_bank = 7
    movlw 1
    movwf DetectResult
F1_003813 equ $ ; in [POLYGENCODE.BAS] if CommandMatched2=1 Then Set CommandMatched
    movlp ((_lbl__1255) >> 8)
    movlb 0x00
ram_bank = 0
    btfss _B__VR2,0
    goto _lbl__1255
    bsf _B__VR1,7
_lbl__1255
F1_003814 equ $ ; in [POLYGENCODE.BAS] if LastMatched=1 Then DetectResult=3
    movlp ((_lbl__1257) >> 8)
    btfss _B__VR1,5
    goto _lbl__1257
    movlb 0x07
ram_bank = 7
    movlw 3
    movwf DetectResult
_lbl__1257
    movlb 0x00
ram_bank = 0
F1_003815 equ $ ; in [POLYGENCODE.BAS] if OwnerMatched=1 Then DetectResult=2
    movlp ((_lbl__1259) >> 8)
    btfss _B__VR1,6
    goto _lbl__1259
    movlb 0x07
ram_bank = 7
    movlw 2
    movwf DetectResult
_lbl__1259
ram_bank = 0
F1_003816 equ $ ; in [POLYGENCODE.BAS] if DetectResult=1 Then
    movlw 1
    movlb 0x07
ram_bank = 7
    subwf DetectResult,W
    movlp ((_lbl__1261) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1261
F1_003817 equ $ ; in [POLYGENCODE.BAS] if RC522_SAK=0x08 And cmdMenu>0 Then
    movlw 8
    movlb 0x02
ram_bank = 2
    subwf RC522_SAK,W
    movlw 1
    btfss STATUS,2
    movlw 0
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlb 0x0D
ram_bank = 13
    movf cmdMenu,F
    movlp ((_cplb__114) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _cplb__114
    clrw
    btfss STATUS,2
_cplb__114
    movlw 1
    andwf SP__P9_,F
    movlp ((_lbl__1263) >> 8)
    btfsc STATUS,2
    goto _lbl__1263
F1_003818 equ $ ; in [POLYGENCODE.BAS] GoSub ReadMiFareNDEF
    movlp ((ReadMiFareNDEF) >> 8)
    call ReadMiFareNDEF
ram_bank = 0
F1_003819 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1263
F1_003820 equ $ ; in [POLYGENCODE.BAS] if RC522_SAK=0x20 And PaymentCardType=0 Then
    movlw 32
    movlb 0x02
ram_bank = 2
    subwf RC522_SAK,W
    movlw 1
    btfss STATUS,2
    movlw 0
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlw 1
    movlb 0x03
ram_bank = 3
    movf PaymentCardType,F
    btfss STATUS,2
    movlw 0
    movlb 0x00
ram_bank = 0
    andwf SP__P9_,F
    movlp ((_lbl__1265) >> 8)
    btfsc STATUS,2
    goto _lbl__1265
F1_003822 equ $ ; in [POLYGENCODE.BAS] MaxRFIDWaitTime=12000
    movlb 0x03
ram_bank = 3
    movlw 46
    movwf MaxRFIDWaitTimeH
    movlw 224
    movwf MaxRFIDWaitTime
F1_003824 equ $ ; in [POLYGENCODE.BAS] For C=0 To 10
    movlb 0x0D
ram_bank = 13
    clrf _C
_frlb__1266
ram_bank = 0
    movlw 11
    movlb 0x0D
ram_bank = 13
    subwf _C,W
    movlp ((_nxlb__1267) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _nxlb__1267
F1_003825 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[0] =0xE0
    movlb 0x02
ram_bank = 2
    movlw 224
    movwf RC522_sendData#0
F1_003826 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[1] =0x50
    movlw 80
    movwf RC522_sendData#1
F1_003828 equ $ ; in [POLYGENCODE.BAS] RC522_sendLen=2
    movlw 2
    movwf RC522_sendLen
F1_003829 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_CalculateCRC
    movlb 0x00
ram_bank = 0
    movlp ((RC522_CalculateCRC) >> 8)
    call RC522_CalculateCRC
ram_bank = 0
F1_003830 equ $ ; in [POLYGENCODE.BAS] RC522_Command=RC522_PCD_TRANSCEIVE
    movlb 0x02
ram_bank = 2
    movlw 12
    movwf RC522_Command
F1_003831 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_ToCard
    movlb 0x00
ram_bank = 0
    movlp ((RC522_ToCard) >> 8)
    call RC522_ToCard
ram_bank = 0
F1_003832 equ $ ; in [POLYGENCODE.BAS] if RC522_backLen>2 Then
    movlw 3
    subwf RC522_backLen,W
    movlp ((_lbl__1270) >> 8)
    btfss STATUS,0
    goto _lbl__1270
F1_003833 equ $ ; in [POLYGENCODE.BAS] if RC522_backLen>14 Then PaymentCardType=117
    movlw 15
    subwf RC522_backLen,W
    movlp ((_lbl__1272) >> 8)
    btfss STATUS,0
    goto _lbl__1272
    movlb 0x03
ram_bank = 3
    movlw 117
    movwf PaymentCardType
_lbl__1272
    movlb 0x00
ram_bank = 0
F1_003834 equ $ ; in [POLYGENCODE.BAS] Break
    _mjump _nxlb__1267
F1_003835 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1270
_ctlb__1268
F1_003836 equ $ ; in [POLYGENCODE.BAS] Next
    movlw 1
    movlb 0x0D
ram_bank = 13
    addwf _C,F
    movlp ((_frlb__1266) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _frlb__1266
_nxlb__1267
F1_003837 equ $ ; in [POLYGENCODE.BAS] if RC522_backLen>2 Then
    movlw 3
    subwf RC522_backLen,W
    movlp ((_lbl__1274) >> 8)
    btfss STATUS,0
    goto _lbl__1274
F1_003838 equ $ ; in [POLYGENCODE.BAS] For C=0 To 10
    movlb 0x0D
ram_bank = 13
    clrf _C
_frlb__1275
ram_bank = 0
    movlw 11
    movlb 0x0D
ram_bank = 13
    subwf _C,W
    movlp ((_nxlb__1276) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _nxlb__1276
F1_003839 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[0] =0x02
    movlb 0x02
ram_bank = 2
    movlw 2
    movwf RC522_sendData#0
F1_003840 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[1] =0x00
    clrf RC522_sendData#1
F1_003841 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[2] =0xA4
    movlw 164
    movwf RC522_sendData#2
F1_003842 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[3] =0x04
    movlw 4
    movwf RC522_sendData#3
F1_003843 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[4] =0x00
    clrf RC522_sendData#4
F1_003844 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[5] =0x0E
    movlw 14
    movwf RC522_sendData#5
F1_003845 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[6] =0x32
    movlw 50
    movwf RC522_sendData#6
F1_003846 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[7] =0x50
    movlw 80
    movwf RC522_sendData#7
F1_003847 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[8] =0x41
    movlw 65
    movwf RC522_sendData#8
F1_003848 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[9] =0x59
    movlw 89
    movwf RC522_sendData#9
F1_003849 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[10] =0x2E
    movlw 46
    movwf RC522_sendData#10
F1_003850 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[11] =0x53
    movlw 83
    movwf RC522_sendData#11
F1_003851 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[12] =0x59
    movlw 89
    movwf RC522_sendData#12
F1_003852 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[13] =0x53
    movlw 83
    movwf RC522_sendData#13
F1_003853 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[14] =0x2E
    movlw 46
    movwf RC522_sendData#14
F1_003854 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[15] =0x44
    movlw 68
    movwf RC522_sendData#15
F1_003855 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[16] =0x44
    movwf RC522_sendData#16
F1_003856 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[17] =0x46
    movlw 70
    movwf RC522_sendData#17
F1_003857 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[18] =0x30
    movlw 48
    movwf RC522_sendData#18
F1_003858 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[19] =0x31
    movlw 49
    movwf RC522_sendData#19
F1_003859 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[20] =0x00
    clrf RC522_sendData#20
F1_003860 equ $ ; in [POLYGENCODE.BAS] RC522_sendLen=21
    movlw 21
    movwf RC522_sendLen
F1_003861 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_CalculateCRC
    movlb 0x00
ram_bank = 0
    movlp ((RC522_CalculateCRC) >> 8)
    call RC522_CalculateCRC
ram_bank = 0
F1_003862 equ $ ; in [POLYGENCODE.BAS] RC522_Command=RC522_PCD_TRANSCEIVE
    movlb 0x02
ram_bank = 2
    movlw 12
    movwf RC522_Command
F1_003863 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_ToCard
    movlb 0x00
ram_bank = 0
    movlp ((RC522_ToCard) >> 8)
    call RC522_ToCard
ram_bank = 0
F1_003864 equ $ ; in [POLYGENCODE.BAS] if RC522_backLen>24 Then Break
    movlw 25
    subwf RC522_backLen,W
    movlp ((_nxlb__1276) >> 8)
    btfsc STATUS,0
    goto _nxlb__1276
_ctlb__1277
F1_003865 equ $ ; in [POLYGENCODE.BAS] Next
    movlw 1
    movlb 0x0D
ram_bank = 13
    addwf _C,F
    movlp ((_frlb__1275) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _frlb__1275
_nxlb__1276
F1_003866 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1274
F1_003867 equ $ ; in [POLYGENCODE.BAS] if RC522_backLen>24 Then
    movlw 25
    subwf RC522_backLen,W
    movlp ((_lbl__1281) >> 8)
    btfss STATUS,0
    goto _lbl__1281
F1_003870 equ $ ; in [POLYGENCODE.BAS] For N=0 To RC522_backLen
    movlb 0x02
ram_bank = 2
    clrf _N
_frlb__1282
ram_bank = 0
    movlb 0x02
ram_bank = 2
    movf _N,W
    movlb 0x00
ram_bank = 0
    subwf RC522_backLen,W
    movlp ((_nxlb__1283) >> 8)
    btfss STATUS,0
    goto _nxlb__1283
F1_003871 equ $ ; in [POLYGENCODE.BAS] if RC522_backData[N] =0xA0 Then
    movlb 0x02
ram_bank = 2
    movf _N,W
    addlw 62
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR0
    movlw 160
    subwf PBS_VAR0,W
    movlp ((_lbl__1286) >> 8)
    btfss STATUS,2
    goto _lbl__1286
F1_003874 equ $ ; in [POLYGENCODE.BAS] if RC522_backData[N+1] =0 Then
    movlb 0x02
ram_bank = 2
    incf _N,W
    addlw 62
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR0
    movf PBS_VAR0,F
    movlp ((_lbl__1288) >> 8)
    btfss STATUS,2
    goto _lbl__1288
F1_003879 equ $ ; in [POLYGENCODE.BAS] if RC522_backData[N+4] =0x04 Then
    movlw 4
    movlb 0x02
ram_bank = 2
    addwf _N,W
    addlw 62
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR0
    movlw 4
    subwf PBS_VAR0,W
    movlp ((_lbl__1290) >> 8)
    btfss STATUS,2
    goto _lbl__1290
F1_003880 equ $ ; in [POLYGENCODE.BAS] PaymentCardType=118
    movlb 0x03
ram_bank = 3
    movlw 118
    movwf PaymentCardType
F1_003881 equ $ ; in [POLYGENCODE.BAS] Break
    movlb 0x00
ram_bank = 0
    _mjump _nxlb__1283
    _mjump _lbl__1289
F1_003882 equ $ ; in [POLYGENCODE.BAS] ElseIf RC522_backData[N+4] =0x03 Then
_lbl__1290
    movlw 4
    movlb 0x02
ram_bank = 2
    addwf _N,W
    addlw 62
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR0
    movlw 3
    subwf PBS_VAR0,W
    movlp ((_lbl__1291) >> 8)
    btfss STATUS,2
    goto _lbl__1291
F1_003883 equ $ ; in [POLYGENCODE.BAS] PaymentCardType=121
    movlb 0x03
ram_bank = 3
    movlw 121
    movwf PaymentCardType
F1_003884 equ $ ; in [POLYGENCODE.BAS] Break
    movlb 0x00
ram_bank = 0
    _mjump _nxlb__1283
F1_003885 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1291
_lbl__1289
F1_003886 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1288
F1_003887 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1286
_ctlb__1284
F1_003888 equ $ ; in [POLYGENCODE.BAS] Next
    movlw 1
    movlb 0x02
ram_bank = 2
    addwf _N,F
    movlp ((_frlb__1282) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _frlb__1282
_nxlb__1283
F1_003889 equ $ ; in [POLYGENCODE.BAS] if PaymentCardType>117 Then
    movlw 118
    movlb 0x03
ram_bank = 3
    subwf PaymentCardType,W
    movlp ((_lbl__1293) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _lbl__1293
F1_003890 equ $ ; in [POLYGENCODE.BAS] For N=0 To RC522_backLen
    movlb 0x02
ram_bank = 2
    clrf _N
_frlb__1294
ram_bank = 0
    movlb 0x02
ram_bank = 2
    movf _N,W
    movlb 0x00
ram_bank = 0
    subwf RC522_backLen,W
    movlp ((_nxlb__1295) >> 8)
    btfss STATUS,0
    goto _nxlb__1295
F1_003891 equ $ ; in [POLYGENCODE.BAS] if RC522_backData[N] =0x44 And RC522_backData[N+1] =0x65 And RC522_backData[N+2] =0x62 And RC522_backData[N+3] =0x69 And RC522_backData[N+4] =0x74 Then
    movlb 0x02
ram_bank = 2
    movf _N,W
    addlw 62
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR1
    movlw 68
    subwf PBS_VAR1,W
    movlw 1
    btfss STATUS,2
    movlw 0
    movwf SP__P9_
    movlb 0x02
ram_bank = 2
    incf _N,W
    addlw 62
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR1
    movlw 101
    subwf PBS_VAR1,W
    movlw 1
    btfss STATUS,2
    movlw 0
    andwf SP__P9_,F
    movlw 2
    movlb 0x02
ram_bank = 2
    addwf _N,W
    addlw 62
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR1
    movlw 98
    subwf PBS_VAR1,W
    movlw 1
    btfss STATUS,2
    movlw 0
    andwf SP__P9_,F
    movlw 3
    movlb 0x02
ram_bank = 2
    addwf _N,W
    addlw 62
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR1
    movlw 105
    subwf PBS_VAR1,W
    movlw 1
    btfss STATUS,2
    movlw 0
    andwf SP__P9_,F
    movlw 4
    movlb 0x02
ram_bank = 2
    addwf _N,W
    addlw 62
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR1
    movlw 116
    subwf PBS_VAR1,W
    movlw 1
    btfss STATUS,2
    movlw 0
    andwf SP__P9_,F
    movlp ((_lbl__1298) >> 8)
    btfsc STATUS,2
    goto _lbl__1298
F1_003893 equ $ ; in [POLYGENCODE.BAS] if PaymentCardType=118 Then
    movlw 118
    movlb 0x03
ram_bank = 3
    subwf PaymentCardType,W
    movlp ((_lbl__1300) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1300
F1_003894 equ $ ; in [POLYGENCODE.BAS] Inc PaymentCardType
    movlb 0x03
ram_bank = 3
    incf PaymentCardType,F
F1_003895 equ $ ; in [POLYGENCODE.BAS] Inc PaymentCardType
    incf PaymentCardType,F
F1_003896 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1300
ram_bank = 0
F1_003897 equ $ ; in [POLYGENCODE.BAS] if PaymentCardType=121 Then Inc PaymentCardType
    movlw 121
    movlb 0x03
ram_bank = 3
    subwf PaymentCardType,W
    movlp ((_lbl__1302) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1302
    movlb 0x03
ram_bank = 3
    incf PaymentCardType,F
_lbl__1302
ram_bank = 0
F1_003898 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1298
F1_003899 equ $ ; in [POLYGENCODE.BAS] if RC522_backData[N] =0x43 And RC522_backData[N+1] =0x72 And RC522_backData[N+2] =0x65 And RC522_backData[N+3] =0x64 And RC522_backData[N+4] =0x69 And RC522_BACK
    movlb 0x02
ram_bank = 2
    movf _N,W
    addlw 62
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR1
    movlw 67
    subwf PBS_VAR1,W
    movlw 1
    btfss STATUS,2
    movlw 0
    movwf SP__P9_
    movlb 0x02
ram_bank = 2
    incf _N,W
    addlw 62
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR1
    movlw 114
    subwf PBS_VAR1,W
    movlw 1
    btfss STATUS,2
    movlw 0
    andwf SP__P9_,F
    movlw 2
    movlb 0x02
ram_bank = 2
    addwf _N,W
    addlw 62
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR1
    movlw 101
    subwf PBS_VAR1,W
    movlw 1
    btfss STATUS,2
    movlw 0
    andwf SP__P9_,F
    movlw 3
    movlb 0x02
ram_bank = 2
    addwf _N,W
    addlw 62
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR1
    movlw 100
    subwf PBS_VAR1,W
    movlw 1
    btfss STATUS,2
    movlw 0
    andwf SP__P9_,F
    movlw 4
    movlb 0x02
ram_bank = 2
    addwf _N,W
    addlw 62
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR1
    movlw 105
    subwf PBS_VAR1,W
    movlw 1
    btfss STATUS,2
    movlw 0
    andwf SP__P9_,F
    movlw 5
    movlb 0x02
ram_bank = 2
    addwf _N,W
    addlw 62
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR1
    movlw 116
    subwf PBS_VAR1,W
    movlw 1
    btfss STATUS,2
    movlw 0
    andwf SP__P9_,F
    movlp ((_lbl__1304) >> 8)
    btfsc STATUS,2
    goto _lbl__1304
F1_003901 equ $ ; in [POLYGENCODE.BAS] if PaymentCardType=118 Then Inc PaymentCardType
    movlw 118
    movlb 0x03
ram_bank = 3
    subwf PaymentCardType,W
    movlp ((_lbl__1306) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1306
    movlb 0x03
ram_bank = 3
    incf PaymentCardType,F
_lbl__1306
ram_bank = 0
F1_003902 equ $ ; in [POLYGENCODE.BAS] if PaymentCardType=121 Then
    movlw 121
    movlb 0x03
ram_bank = 3
    subwf PaymentCardType,W
    movlp ((_lbl__1308) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1308
F1_003903 equ $ ; in [POLYGENCODE.BAS] Inc PaymentCardType
    movlb 0x03
ram_bank = 3
    incf PaymentCardType,F
F1_003904 equ $ ; in [POLYGENCODE.BAS] Inc PaymentCardType
    incf PaymentCardType,F
F1_003905 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1308
ram_bank = 0
F1_003906 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1304
F1_003907 equ $ ; in [POLYGENCODE.BAS] if RC522_backData[N] =0x42 And RC522_backData[N+1] =0x41 And RC522_backData[N+2] =0x52 And RC522_backData[N+3] =0x43 And RC522_backData[N+7] =0x43 And RC522_BACK
    movlb 0x02
ram_bank = 2
    movf _N,W
    addlw 62
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR1
    movlw 66
    subwf PBS_VAR1,W
    movlw 1
    btfss STATUS,2
    movlw 0
    movwf SP__P9_
    movlb 0x02
ram_bank = 2
    incf _N,W
    addlw 62
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR1
    movlw 65
    subwf PBS_VAR1,W
    movlw 1
    btfss STATUS,2
    movlw 0
    andwf SP__P9_,F
    movlw 2
    movlb 0x02
ram_bank = 2
    addwf _N,W
    addlw 62
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR1
    movlw 82
    subwf PBS_VAR1,W
    movlw 1
    btfss STATUS,2
    movlw 0
    andwf SP__P9_,F
    movlw 3
    movlb 0x02
ram_bank = 2
    addwf _N,W
    addlw 62
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR1
    movlw 67
    subwf PBS_VAR1,W
    movlw 1
    btfss STATUS,2
    movlw 0
    andwf SP__P9_,F
    movlw 7
    movlb 0x02
ram_bank = 2
    addwf _N,W
    addlw 62
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR1
    movlw 67
    subwf PBS_VAR1,W
    movlw 1
    btfss STATUS,2
    movlw 0
    andwf SP__P9_,F
    movlw 5
    movlb 0x02
ram_bank = 2
    addwf _N,W
    addlw 62
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR1
    movlw 65
    subwf PBS_VAR1,W
    movlw 1
    btfss STATUS,2
    movlw 0
    andwf SP__P9_,F
    movlp ((_lbl__1310) >> 8)
    btfsc STATUS,2
    goto _lbl__1310
F1_003909 equ $ ; in [POLYGENCODE.BAS] if PaymentCardType=118 Or PaymentCardType=119 Or PaymentCardType=121 Or PaymentCardType=123 Then PaymentCardType=124
    movlw 118
    movlb 0x03
ram_bank = 3
    subwf PaymentCardType,W
    movlw 1
    btfss STATUS,2
    movlw 0
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlw 119
    movlb 0x03
ram_bank = 3
    subwf PaymentCardType,W
    movlw 1
    btfss STATUS,2
    movlw 0
    movlb 0x00
ram_bank = 0
    iorwf SP__P9_,F
    movlw 121
    movlb 0x03
ram_bank = 3
    subwf PaymentCardType,W
    movlw 1
    btfss STATUS,2
    movlw 0
    movlb 0x00
ram_bank = 0
    iorwf SP__P9_,F
    movlw 123
    movlb 0x03
ram_bank = 3
    subwf PaymentCardType,W
    movlw 1
    btfss STATUS,2
    movlw 0
    movlb 0x00
ram_bank = 0
    iorwf SP__P9_,F
    movlp ((_lbl__1312) >> 8)
    btfsc STATUS,2
    goto _lbl__1312
    movlb 0x03
ram_bank = 3
    movlw 124
    movwf PaymentCardType
_lbl__1312
ram_bank = 0
F1_003910 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1310
_ctlb__1296
F1_003911 equ $ ; in [POLYGENCODE.BAS] Next
    movlw 1
    movlb 0x02
ram_bank = 2
    addwf _N,F
    movlp ((_frlb__1294) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _frlb__1294
_nxlb__1295
F1_003912 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1293
F1_003913 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1281
F1_003914 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1265
F1_003915 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1261
F1_003916 equ $ ; in [POLYGENCODE.BAS] Clear RFIDShutdown
    bcf LATC,5
F1_003917 equ $ ; in [POLYGENCODE.BAS] return
    return
ReadMiFareNDEF
F1_003924 equ $ ; in [POLYGENCODE.BAS] Key[0] =0xD3
    movlb 0x0E
ram_bank = 14
    movlw 211
    movwf Key#0
F1_003925 equ $ ; in [POLYGENCODE.BAS] Key[1] =0xF7
    movlw 247
    movwf Key#1
F1_003926 equ $ ; in [POLYGENCODE.BAS] Key[2] =0xD3
    movlw 211
    movwf Key#2
F1_003927 equ $ ; in [POLYGENCODE.BAS] Key[3] =0xF7
    movlw 247
    movwf Key#3
F1_003928 equ $ ; in [POLYGENCODE.BAS] Key[4] =0xD3
    movlw 211
    movwf Key#4
F1_003929 equ $ ; in [POLYGENCODE.BAS] Key[5] =0xF7
    movlw 247
    movwf Key#5
F1_003953 equ $ ; in [POLYGENCODE.BAS] TabTxt[0] =9
    movlb 0x12
ram_bank = 18
    movlw 9
    movwf TabTxt#0
F1_003954 equ $ ; in [POLYGENCODE.BAS] TabTxt[1] =0
    clrf TabTxt#1
F1_003955 equ $ ; in [POLYGENCODE.BAS] Clear ConfigEntryCount
    movlb 0x0E
ram_bank = 14
    clrf ConfigEntryCount
F1_003956 equ $ ; in [POLYGENCODE.BAS] Clear NDEFStage
    clrf NDEFStage
F1_003957 equ $ ; in [POLYGENCODE.BAS] Clear NDEFLen
    clrf NDEFLenH
    clrf NDEFLen
F1_003958 equ $ ; in [POLYGENCODE.BAS] Clear InitRequested
    movlb 0x00
ram_bank = 0
    bcf _B__VR9,1
F1_003959 equ $ ; in [POLYGENCODE.BAS] Clear ReqSetLocation
    bcf _B__VR8,4
F1_003960 equ $ ; in [POLYGENCODE.BAS] Clear ReqPowerOff
    bcf _B__VR8,5
F1_003961 equ $ ; in [POLYGENCODE.BAS] Clear ReqExitCMD
    bcf _B__VR8,6
F1_003962 equ $ ; in [POLYGENCODE.BAS] Clear ReqDiags
    bcf _B__VR8,7
F1_003963 equ $ ; in [POLYGENCODE.BAS] Clear JumpCMDFound
    bcf _B__VR9,0
F1_003977 equ $ ; in [POLYGENCODE.BAS] blockAddr=2
    movlb 0x0E
ram_bank = 14
    movlw 2
    movwf blockAddr
F1_003979 equ $ ; in [POLYGENCODE.BAS] While blockAddr<56
_lbl__1313
ram_bank = 0
    movlw 56
    movlb 0x0E
ram_bank = 14
    subwf blockAddr,W
    movlp ((_lbl__1314) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__1314
F1_003980 equ $ ; in [POLYGENCODE.BAS] Inc blockAddr
    movlb 0x0E
ram_bank = 14
    incf blockAddr,F
F1_003981 equ $ ; in [POLYGENCODE.BAS] C=blockAddr & 3
    movlw 3
    andwf blockAddr,W
    movlb 0x0D
ram_bank = 13
    movwf _C
F1_003982 equ $ ; in [POLYGENCODE.BAS] if C=3 Then
    movlw 3
    subwf _C,W
    movlp ((_lbl__1316) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1316
F1_003983 equ $ ; in [POLYGENCODE.BAS] Inc blockAddr
    movlb 0x0E
ram_bank = 14
    incf blockAddr,F
F1_003984 equ $ ; in [POLYGENCODE.BAS] Set AuthNeeded
    movlb 0x00
ram_bank = 0
    bsf _B__VR9,2
F1_003985 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1316
F1_003987 equ $ ; in [POLYGENCODE.BAS] RC522_BlockAddress=blockAddr
    movlb 0x0E
ram_bank = 14
    movf blockAddr,W
    movlb 0x02
ram_bank = 2
    movwf RC522_BlockAddress
F1_003989 equ $ ; in [POLYGENCODE.BAS] if AuthNeeded=1 Then
    movlp ((_lbl__1318) >> 8)
    movlb 0x00
ram_bank = 0
    btfss _B__VR9,2
    goto _lbl__1318
F1_003990 equ $ ; in [POLYGENCODE.BAS] RetryCount=3
    movlb 0x15
ram_bank = 21
    movlw 3
    movwf RetryCount
RetryPCDAuth
    movlb 0x00
ram_bank = 0
F1_003992 equ $ ; in [POLYGENCODE.BAS] GoSub PCDAuth
    movlp ((PCDAuth) >> 8)
    call PCDAuth
ram_bank = 0
F1_003993 equ $ ; in [POLYGENCODE.BAS] if RC522_Status<>0 Then
    movlb 0x02
ram_bank = 2
    movf RC522_Status,F
    movlp ((_lbl__1320) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__1320
F1_003994 equ $ ; in [POLYGENCODE.BAS] Dec RetryCount
    movlb 0x15
ram_bank = 21
    decf RetryCount,F
F1_003995 equ $ ; in [POLYGENCODE.BAS] if RetryCount=0 Then
    movf RetryCount,F
    movlp ((_lbl__1322) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1322
F1_003996 equ $ ; in [POLYGENCODE.BAS] GoSub NoNDEF
    movlp ((NoNDEF) >> 8)
    call NoNDEF
ram_bank = 0
F1_003997 equ $ ; in [POLYGENCODE.BAS] Break
    _mjump _lbl__1314
F1_003998 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1322
F1_004000 equ $ ; in [POLYGENCODE.BAS] goto RetryPCDAuth
    _mjump RetryPCDAuth
F1_004001 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1320
F1_004002 equ $ ; in [POLYGENCODE.BAS] Clear AuthNeeded
    bcf _B__VR9,2
F1_004003 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1318
F1_004006 equ $ ; in [POLYGENCODE.BAS] RetryCount=3
    movlb 0x15
ram_bank = 21
    movlw 3
    movwf RetryCount
RetryReadSector
    movlb 0x00
ram_bank = 0
F1_004008 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_ReadSector
    movlp ((RC522_ReadSector) >> 8)
    call RC522_ReadSector
ram_bank = 0
F1_004009 equ $ ; in [POLYGENCODE.BAS] if RC522_Status<>0 Then
    movlb 0x02
ram_bank = 2
    movf RC522_Status,F
    movlp ((_lbl__1324) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__1324
F1_004010 equ $ ; in [POLYGENCODE.BAS] Dec RetryCount
    movlb 0x15
ram_bank = 21
    decf RetryCount,F
F1_004011 equ $ ; in [POLYGENCODE.BAS] if RetryCount=0 Then
    movf RetryCount,F
    movlp ((_lbl__1326) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1326
F1_004012 equ $ ; in [POLYGENCODE.BAS] GoSub NoNDEF2
    movlp ((NoNDEF2) >> 8)
    call NoNDEF2
ram_bank = 0
F1_004013 equ $ ; in [POLYGENCODE.BAS] Break
    _mjump _lbl__1314
F1_004014 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1326
F1_004016 equ $ ; in [POLYGENCODE.BAS] goto RetryReadSector
    _mjump RetryReadSector
F1_004017 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1324
F1_004019 equ $ ; in [POLYGENCODE.BAS] if RC522_backLen>3 Then
    movlw 4
    subwf RC522_backLen,W
    movlp ((_lbl__1328) >> 8)
    btfss STATUS,0
    goto _lbl__1328
F1_004020 equ $ ; in [POLYGENCODE.BAS] For NDEFPos=0 To RC522_backLen-3
    movlw 3
    subwf RC522_backLen,W
    movwf PBL_VAR0
    movlb 0x0E
ram_bank = 14
    clrf NDEFPos
_frlb__1329
ram_bank = 0
    movlb 0x0E
ram_bank = 14
    movf NDEFPos,W
    movlb 0x00
ram_bank = 0
    subwf PBL_VAR0,W
    movlp ((_nxlb__1330) >> 8)
    btfss STATUS,0
    goto _nxlb__1330
F1_004021 equ $ ; in [POLYGENCODE.BAS] Select NDEFStage
F1_004022 equ $ ; in [POLYGENCODE.BAS] Case 0
    movlb 0x0E
ram_bank = 14
    movf NDEFStage,F
    movlp ((_lbl__1333) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1333
F1_004023 equ $ ; in [POLYGENCODE.BAS] if RC522_backData[NDEFPos] =3 Then Inc NDEFStage
    movlb 0x0E
ram_bank = 14
    movf NDEFPos,W
    addlw 62
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR1
    movlw 3
    subwf PBS_VAR1,W
    movlp ((_lbl__1336) >> 8)
    btfss STATUS,2
    goto _lbl__1336
    movlb 0x0E
ram_bank = 14
    incf NDEFStage,F
_lbl__1336
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1332
_lbl__1333
F1_004024 equ $ ; in [POLYGENCODE.BAS] Case 1
    movlw 1
    movlb 0x0E
ram_bank = 14
    subwf NDEFStage,W
    movlp ((_lbl__1338) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1338
F1_004025 equ $ ; in [POLYGENCODE.BAS] Inc NDEFStage
    movlb 0x0E
ram_bank = 14
    incf NDEFStage,F
F1_004026 equ $ ; in [POLYGENCODE.BAS] Clear NDEFCount
    movlb 0x0F
ram_bank = 15
    clrf NDEFCount
F1_004027 equ $ ; in [POLYGENCODE.BAS] if RC522_backData[NDEFPos]<>0xFF Then
    movlb 0x0E
ram_bank = 14
    movf NDEFPos,W
    addlw 62
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR1
    incf PBS_VAR1,W
    movlp ((_lbl__1340) >> 8)
    btfsc STATUS,2
    goto _lbl__1340
F1_004029 equ $ ; in [POLYGENCODE.BAS] Clear NDEFLen.HighByte
    movlb 0x0E
ram_bank = 14
    clrf NDEFLenH
F1_004030 equ $ ; in [POLYGENCODE.BAS] NDEFLen.LowByte=RC522_backData[NDEFPos]
    movf NDEFPos,W
    addlw 62
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movwf NDEFLen
F1_004031 equ $ ; in [POLYGENCODE.BAS] Inc NDEFStage
    incf NDEFStage,F
F1_004032 equ $ ; in [POLYGENCODE.BAS] Inc NDEFStage
    incf NDEFStage,F
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1341
_lbl__1340
F1_004033 equ $ ; in [POLYGENCODE.BAS] else
F1_004034 equ $ ; in [POLYGENCODE.BAS] GoSub RecordInvalid
    movlp ((RecordInvalid) >> 8)
    call RecordInvalid
ram_bank = 0
F1_004035 equ $ ; in [POLYGENCODE.BAS] NDEFStage=255
    movlb 0x0E
ram_bank = 14
    movlw 255
    movwf NDEFStage
F1_004036 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1341
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1332
_lbl__1338
F1_004037 equ $ ; in [POLYGENCODE.BAS] Case 2
    movlw 2
    movlb 0x0E
ram_bank = 14
    subwf NDEFStage,W
    movlp ((_lbl__1343) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1343
F1_004038 equ $ ; in [POLYGENCODE.BAS] NDEFLen.HighByte=RC522_backData[NDEFPos]
    movlb 0x0E
ram_bank = 14
    movf NDEFPos,W
    addlw 62
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movwf NDEFLenH
F1_004039 equ $ ; in [POLYGENCODE.BAS] Inc NDEFStage
    incf NDEFStage,F
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1332
_lbl__1343
F1_004040 equ $ ; in [POLYGENCODE.BAS] Case 3
    movlw 3
    movlb 0x0E
ram_bank = 14
    subwf NDEFStage,W
    movlp ((_lbl__1345) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1345
F1_004041 equ $ ; in [POLYGENCODE.BAS] NDEFLen.LowByte=RC522_backData[NDEFPos]
    movlb 0x0E
ram_bank = 14
    movf NDEFPos,W
    addlw 62
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movwf NDEFLen
F1_004042 equ $ ; in [POLYGENCODE.BAS] Inc NDEFStage
    incf NDEFStage,F
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1332
_lbl__1345
F1_004043 equ $ ; in [POLYGENCODE.BAS] Case 4
    movlw 4
    movlb 0x0E
ram_bank = 14
    subwf NDEFStage,W
    movlp ((_lbl__1347) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1347
F1_004044 equ $ ; in [POLYGENCODE.BAS] NDEFMessage[NDEFCount] =RC522_backData[NDEFPos]
    movlb 0x0E
ram_bank = 14
    movf NDEFPos,W
    addlw 62
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR1
    movlb 0x0F
ram_bank = 15
    movf NDEFCount,W
    addlw 195
    movwf FSR0L
    movlw 0x25
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x00
ram_bank = 0
    movf PBS_VAR1,W
    movwf INDF0
F1_004045 equ $ ; in [POLYGENCODE.BAS] Inc NDEFCount
    movlb 0x0F
ram_bank = 15
    incf NDEFCount,F
F1_004046 equ $ ; in [POLYGENCODE.BAS] if NDEFCount=NDEFLen Then
    movlb 0x0E
ram_bank = 14
    movf NDEFLenH,F
    movlp ((_lbl__1349) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1349
    movlb 0x0E
ram_bank = 14
    movf NDEFLen,W
    movlb 0x0F
ram_bank = 15
    subwf NDEFCount,W
    movlp ((_lbl__1349) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1349
F1_004048 equ $ ; in [POLYGENCODE.BAS] For NDEFMessageCount=0 To NDEFCount-1
    movlb 0x0F
ram_bank = 15
    decf NDEFCount,W
    movlb 0x00
ram_bank = 0
    movwf PBL_VAR1
    movlb 0x15
ram_bank = 21
    clrf NDEFMessageCount
_frlb__1350
ram_bank = 0
    movlb 0x15
ram_bank = 21
    movf NDEFMessageCount,W
    movlb 0x00
ram_bank = 0
    subwf PBL_VAR1,W
    movlp ((_nxlb__1351) >> 8)
    btfss STATUS,0
    goto _nxlb__1351
F1_004049 equ $ ; in [POLYGENCODE.BAS] Select NDEFStage
F1_004050 equ $ ; in [POLYGENCODE.BAS] Case 4
    movlw 4
    movlb 0x0E
ram_bank = 14
    subwf NDEFStage,W
    movlp ((_lbl__1354) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1354
F1_004051 equ $ ; in [POLYGENCODE.BAS] NDEFRec=NDEFMessage[NDEFMessageCount]
    movlb 0x15
ram_bank = 21
    movf NDEFMessageCount,W
    addlw 195
    movwf FSR0L
    movlw 0x25
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x0E
ram_bank = 14
    movwf NDEFRec
F1_004052 equ $ ; in [POLYGENCODE.BAS] if NDEFRec.4=0 Then
    movlp ((_lbl__1357) >> 8)
    movf NDEFRec,W
    movlb 0x00
ram_bank = 0
    btfsc WREG,4
    goto _lbl__1357
F1_004054 equ $ ; in [POLYGENCODE.BAS] GoSub RecordInvalid
    movlp ((RecordInvalid) >> 8)
    call RecordInvalid
ram_bank = 0
F1_004055 equ $ ; in [POLYGENCODE.BAS] Break
    _mjump _nxlb__1351
F1_004056 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1357
F1_004057 equ $ ; in [POLYGENCODE.BAS] Inc NDEFStage
    movlb 0x0E
ram_bank = 14
    incf NDEFStage,F
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1353
_lbl__1354
F1_004058 equ $ ; in [POLYGENCODE.BAS] Case 5
    movlw 5
    movlb 0x0E
ram_bank = 14
    subwf NDEFStage,W
    movlp ((_lbl__1359) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1359
F1_004060 equ $ ; in [POLYGENCODE.BAS] NDEFTypeLen=NDEFMessage[NDEFMessageCount]
    movlb 0x15
ram_bank = 21
    movf NDEFMessageCount,W
    addlw 195
    movwf FSR0L
    movlw 0x25
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x0E
ram_bank = 14
    movwf NDEFTypeLen
F1_004061 equ $ ; in [POLYGENCODE.BAS] if NDEFTypeLen>50 Then
    movlw 51
    subwf NDEFTypeLen,W
    movlp ((_lbl__1361) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _lbl__1361
F1_004062 equ $ ; in [POLYGENCODE.BAS] GoSub RecordInvalid
    movlp ((RecordInvalid) >> 8)
    call RecordInvalid
ram_bank = 0
F1_004063 equ $ ; in [POLYGENCODE.BAS] Break
    _mjump _nxlb__1351
F1_004064 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1361
F1_004065 equ $ ; in [POLYGENCODE.BAS] Inc NDEFStage
    movlb 0x0E
ram_bank = 14
    incf NDEFStage,F
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1353
_lbl__1359
F1_004066 equ $ ; in [POLYGENCODE.BAS] Case 6
    movlw 6
    movlb 0x0E
ram_bank = 14
    subwf NDEFStage,W
    movlp ((_lbl__1363) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1363
F1_004068 equ $ ; in [POLYGENCODE.BAS] NDEFPayloadLen=NDEFMessage[NDEFMessageCount]
    movlb 0x15
ram_bank = 21
    movf NDEFMessageCount,W
    addlw 195
    movwf FSR0L
    movlw 0x25
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x0E
ram_bank = 14
    movwf NDEFPayloadLen
F1_004069 equ $ ; in [POLYGENCODE.BAS] Inc NDEFStage
    incf NDEFStage,F
F1_004070 equ $ ; in [POLYGENCODE.BAS] Clear NDEFType
    movlw 0x24
    movwf FSR0LH
    movlw 0xC3
    movwf FSR0L
    movlb 0x00
ram_bank = 0
    movlw 51
    movwf PP0
_pblb__1364
    movlw 0
    movwi INDF0++
    decfsz PP0,F
    bra _pblb__1364
F1_004071 equ $ ; in [POLYGENCODE.BAS] Clear NDEFCount
    movlb 0x0F
ram_bank = 15
    clrf NDEFCount
F1_004072 equ $ ; in [POLYGENCODE.BAS] if NDEFRec.3=0 Then
    movlp ((_lbl__1366) >> 8)
    movlb 0x0E
ram_bank = 14
    movf NDEFRec,W
    movlb 0x00
ram_bank = 0
    btfsc WREG,3
    goto _lbl__1366
F1_004073 equ $ ; in [POLYGENCODE.BAS] Inc NDEFStage
    movlb 0x0E
ram_bank = 14
    incf NDEFStage,F
F1_004074 equ $ ; in [POLYGENCODE.BAS] Clear NDEFIDLen
    clrf NDEFIDLen
F1_004075 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1366
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1353
_lbl__1363
F1_004076 equ $ ; in [POLYGENCODE.BAS] Case 7
    movlw 7
    movlb 0x0E
ram_bank = 14
    subwf NDEFStage,W
    movlp ((_lbl__1368) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1368
F1_004077 equ $ ; in [POLYGENCODE.BAS] NDEFIDLen=NDEFMessage[NDEFMessageCount]
    movlb 0x15
ram_bank = 21
    movf NDEFMessageCount,W
    addlw 195
    movwf FSR0L
    movlw 0x25
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x0E
ram_bank = 14
    movwf NDEFIDLen
F1_004078 equ $ ; in [POLYGENCODE.BAS] if NDEFIDLen>50 Then
    movlw 51
    subwf NDEFIDLen,W
    movlp ((_lbl__1370) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _lbl__1370
F1_004079 equ $ ; in [POLYGENCODE.BAS] GoSub  RecordInvalid2
    movlp ((RecordInvalid2) >> 8)
    call RecordInvalid2
ram_bank = 0
F1_004080 equ $ ; in [POLYGENCODE.BAS] Break
    _mjump _nxlb__1351
F1_004081 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1370
F1_004082 equ $ ; in [POLYGENCODE.BAS] Inc NDEFStage
    movlb 0x0E
ram_bank = 14
    incf NDEFStage,F
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1353
_lbl__1368
F1_004083 equ $ ; in [POLYGENCODE.BAS] Case 8
    movlw 8
    movlb 0x0E
ram_bank = 14
    subwf NDEFStage,W
    movlp ((_lbl__1372) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1372
F1_004084 equ $ ; in [POLYGENCODE.BAS] NDEFType[NDEFCount] =NDEFMessage[NDEFMessageCount]
    movlb 0x15
ram_bank = 21
    movf NDEFMessageCount,W
    addlw 195
    movwf FSR0L
    movlw 0x25
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR1
    movlb 0x0F
ram_bank = 15
    movf NDEFCount,W
    addlw 195
    movwf FSR0L
    movlw 0x24
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x00
ram_bank = 0
    movf PBS_VAR1,W
    movwf INDF0
F1_004085 equ $ ; in [POLYGENCODE.BAS] Inc NDEFCount
    movlb 0x0F
ram_bank = 15
    incf NDEFCount,F
F1_004086 equ $ ; in [POLYGENCODE.BAS] if NDEFCount=NDEFTypeLen Then
    movf NDEFCount,W
    movlb 0x0E
ram_bank = 14
    subwf NDEFTypeLen,W
    movlp ((_lbl__1374) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1374
F1_004087 equ $ ; in [POLYGENCODE.BAS] Inc NDEFStage
    movlb 0x0E
ram_bank = 14
    incf NDEFStage,F
F1_004088 equ $ ; in [POLYGENCODE.BAS] Clear NDEFID
    movlw 0x24
    movwf FSR0LH
    movlw 0x90
    movwf FSR0L
    movlb 0x00
ram_bank = 0
    movlw 51
    movwf PP0
_pblb__1375
    movlw 0
    movwi INDF0++
    decfsz PP0,F
    bra _pblb__1375
F1_004089 equ $ ; in [POLYGENCODE.BAS] Clear NDEFCount
    movlb 0x0F
ram_bank = 15
    clrf NDEFCount
F1_004090 equ $ ; in [POLYGENCODE.BAS] Clear NDEFPayload
    movlw 0x24
    movwf FSR0LH
    movlw 0xF7
    movwf FSR0L
    movlb 0x00
ram_bank = 0
    movlw 201
    movwf PP0
_pblb__1376
    movlw 0
    movwi INDF0++
    decfsz PP0,F
    bra _pblb__1376
F1_004091 equ $ ; in [POLYGENCODE.BAS] if NDEFIDLen=0 Then Inc NDEFStage
    movlb 0x0E
ram_bank = 14
    movf NDEFIDLen,F
    movlp ((_lbl__1378) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1378
    movlb 0x0E
ram_bank = 14
    incf NDEFStage,F
_lbl__1378
    movlb 0x00
ram_bank = 0
F1_004092 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1374
    _mjump _lbl__1353
_lbl__1372
F1_004093 equ $ ; in [POLYGENCODE.BAS] Case 9
    movlw 9
    movlb 0x0E
ram_bank = 14
    subwf NDEFStage,W
    movlp ((_lbl__1380) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1380
F1_004094 equ $ ; in [POLYGENCODE.BAS] NDEFID[NDEFCount] =NDEFMessage[NDEFMessageCount]
    movlb 0x15
ram_bank = 21
    movf NDEFMessageCount,W
    addlw 195
    movwf FSR0L
    movlw 0x25
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR1
    movlb 0x0F
ram_bank = 15
    movf NDEFCount,W
    addlw 144
    movwf FSR0L
    movlw 0x24
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x00
ram_bank = 0
    movf PBS_VAR1,W
    movwf INDF0
F1_004095 equ $ ; in [POLYGENCODE.BAS] Inc NDEFCount
    movlb 0x0F
ram_bank = 15
    incf NDEFCount,F
F1_004096 equ $ ; in [POLYGENCODE.BAS] if NDEFCount=NDEFIDLen Then
    movf NDEFCount,W
    movlb 0x0E
ram_bank = 14
    subwf NDEFIDLen,W
    movlp ((_lbl__1382) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1382
F1_004097 equ $ ; in [POLYGENCODE.BAS] Inc NDEFStage
    movlb 0x0E
ram_bank = 14
    incf NDEFStage,F
F1_004098 equ $ ; in [POLYGENCODE.BAS] Clear NDEFCount
    movlb 0x0F
ram_bank = 15
    clrf NDEFCount
F1_004099 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1382
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1353
_lbl__1380
F1_004100 equ $ ; in [POLYGENCODE.BAS] Case 10
    movlw 10
    movlb 0x0E
ram_bank = 14
    subwf NDEFStage,W
    movlp ((_lbl__1384) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1384
F1_004101 equ $ ; in [POLYGENCODE.BAS] NDEFPayload[NDEFCount] =NDEFMessage[NDEFMessageCount]
    movlb 0x15
ram_bank = 21
    movf NDEFMessageCount,W
    addlw 195
    movwf FSR0L
    movlw 0x25
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR1
    movlb 0x0F
ram_bank = 15
    movf NDEFCount,W
    addlw 247
    movwf FSR0L
    movlw 0x24
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x00
ram_bank = 0
    movf PBS_VAR1,W
    movwf INDF0
F1_004102 equ $ ; in [POLYGENCODE.BAS] Inc NDEFCount
    movlb 0x0F
ram_bank = 15
    incf NDEFCount,F
F1_004103 equ $ ; in [POLYGENCODE.BAS] if NDEFCount=NDEFPayloadLen Then
    movf NDEFCount,W
    movlb 0x0E
ram_bank = 14
    subwf NDEFPayloadLen,W
    movlp ((_lbl__1386) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1386
F1_004104 equ $ ; in [POLYGENCODE.BAS] if NDEFRec & %00000111 = 2 Then
    movlw 7
    movlb 0x0E
ram_bank = 14
    andwf NDEFRec,W
    movlb 0x00
ram_bank = 0
    clrf PBS_VAR1H
    movwf PBS_VAR1
    movf PBS_VAR1,W
    xorlw 2
    iorwf PBS_VAR1H,W
    movlp ((_lbl__1388) >> 8)
    btfss STATUS,2
    goto _lbl__1388
F1_004105 equ $ ; in [POLYGENCODE.BAS] if NDEFType="TEXT/INIT" Then
    movlw ((((_strlb__33) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__33) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x24
    movwf FSR0LH
    movlw 0xC3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__1390) >> 8)
    btfss STATUS,2
    goto _lbl__1390
F1_004106 equ $ ; in [POLYGENCODE.BAS] Set InitRequested
    bsf _B__VR9,1
    _mjump _lbl__1389
F1_004107 equ $ ; in [POLYGENCODE.BAS] ElseIf NDEFType="TEXT/SETLOC" Then
_lbl__1390
    movlw ((((_strlb__34) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__34) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x24
    movwf FSR0LH
    movlw 0xC3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__1391) >> 8)
    btfss STATUS,2
    goto _lbl__1391
F1_004108 equ $ ; in [POLYGENCODE.BAS] Set ReqSetLocation
    bsf _B__VR8,4
F1_004109 equ $ ; in [POLYGENCODE.BAS] Set JumpCMDFound
    bsf _B__VR9,0
    _mjump _lbl__1389
F1_004110 equ $ ; in [POLYGENCODE.BAS] ElseIf NDEFType="TEXT/PWROFF" Then
_lbl__1391
    movlw ((((_strlb__35) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__35) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x24
    movwf FSR0LH
    movlw 0xC3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__1392) >> 8)
    btfss STATUS,2
    goto _lbl__1392
F1_004111 equ $ ; in [POLYGENCODE.BAS] Set ReqPowerOff
    bsf _B__VR8,5
F1_004112 equ $ ; in [POLYGENCODE.BAS] Set JumpCMDFound
    bsf _B__VR9,0
    _mjump _lbl__1389
F1_004113 equ $ ; in [POLYGENCODE.BAS] ElseIf NDEFType="TEXT/EXITCMD" Then
_lbl__1392
    movlw ((((_strlb__36) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__36) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x24
    movwf FSR0LH
    movlw 0xC3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__1393) >> 8)
    btfss STATUS,2
    goto _lbl__1393
F1_004114 equ $ ; in [POLYGENCODE.BAS] Set ReqExitCMD
    bsf _B__VR8,6
F1_004115 equ $ ; in [POLYGENCODE.BAS] Set JumpCMDFound
    bsf _B__VR9,0
    _mjump _lbl__1389
F1_004116 equ $ ; in [POLYGENCODE.BAS] ElseIf NDEFType="TEXT/DIAGS" Then
_lbl__1393
    movlw ((((_strlb__37) + 0X8000) >> 8) & 0xFF)
    movwf FSR1LH
    movlw (((_strlb__37) + 0X8000) & 0xFF)
    movwf FSR1L
    movlw 0x24
    movwf FSR0LH
    movlw 0xC3
    movwf FSR0L
    moviw INDF1++
    subwf INDF0,W
    btfss STATUS,2
    bra $ + 4
    moviw INDF0++
    btfss STATUS,2
    bra $ - 6
    movlp ((_lbl__1394) >> 8)
    btfss STATUS,2
    goto _lbl__1394
F1_004117 equ $ ; in [POLYGENCODE.BAS] Set ReqDiags
    bsf _B__VR8,7
F1_004118 equ $ ; in [POLYGENCODE.BAS] Set JumpCMDFound
    bsf _B__VR9,0
    _mjump _lbl__1395
_lbl__1394
F1_004119 equ $ ; in [POLYGENCODE.BAS] else
F1_004121 equ $ ; in [POLYGENCODE.BAS] CMDBase[0] ="J"
    movlb 0x15
ram_bank = 21
    movlw 74
    movwf CMDBase#0
F1_004122 equ $ ; in [POLYGENCODE.BAS] CMDBase[1] =0
    clrf CMDBase#1
F1_004123 equ $ ; in [POLYGENCODE.BAS] WiFiCMD=CMDBase + NDEFType + TabTxt + NDEFPayload
    movlw 34
    movwf FSR0LH
    movlw 120
    movwf FSR0L
    movlw 0x26
    movwf FSR1LH
    movlw 0xBF
    movwf FSR1L
    movlb 0x00
ram_bank = 0
    movlw 4
    movwf PP0
_pblb__1396
    movf INDF1,F
    btfsc STATUS,2
    bra _pblb__1397
    moviw INDF1++
    movwi INDF0++
    decfsz PP0,F
    bra _pblb__1396
_pblb__1397
    movlw 0x24
    movwf FSR1LH
    movlw 0xC3
    movwf FSR1L
    movlw 50
    movwf PP0
_pblb__1398
    movf INDF1,F
    btfsc STATUS,2
    bra _pblb__1399
    moviw INDF1++
    movwi INDF0++
    decfsz PP0,F
    bra _pblb__1398
_pblb__1399
    movlw 0x25
    movwf FSR1LH
    movlw 0xC0
    movwf FSR1L
    movlw 2
    movwf PP0
_pblb__1400
    movf INDF1,F
    btfsc STATUS,2
    bra _pblb__1401
    moviw INDF1++
    movwi INDF0++
    decfsz PP0,F
    bra _pblb__1400
_pblb__1401
    movlw 0x24
    movwf FSR1LH
    movlw 0xF7
    movwf FSR1L
    movlw 200
    movwf PP0
_pblb__1402
    movf INDF1,F
    btfsc STATUS,2
    bra _pblb__1403
    moviw INDF1++
    movwi INDF0++
    decfsz PP0,F
    bra _pblb__1402
_pblb__1403
    clrf INDF0
F1_004124 equ $ ; in [POLYGENCODE.BAS] Inc ConfigEntryCount
    movlb 0x0E
ram_bank = 14
    incf ConfigEntryCount,F
F1_004127 equ $ ; in [POLYGENCODE.BAS] GoSub SendWiFiCMD
    movlb 0x00
ram_bank = 0
    movlp ((SendWiFiCMD) >> 8)
    call SendWiFiCMD
ram_bank = 0
F1_004128 equ $ ; in [POLYGENCODE.BAS] GeneralTimer=500
    movlb 0x0D
ram_bank = 13
    movlw 1
    movwf GeneralTimerH
    movlw 244
    movwf GeneralTimer
F1_004129 equ $ ; in [POLYGENCODE.BAS] While TXInProgress=1 And GeneralTimer>0
_lbl__1404
    movlb 0x00
ram_bank = 0
    movlw 0
    btfsc _B__VR3,3
    movlw 1
    movwf SP__P9_
    movlb 0x0D
ram_bank = 13
    movf GeneralTimer,W
    iorwf GeneralTimerH,W
    movlp ((_cplb__115) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _cplb__115
_cplb__116
ram_bank = 255
    clrw
    btfss STATUS,2
_cplb__115
    movlw 1
    movlb 0x00
ram_bank = 0
    andwf SP__P9_,F
    movlp ((_lbl__1405) >> 8)
    btfsc STATUS,2
    goto _lbl__1405
F1_004130 equ $ ; in [POLYGENCODE.BAS] GoSub IdleTasks
    movlp ((IdleTasks) >> 8)
    call IdleTasks
ram_bank = 0
F1_004131 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__1404
_lbl__1405
F1_004132 equ $ ; in [POLYGENCODE.BAS] GeneralTimer=25
    movlb 0x0D
ram_bank = 13
    clrf GeneralTimerH
    movlw 25
    movwf GeneralTimer
F1_004133 equ $ ; in [POLYGENCODE.BAS] While GeneralTimer>0
_lbl__1406
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movf GeneralTimer,F
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    bra _cplb__117
    movlb 0x0D
ram_bank = 13
    movf GeneralTimerH,F
    movlp ((_lbl__1407) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__1407
_cplb__117
ram_bank = 255
F1_004134 equ $ ; in [POLYGENCODE.BAS] GoSub IdleTasks
    movlb 0x00
ram_bank = 0
    movlp ((IdleTasks) >> 8)
    call IdleTasks
ram_bank = 0
F1_004135 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__1406
_lbl__1407
F1_004140 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1395
_lbl__1389
F1_004141 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1388
F1_004142 equ $ ; in [POLYGENCODE.BAS] Clear NDEFCount
    movlb 0x0F
ram_bank = 15
    clrf NDEFCount
F1_004143 equ $ ; in [POLYGENCODE.BAS] if NDEFRec.6=1 Then
    movlp ((_lbl__1409) >> 8)
    movlb 0x0E
ram_bank = 14
    movf NDEFRec,W
    movlb 0x00
ram_bank = 0
    btfss WREG,6
    goto _lbl__1409
F1_004144 equ $ ; in [POLYGENCODE.BAS] Clear NDEFStage
    movlb 0x0E
ram_bank = 14
    clrf NDEFStage
F1_004145 equ $ ; in [POLYGENCODE.BAS] if ConfigEntryCount>0 Then
    movf ConfigEntryCount,F
    movlp ((_lbl__1411) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__1411
F1_004146 equ $ ; in [POLYGENCODE.BAS] SoundTemp=95
    movlb 0x0B
ram_bank = 11
    movlw 95
    movwf SoundTemp
F1_004147 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_004148 equ $ ; in [POLYGENCODE.BAS] SoundTemp=ConfigEntryCount
    movlb 0x0E
ram_bank = 14
    movf ConfigEntryCount,W
    movlb 0x0B
ram_bank = 11
    movwf SoundTemp
F1_004149 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_004150 equ $ ; in [POLYGENCODE.BAS] SoundTemp=96
    movlb 0x0B
ram_bank = 11
    movlw 96
    movwf SoundTemp
F1_004151 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
    _mjump _lbl__1412
_lbl__1411
F1_004152 equ $ ; in [POLYGENCODE.BAS] else
F1_004153 equ $ ; in [POLYGENCODE.BAS] if JumpCMDFound=0 Then
    movlp ((_lbl__1414) >> 8)
    btfsc _B__VR9,0
    goto _lbl__1414
F1_004154 equ $ ; in [POLYGENCODE.BAS] SoundTemp=97
    movlb 0x0B
ram_bank = 11
    movlw 97
    movwf SoundTemp
F1_004155 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_004156 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1414
F1_004157 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1412
F1_004158 equ $ ; in [POLYGENCODE.BAS] if InitRequested=1 Then
    movlp ((_lbl__1416) >> 8)
    btfss _B__VR9,1
    goto _lbl__1416
F1_004159 equ $ ; in [POLYGENCODE.BAS] GoSub WaitForSound
    movlp ((WaitForSound) >> 8)
    call WaitForSound
ram_bank = 0
F1_004160 equ $ ; in [POLYGENCODE.BAS] Clear WifiInitSuccess
    bcf _B__VR2,4
F1_004161 equ $ ; in [POLYGENCODE.BAS] Clear WifiInitSent
    bcf _B__VR2,5
F1_004162 equ $ ; in [POLYGENCODE.BAS] Clear WifiInitNoKeys
    bcf _B__VR2,6
F1_004163 equ $ ; in [POLYGENCODE.BAS] WiFiCMD[0] ="I"
    movlb 0x07
ram_bank = 7
    movlw 73
    movwf WiFiCMD#0
F1_004164 equ $ ; in [POLYGENCODE.BAS] Clear WiFiCMD[1]
    clrf WiFiCMD#1
F1_004165 equ $ ; in [POLYGENCODE.BAS] GoSub SendWiFiCMD
    movlb 0x00
ram_bank = 0
    movlp ((SendWiFiCMD) >> 8)
    call SendWiFiCMD
ram_bank = 0
F1_004166 equ $ ; in [POLYGENCODE.BAS] SoundTemp=100
    movlb 0x0B
ram_bank = 11
    movlw 100
    movwf SoundTemp
F1_004167 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_004168 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_004170 equ $ ; in [POLYGENCODE.BAS] GoSub WaitForSound
    movlp ((WaitForSound) >> 8)
    call WaitForSound
ram_bank = 0
F1_004176 equ $ ; in [POLYGENCODE.BAS] if WifiInitNoKeys=1 Then
    movlp ((_lbl__1418) >> 8)
    btfss _B__VR2,6
    goto _lbl__1418
F1_004177 equ $ ; in [POLYGENCODE.BAS] SoundTemp=36
    movlb 0x0B
ram_bank = 11
    movlw 36
    movwf SoundTemp
F1_004178 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_004179 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1418
F1_004180 equ $ ; in [POLYGENCODE.BAS] if WifiInitSent=1 Then
    movlp ((_lbl__1420) >> 8)
    btfss _B__VR2,5
    goto _lbl__1420
F1_004181 equ $ ; in [POLYGENCODE.BAS] GeneralTimer=250
    movlb 0x0D
ram_bank = 13
    clrf GeneralTimerH
    movlw 250
    movwf GeneralTimer
F1_004182 equ $ ; in [POLYGENCODE.BAS] While GeneralTimer>0 And WifiInitSuccess=0
_lbl__1421
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movf GeneralTimer,W
    iorwf GeneralTimerH,W
    movlp ((_cplb__118) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _cplb__118
_cplb__119
ram_bank = 255
    clrw
    btfss STATUS,2
_cplb__118
    movlw 1
    movlb 0x00
ram_bank = 0
    movwf SP__P9_
    movlw 1
    btfsc _B__VR2,4
    movlw 0
    andwf SP__P9_,F
    movlp ((_lbl__1422) >> 8)
    btfsc STATUS,2
    goto _lbl__1422
F1_004183 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateSound
    movlp ((UpdateSound) >> 8)
    call UpdateSound
ram_bank = 0
F1_004184 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__1421
_lbl__1422
F1_004185 equ $ ; in [POLYGENCODE.BAS] if WifiInitSuccess=0 Then
    movlp ((_lbl__1424) >> 8)
    btfsc _B__VR2,4
    goto _lbl__1424
F1_004186 equ $ ; in [POLYGENCODE.BAS] SoundTemp=037
    movlb 0x0B
ram_bank = 11
    movlw 37
    movwf SoundTemp
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1425
_lbl__1424
F1_004187 equ $ ; in [POLYGENCODE.BAS] else
F1_004188 equ $ ; in [POLYGENCODE.BAS] SoundTemp=27
    movlb 0x0B
ram_bank = 11
    movlw 27
    movwf SoundTemp
F1_004189 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1425
    movlb 0x00
ram_bank = 0
F1_004190 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
    _mjump _lbl__1426
_lbl__1420
F1_004191 equ $ ; in [POLYGENCODE.BAS] else
F1_004192 equ $ ; in [POLYGENCODE.BAS] SoundTemp=037
    movlb 0x0B
ram_bank = 11
    movlw 37
    movwf SoundTemp
F1_004193 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlb 0x00
ram_bank = 0
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_004194 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1426
    _mjump _lbl__1427
_lbl__1416
F1_004195 equ $ ; in [POLYGENCODE.BAS] else
F1_004196 equ $ ; in [POLYGENCODE.BAS] if JumpCMDFound=0 Then
    movlp ((_lbl__1429) >> 8)
    btfsc _B__VR9,0
    goto _lbl__1429
F1_004198 equ $ ; in [POLYGENCODE.BAS] GeneralTimer=100
    movlb 0x0D
ram_bank = 13
    clrf GeneralTimerH
    movlw 100
    movwf GeneralTimer
F1_004199 equ $ ; in [POLYGENCODE.BAS] While GeneralTimer>0
_lbl__1430
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movf GeneralTimer,F
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    bra _cplb__120
    movlb 0x0D
ram_bank = 13
    movf GeneralTimerH,F
    movlp ((_lbl__1431) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__1431
_cplb__120
ram_bank = 255
F1_004200 equ $ ; in [POLYGENCODE.BAS] GoSub IdleTasks
    movlb 0x00
ram_bank = 0
    movlp ((IdleTasks) >> 8)
    call IdleTasks
ram_bank = 0
F1_004201 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__1430
_lbl__1431
F1_004202 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOffWiFi
    movlp ((PowerOffWiFi) >> 8)
    call PowerOffWiFi
ram_bank = 0
F1_004203 equ $ ; in [POLYGENCODE.BAS] GeneralTimer=100
    movlb 0x0D
ram_bank = 13
    clrf GeneralTimerH
    movlw 100
    movwf GeneralTimer
F1_004204 equ $ ; in [POLYGENCODE.BAS] While GeneralTimer>0
_lbl__1432
ram_bank = 0
    movlb 0x0D
ram_bank = 13
    movf GeneralTimer,F
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    bra _cplb__121
    movlb 0x0D
ram_bank = 13
    movf GeneralTimerH,F
    movlp ((_lbl__1433) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__1433
_cplb__121
ram_bank = 255
F1_004205 equ $ ; in [POLYGENCODE.BAS] GoSub IdleTasks
    movlb 0x00
ram_bank = 0
    movlp ((IdleTasks) >> 8)
    call IdleTasks
ram_bank = 0
F1_004206 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__1432
_lbl__1433
F1_004207 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOnWiFi
    movlp ((PowerOnWiFi) >> 8)
    call PowerOnWiFi
ram_bank = 0
F1_004208 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1429
F1_004209 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1427
F1_004210 equ $ ; in [POLYGENCODE.BAS] GoSub WaitForSound
    movlp ((WaitForSound) >> 8)
    call WaitForSound
ram_bank = 0
F1_004211 equ $ ; in [POLYGENCODE.BAS] if WifiInitSuccess=1 Then goto PowerOff
    movlp ((PowerOff) >> 8)
    btfsc _B__VR2,4
    goto PowerOff
F1_004212 equ $ ; in [POLYGENCODE.BAS] NDEFStage=255
    movlb 0x0E
ram_bank = 14
    movlw 255
    movwf NDEFStage
F1_004213 equ $ ; in [POLYGENCODE.BAS] Break
    movlb 0x00
ram_bank = 0
    _mjump _nxlb__1351
    _mjump _lbl__1436
_lbl__1409
F1_004214 equ $ ; in [POLYGENCODE.BAS] else
F1_004215 equ $ ; in [POLYGENCODE.BAS] NDEFStage=4
    movlb 0x0E
ram_bank = 14
    movlw 4
    movwf NDEFStage
F1_004216 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1436
ram_bank = 0
F1_004217 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1386
F1_004219 equ $ ; in [POLYGENCODE.BAS] EndSelect
_lbl__1384
_lbl__1353
_ctlb__1352
F1_004220 equ $ ; in [POLYGENCODE.BAS] Next
    movlw 1
    movlb 0x15
ram_bank = 21
    addwf NDEFMessageCount,F
    movlp ((_frlb__1350) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _frlb__1350
_nxlb__1351
F1_004221 equ $ ; in [POLYGENCODE.BAS] NDEFStage=255
    movlb 0x0E
ram_bank = 14
    movlw 255
    movwf NDEFStage
F1_004222 equ $ ; in [POLYGENCODE.BAS] Break
    movlb 0x00
ram_bank = 0
    _mjump _nxlb__1330
F1_004223 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1349
    _mjump _lbl__1332
_lbl__1347
F1_004225 equ $ ; in [POLYGENCODE.BAS] Case 255
    movlb 0x0E
ram_bank = 14
    incf NDEFStage,W
    movlp ((_lbl__1438) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1438
F1_004226 equ $ ; in [POLYGENCODE.BAS] Break
    _mjump _nxlb__1330
F1_004227 equ $ ; in [POLYGENCODE.BAS] EndSelect
_lbl__1438
_lbl__1332
_ctlb__1331
F1_004228 equ $ ; in [POLYGENCODE.BAS] Next
    movlw 1
    movlb 0x0E
ram_bank = 14
    addwf NDEFPos,F
    movlp ((_frlb__1329) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _frlb__1329
_nxlb__1330
F1_004229 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1328
F1_004230 equ $ ; in [POLYGENCODE.BAS] if NDEFStage=255 Then Break
    movlb 0x0E
ram_bank = 14
    incf NDEFStage,W
    movlp ((_lbl__1314) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__1314
F1_004231 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__1313
_lbl__1314
F1_004233 equ $ ; in [POLYGENCODE.BAS] return
    return
RecordInvalid2
F1_004238 equ $ ; in [POLYGENCODE.BAS] SoundTemp=88
    movlb 0x0B
ram_bank = 11
    movlw 88
    movwf SoundTemp
F1_004239 equ $ ; in [POLYGENCODE.BAS] goto NDEFErrorSound
    movlb 0x00
ram_bank = 0
    _mjump NDEFErrorSound
NoNDEF2
NoNDEF
F1_004248 equ $ ; in [POLYGENCODE.BAS] SoundTemp=98
    movlb 0x0B
ram_bank = 11
    movlw 98
    movwf SoundTemp
F1_004249 equ $ ; in [POLYGENCODE.BAS] goto NDEFErrorFinal
    movlb 0x00
ram_bank = 0
    _mjump NDEFErrorFinal
RecordInvalid
F1_004256 equ $ ; in [POLYGENCODE.BAS] SoundTemp=99
    movlb 0x0B
ram_bank = 11
    movlw 99
    movwf SoundTemp
NDEFErrorFinal
ram_bank = 0
F1_004259 equ $ ; in [POLYGENCODE.BAS] NDEFStage=255
    movlb 0x0E
ram_bank = 14
    movlw 255
    movwf NDEFStage
NDEFErrorSound
    movlb 0x00
ram_bank = 0
F1_004262 equ $ ; in [POLYGENCODE.BAS] GoSub QueueSound
    movlp ((QueueSound) >> 8)
    call QueueSound
ram_bank = 0
F1_004263 equ $ ; in [POLYGENCODE.BAS] goto WaitForSound
    _mjump WaitForSound
PCDAuth
F1_004267 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[0] =0x60
    movlb 0x02
ram_bank = 2
    movlw 96
    movwf RC522_sendData#0
F1_004268 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[1] =blockAddr
    movlb 0x0E
ram_bank = 14
    movf blockAddr,W
    movlb 0x02
ram_bank = 2
    movwf RC522_sendData#1
F1_004269 equ $ ; in [POLYGENCODE.BAS] For N=0 To 5
    clrf _N
_frlb__1441
ram_bank = 0
    movlw 6
    movlb 0x02
ram_bank = 2
    subwf _N,W
    movlp ((_nxlb__1442) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _nxlb__1442
F1_004270 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[N+2] =Key[N]
    movlw 2
    movlb 0x02
ram_bank = 2
    addwf _N,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR2
    movlb 0x02
ram_bank = 2
    movf _N,W
    addlw 128
    movwf FSR0L
    movlw 0x24
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR1
    movf PBS_VAR2,W
    addlw 163
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf PBS_VAR1,W
    movwf INDF0
_ctlb__1443
F1_004271 equ $ ; in [POLYGENCODE.BAS] Next
    movlw 1
    movlb 0x02
ram_bank = 2
    addwf _N,F
    movlp ((_frlb__1441) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _frlb__1441
_nxlb__1442
F1_004272 equ $ ; in [POLYGENCODE.BAS] For N=0 To 3
    movlb 0x02
ram_bank = 2
    clrf _N
_frlb__1444
ram_bank = 0
    movlw 4
    movlb 0x02
ram_bank = 2
    subwf _N,W
    movlp ((_nxlb__1445) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _nxlb__1445
F1_004273 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[N+8] = RC522_Token[N]
    movlw 8
    movlb 0x02
ram_bank = 2
    addwf _N,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR2
    movlb 0x02
ram_bank = 2
    movf _N,W
    addlw 227
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR1
    movf PBS_VAR2,W
    addlw 163
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf PBS_VAR1,W
    movwf INDF0
_ctlb__1446
F1_004274 equ $ ; in [POLYGENCODE.BAS] Next
    movlw 1
    movlb 0x02
ram_bank = 2
    addwf _N,F
    movlp ((_frlb__1444) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _frlb__1444
_nxlb__1445
F1_004275 equ $ ; in [POLYGENCODE.BAS] RC522_Command=RC522_PCD_AUTHENT
    movlb 0x02
ram_bank = 2
    movlw 14
    movwf RC522_Command
F1_004276 equ $ ; in [POLYGENCODE.BAS] RC522_sendLen=12
    movlw 12
    movwf RC522_sendLen
F1_004277 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_ToCard
    movlb 0x00
ram_bank = 0
    movlp ((RC522_ToCard) >> 8)
    call RC522_ToCard
ram_bank = 0
F1_004278 equ $ ; in [POLYGENCODE.BAS] return
    return
RC522_DetectCard
F1_004282 equ $ ; in [POLYGENCODE.BAS] Clear RC522_TokenLen
    movlb 0x02
ram_bank = 2
    clrf RC522_TokenLen
F1_004283 equ $ ; in [POLYGENCODE.BAS] RC522_RequestMode=RC522_PICC_REQIDL
    movlw 38
    movwf RC522_RequestMode
F1_004284 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Request
    movlb 0x00
ram_bank = 0
    movlp ((RC522_Request) >> 8)
    call RC522_Request
ram_bank = 0
F1_004285 equ $ ; in [POLYGENCODE.BAS] if RC522_Status=RC522_MI_OK Then
    movlb 0x02
ram_bank = 2
    movf RC522_Status,F
    movlp ((_lbl__1448) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1448
F1_004286 equ $ ; in [POLYGENCODE.BAS] RC522_ATQA[0] =RC522_backData[0]
    movf RC522_backData#0,W
    movwf PBS_VAR1
    movf PBS_VAR1,W
    movlb 0x02
ram_bank = 2
    movwf RC522_ATQA#0
F1_004287 equ $ ; in [POLYGENCODE.BAS] RC522_ATQA[1] =RC522_backData[1]
    movlb 0x00
ram_bank = 0
    movf RC522_backData#1,W
    movwf PBS_VAR1
    movf PBS_VAR1,W
    movlb 0x02
ram_bank = 2
    movwf RC522_ATQA#1
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1449
_lbl__1448
F1_004288 equ $ ; in [POLYGENCODE.BAS] else
F1_004289 equ $ ; in [POLYGENCODE.BAS] return
    return
F1_004290 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__1449
F1_004291 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateAnimation
    movlp ((UpdateAnimation) >> 8)
    call UpdateAnimation
ram_bank = 0
F1_004292 equ $ ; in [POLYGENCODE.BAS] RC522_Level=RC522_PICC_ANTICOLL_CL1
    movlb 0x02
ram_bank = 2
    movlw 147
    movwf RC522_Level
F1_004293 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Anticoll
    movlb 0x00
ram_bank = 0
    movlp ((RC522_Anticoll) >> 8)
    call RC522_Anticoll
ram_bank = 0
F1_004294 equ $ ; in [POLYGENCODE.BAS] if RC522_Status=RC522_MI_OK Then
    movlb 0x02
ram_bank = 2
    movf RC522_Status,F
    movlp ((_lbl__1451) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1451
F1_004295 equ $ ; in [POLYGENCODE.BAS] if RC522_backData[0] =0x88 Then
    movf RC522_backData#0,W
    movwf PBS_VAR1
    movlw 136
    subwf PBS_VAR1,W
    movlp ((_lbl__1453) >> 8)
    btfss STATUS,2
    goto _lbl__1453
F1_004297 equ $ ; in [POLYGENCODE.BAS] RC522_Token[0] =RC522_backData[1]
    movf RC522_backData#1,W
    movwf PBS_VAR1
    movf PBS_VAR1,W
    movlb 0x02
ram_bank = 2
    movwf RC522_Token#0
F1_004298 equ $ ; in [POLYGENCODE.BAS] RC522_Token[1] =RC522_backData[2]
    movlb 0x00
ram_bank = 0
    movf RC522_backData#2,W
    movwf PBS_VAR1
    movf PBS_VAR1,W
    movlb 0x02
ram_bank = 2
    movwf RC522_Token#1
F1_004299 equ $ ; in [POLYGENCODE.BAS] RC522_Token[2] =RC522_backData[3]
    movlb 0x00
ram_bank = 0
    movf RC522_backData#3,W
    movwf PBS_VAR1
    movf PBS_VAR1,W
    movlb 0x02
ram_bank = 2
    movwf RC522_Token#2
F1_004300 equ $ ; in [POLYGENCODE.BAS] RC522_Level=RC522_PICC_SELECTTAG_CL1
    movlw 147
    movwf RC522_Level
F1_004301 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_SelectTag
    movlb 0x00
ram_bank = 0
    movlp ((RC522_SelectTag) >> 8)
    call RC522_SelectTag
ram_bank = 0
F1_004302 equ $ ; in [POLYGENCODE.BAS] RC522_Level=RC522_PICC_ANTICOLL_CL2
    movlb 0x02
ram_bank = 2
    movlw 149
    movwf RC522_Level
F1_004303 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Anticoll
    movlb 0x00
ram_bank = 0
    movlp ((RC522_Anticoll) >> 8)
    call RC522_Anticoll
ram_bank = 0
F1_004304 equ $ ; in [POLYGENCODE.BAS] if RC522_Status=RC522_MI_OK Then
    movlb 0x02
ram_bank = 2
    movf RC522_Status,F
    movlp ((_lbl__1455) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1455
F1_004305 equ $ ; in [POLYGENCODE.BAS] if RC522_backData[0] =0x88 Then
    movf RC522_backData#0,W
    movwf PBS_VAR1
    movlw 136
    subwf PBS_VAR1,W
    movlp ((_lbl__1457) >> 8)
    btfss STATUS,2
    goto _lbl__1457
F1_004306 equ $ ; in [POLYGENCODE.BAS] RC522_Token[3] =RC522_backData[1]
    movf RC522_backData#1,W
    movwf PBS_VAR1
    movf PBS_VAR1,W
    movlb 0x02
ram_bank = 2
    movwf RC522_Token#3
F1_004307 equ $ ; in [POLYGENCODE.BAS] RC522_Token[4] =RC522_backData[2]
    movlb 0x00
ram_bank = 0
    movf RC522_backData#2,W
    movwf PBS_VAR1
    movf PBS_VAR1,W
    movlb 0x02
ram_bank = 2
    movwf RC522_Token#4
F1_004308 equ $ ; in [POLYGENCODE.BAS] RC522_Token[5] =RC522_backData[3]
    movlb 0x00
ram_bank = 0
    movf RC522_backData#3,W
    movwf PBS_VAR1
    movf PBS_VAR1,W
    movlb 0x02
ram_bank = 2
    movwf RC522_Token#5
F1_004309 equ $ ; in [POLYGENCODE.BAS] RC522_Level=RC522_PICC_SELECTTAG_CL2
    movlw 149
    movwf RC522_Level
F1_004310 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_SelectTag
    movlb 0x00
ram_bank = 0
    movlp ((RC522_SelectTag) >> 8)
    call RC522_SelectTag
ram_bank = 0
F1_004311 equ $ ; in [POLYGENCODE.BAS] RC522_Level=RC522_PICC_ANTICOLL_CL3
    movlb 0x02
ram_bank = 2
    movlw 151
    movwf RC522_Level
F1_004312 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Anticoll
    movlb 0x00
ram_bank = 0
    movlp ((RC522_Anticoll) >> 8)
    call RC522_Anticoll
ram_bank = 0
F1_004313 equ $ ; in [POLYGENCODE.BAS] if RC522_Status=RC522_MI_OK Then
    movlb 0x02
ram_bank = 2
    movf RC522_Status,F
    movlp ((_lbl__1459) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1459
F1_004314 equ $ ; in [POLYGENCODE.BAS] RC522_Token[6] =RC522_backData[0]
    movf RC522_backData#0,W
    movwf PBS_VAR1
    movf PBS_VAR1,W
    movlb 0x02
ram_bank = 2
    movwf RC522_Token#6
F1_004315 equ $ ; in [POLYGENCODE.BAS] RC522_Token[7] =RC522_backData[1]
    movlb 0x00
ram_bank = 0
    movf RC522_backData#1,W
    movwf PBS_VAR1
    movf PBS_VAR1,W
    movlb 0x02
ram_bank = 2
    movwf RC522_Token#7
F1_004316 equ $ ; in [POLYGENCODE.BAS] RC522_Token[8] =RC522_backData[2]
    movlb 0x00
ram_bank = 0
    movf RC522_backData#2,W
    movwf PBS_VAR1
    movf PBS_VAR1,W
    movlb 0x02
ram_bank = 2
    movwf RC522_Token#8
F1_004317 equ $ ; in [POLYGENCODE.BAS] RC522_Token[9] =RC522_backData[3]
    movlb 0x00
ram_bank = 0
    movf RC522_backData#3,W
    movwf PBS_VAR1
    movf PBS_VAR1,W
    movlb 0x02
ram_bank = 2
    movwf RC522_Token#9
F1_004318 equ $ ; in [POLYGENCODE.BAS] RC522_TokenLen=10
    movlw 10
    movwf RC522_TokenLen
F1_004319 equ $ ; in [POLYGENCODE.BAS] RC522_Level=RC522_PICC_SELECTTAG_CL3
    movlw 151
    movwf RC522_Level
F1_004320 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_SelectTag
    movlb 0x00
ram_bank = 0
    movlp ((RC522_SelectTag) >> 8)
    call RC522_SelectTag
ram_bank = 0
F1_004321 equ $ ; in [POLYGENCODE.BAS] RC522_SAK=RC522_backData[0]
    movf RC522_backData#0,W
    movlb 0x02
ram_bank = 2
    movwf RC522_SAK
F1_004322 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1459
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1460
_lbl__1457
F1_004323 equ $ ; in [POLYGENCODE.BAS] else
F1_004324 equ $ ; in [POLYGENCODE.BAS] RC522_Token[3] =RC522_backData[0]
    movf RC522_backData#0,W
    movwf PBS_VAR1
    movf PBS_VAR1,W
    movlb 0x02
ram_bank = 2
    movwf RC522_Token#3
F1_004325 equ $ ; in [POLYGENCODE.BAS] RC522_Token[4] =RC522_backData[1]
    movlb 0x00
ram_bank = 0
    movf RC522_backData#1,W
    movwf PBS_VAR1
    movf PBS_VAR1,W
    movlb 0x02
ram_bank = 2
    movwf RC522_Token#4
F1_004326 equ $ ; in [POLYGENCODE.BAS] RC522_Token[5] =RC522_backData[2]
    movlb 0x00
ram_bank = 0
    movf RC522_backData#2,W
    movwf PBS_VAR1
    movf PBS_VAR1,W
    movlb 0x02
ram_bank = 2
    movwf RC522_Token#5
F1_004327 equ $ ; in [POLYGENCODE.BAS] RC522_Token[6] =RC522_backData[3]
    movlb 0x00
ram_bank = 0
    movf RC522_backData#3,W
    movwf PBS_VAR1
    movf PBS_VAR1,W
    movlb 0x02
ram_bank = 2
    movwf RC522_Token#6
F1_004328 equ $ ; in [POLYGENCODE.BAS] RC522_TokenLen=7
    movlw 7
    movwf RC522_TokenLen
F1_004329 equ $ ; in [POLYGENCODE.BAS] RC522_Level=RC522_PICC_SELECTTAG_CL2
    movlw 149
    movwf RC522_Level
F1_004330 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_SelectTag
    movlb 0x00
ram_bank = 0
    movlp ((RC522_SelectTag) >> 8)
    call RC522_SelectTag
ram_bank = 0
F1_004331 equ $ ; in [POLYGENCODE.BAS] RC522_SAK=RC522_backData[0]
    movf RC522_backData#0,W
    movlb 0x02
ram_bank = 2
    movwf RC522_SAK
F1_004332 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1460
    movlb 0x00
ram_bank = 0
F1_004333 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1455
    _mjump _lbl__1461
_lbl__1453
F1_004334 equ $ ; in [POLYGENCODE.BAS] else
F1_004335 equ $ ; in [POLYGENCODE.BAS] For N=0 To 3
    movlb 0x02
ram_bank = 2
    clrf _N
_frlb__1462
ram_bank = 0
    movlw 4
    movlb 0x02
ram_bank = 2
    subwf _N,W
    movlp ((_nxlb__1463) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _nxlb__1463
F1_004336 equ $ ; in [POLYGENCODE.BAS] RC522_Token[N] =RC522_backData[N]
    movlb 0x02
ram_bank = 2
    movf _N,W
    addlw 62
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR1
    movlb 0x02
ram_bank = 2
    movf _N,W
    addlw 227
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x00
ram_bank = 0
    movf PBS_VAR1,W
    movwf INDF0
_ctlb__1464
F1_004337 equ $ ; in [POLYGENCODE.BAS] Next
    movlw 1
    movlb 0x02
ram_bank = 2
    addwf _N,F
    movlp ((_frlb__1462) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _frlb__1462
_nxlb__1463
F1_004338 equ $ ; in [POLYGENCODE.BAS] RC522_TokenLen=4
    movlb 0x02
ram_bank = 2
    movlw 4
    movwf RC522_TokenLen
F1_004339 equ $ ; in [POLYGENCODE.BAS] RC522_Level=RC522_PICC_SELECTTAG_CL1
    movlw 147
    movwf RC522_Level
F1_004340 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_SelectTag
    movlb 0x00
ram_bank = 0
    movlp ((RC522_SelectTag) >> 8)
    call RC522_SelectTag
ram_bank = 0
F1_004341 equ $ ; in [POLYGENCODE.BAS] RC522_SAK=RC522_backData[0]
    movf RC522_backData#0,W
    movlb 0x02
ram_bank = 2
    movwf RC522_SAK
F1_004342 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1461
    movlb 0x00
ram_bank = 0
F1_004343 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1451
F1_004344 equ $ ; in [POLYGENCODE.BAS] return
    return
RC522_ToCard
F1_004347 equ $ ; in [POLYGENCODE.BAS] Clear RC522_backLen
    clrf RC522_backLen
F1_004348 equ $ ; in [POLYGENCODE.BAS] RC522_Status=RC522_MI_ERR
    movlb 0x02
ram_bank = 2
    movlw 2
    movwf RC522_Status
F1_004349 equ $ ; in [POLYGENCODE.BAS] Clear RC522_irqEn
    clrf RC522_irqEn
F1_004350 equ $ ; in [POLYGENCODE.BAS] Clear RC522_waitIRq
    clrf RC522_waitIRq
F1_004351 equ $ ; in [POLYGENCODE.BAS] Clear RC522_lastBits
    clrf RC522_lastBits
F1_004352 equ $ ; in [POLYGENCODE.BAS] Clear N
    clrf _N
F1_004353 equ $ ; in [POLYGENCODE.BAS] Clear I
    clrf _IH
    clrf _I
F1_004355 equ $ ; in [POLYGENCODE.BAS] if RC522_Command=RC522_PCD_AUTHENT Then
    movlw 14
    subwf RC522_Command,W
    movlp ((_lbl__1466) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1466
F1_004356 equ $ ; in [POLYGENCODE.BAS] RC522_irqEn=0x12
    movlb 0x02
ram_bank = 2
    movlw 18
    movwf RC522_irqEn
F1_004357 equ $ ; in [POLYGENCODE.BAS] RC522_waitIRq=0x10
    movlw 16
    movwf RC522_waitIRq
F1_004358 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__1466
ram_bank = 0
F1_004359 equ $ ; in [POLYGENCODE.BAS] if RC522_Command=RC522_PCD_TRANSCEIVE Then
    movlw 12
    movlb 0x02
ram_bank = 2
    subwf RC522_Command,W
    movlp ((_lbl__1468) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1468
F1_004360 equ $ ; in [POLYGENCODE.BAS] RC522_irqEn=0x77
    movlb 0x02
ram_bank = 2
    movlw 119
    movwf RC522_irqEn
F1_004361 equ $ ; in [POLYGENCODE.BAS] RC522_waitIRq=0x30
    movlw 48
    movwf RC522_waitIRq
F1_004362 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__1468
    movlb 0x00
ram_bank = 0
F1_004364 equ $ ; in [POLYGENCODE.BAS] RC522_Address=RC522_Reg_ComIEnReg
    movlw 2
    movwf RC522_Address
F1_004365 equ $ ; in [POLYGENCODE.BAS] RC522_Value=RC522_irqEn | 0x80
    movlw 128
    movlb 0x02
ram_bank = 2
    iorwf RC522_irqEn,W
    movlb 0x00
ram_bank = 0
    movwf RC522_Value
F1_004366 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Write
    movlp ((RC522_Write) >> 8)
    call RC522_Write
ram_bank = 0
F1_004367 equ $ ; in [POLYGENCODE.BAS] RC522_Address=RC522_Reg_ComIrqReg
    movlw 4
    movwf RC522_Address
F1_004368 equ $ ; in [POLYGENCODE.BAS] RC522_BitMask=0x80
    movlw 128
    movwf RC522_BitMask
F1_004369 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_ClearBitMask
    movlp ((RC522_ClearBitMask) >> 8)
    call RC522_ClearBitMask
ram_bank = 0
F1_004370 equ $ ; in [POLYGENCODE.BAS] RC522_Address=RC522_Reg_FIFOLevelReg
    movlw 10
    movwf RC522_Address
F1_004371 equ $ ; in [POLYGENCODE.BAS] RC522_BitMask=0x80
    movlw 128
    movwf RC522_BitMask
F1_004372 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_SetBitMask
    movlp ((RC522_SetBitMask) >> 8)
    call RC522_SetBitMask
ram_bank = 0
F1_004373 equ $ ; in [POLYGENCODE.BAS] RC522_Address=RC522_Reg_CommandReg
    movlw 1
    movwf RC522_Address
F1_004374 equ $ ; in [POLYGENCODE.BAS] RC522_Value=RC522_PCD_IDLE
    clrf RC522_Value
F1_004375 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Write
    movlp ((RC522_Write) >> 8)
    call RC522_Write
ram_bank = 0
F1_004376 equ $ ; in [POLYGENCODE.BAS] While I<RC522_sendLen
_lbl__1469
    movlb 0x02
ram_bank = 2
    movf _IH,F
    movlp ((_lbl__1470) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1470
    movlb 0x02
ram_bank = 2
    movf RC522_sendLen,W
    subwf _I,W
    movlp ((_lbl__1470) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__1470
F1_004377 equ $ ; in [POLYGENCODE.BAS] RC522_Address=RC522_Reg_FIFODataReg
    movlw 9
    movwf RC522_Address
F1_004378 equ $ ; in [POLYGENCODE.BAS] RC522_Value=RC522_sendData[I]
    movlb 0x02
ram_bank = 2
    movf _I,W
    addlw 163
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf RC522_Value
F1_004379 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Write
    movlp ((RC522_Write) >> 8)
    call RC522_Write
ram_bank = 0
F1_004380 equ $ ; in [POLYGENCODE.BAS] Inc I
    movlb 0x02
ram_bank = 2
    incf _I,F
    btfsc STATUS,2
    incf _IH,F
F1_004381 equ $ ; in [POLYGENCODE.BAS] Wend
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1469
_lbl__1470
F1_004382 equ $ ; in [POLYGENCODE.BAS] RC522_Address=RC522_Reg_CommandReg
    movlw 1
    movwf RC522_Address
F1_004383 equ $ ; in [POLYGENCODE.BAS] RC522_Value=RC522_Command
    movlb 0x02
ram_bank = 2
    movf RC522_Command,W
    movlb 0x00
ram_bank = 0
    movwf RC522_Value
F1_004384 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Write
    movlp ((RC522_Write) >> 8)
    call RC522_Write
ram_bank = 0
F1_004385 equ $ ; in [POLYGENCODE.BAS] if RC522_Command=RC522_PCD_TRANSCEIVE Then
    movlw 12
    movlb 0x02
ram_bank = 2
    subwf RC522_Command,W
    movlp ((_lbl__1472) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1472
F1_004386 equ $ ; in [POLYGENCODE.BAS] RC522_Address=RC522_Reg_BitFramingReg
    movlw 13
    movwf RC522_Address
F1_004387 equ $ ; in [POLYGENCODE.BAS] RC522_BitMask=0x80
    movlw 128
    movwf RC522_BitMask
F1_004388 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_SetBitMask
    movlp ((RC522_SetBitMask) >> 8)
    call RC522_SetBitMask
ram_bank = 0
F1_004389 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__1472
F1_004390 equ $ ; in [POLYGENCODE.BAS] I = MaxRFIDWaitTime
    movlb 0x03
ram_bank = 3
    movf MaxRFIDWaitTimeH,W
    movlb 0x02
ram_bank = 2
    movwf _IH
    movlb 0x03
ram_bank = 3
    movf MaxRFIDWaitTime,W
    movlb 0x02
ram_bank = 2
    movwf _I
F1_004391 equ $ ; in [POLYGENCODE.BAS] While I>0
_lbl__1473
ram_bank = 0
    movlb 0x02
ram_bank = 2
    movf _I,F
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    bra _cplb__122
    movlb 0x02
ram_bank = 2
    movf _IH,F
    movlp ((_lbl__1474) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__1474
_cplb__122
ram_bank = 255
F1_004392 equ $ ; in [POLYGENCODE.BAS] RC522_Address=RC522_Reg_ComIrqReg
    movlb 0x00
ram_bank = 0
    movlw 4
    movwf RC522_Address
F1_004393 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Read
    movlp ((RC522_Read) >> 8)
    call RC522_Read
ram_bank = 0
F1_004394 equ $ ; in [POLYGENCODE.BAS] N=RC522_Value
    movf RC522_Value,W
    movlb 0x02
ram_bank = 2
    movwf _N
F1_004395 equ $ ; in [POLYGENCODE.BAS] Dec I
    movlw 1
    subwf _I,F
    movlw 0
    subwfb _IH,F
F1_004396 equ $ ; in [POLYGENCODE.BAS] RC522_Temp=RC522_Value & RC522_waitIRq
    movf RC522_waitIRq,W
    movlb 0x00
ram_bank = 0
    andwf RC522_Value,W
    movwf RC522_Temp
F1_004397 equ $ ; in [POLYGENCODE.BAS] if RC522_Temp>0 Then Break
    movf RC522_Temp,F
    movlp ((_lbl__1474) >> 8)
    btfss STATUS,2
    goto _lbl__1474
F1_004398 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateAnimation
    movlp ((UpdateAnimation) >> 8)
    call UpdateAnimation
ram_bank = 0
F1_004399 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__1473
_lbl__1474
F1_004400 equ $ ; in [POLYGENCODE.BAS] RC522_Address=RC522_Reg_BitFramingReg
    movlw 13
    movwf RC522_Address
F1_004401 equ $ ; in [POLYGENCODE.BAS] RC522_BitMask=0x80
    movlw 128
    movwf RC522_BitMask
F1_004402 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_ClearBitMask
    movlp ((RC522_ClearBitMask) >> 8)
    call RC522_ClearBitMask
ram_bank = 0
F1_004403 equ $ ; in [POLYGENCODE.BAS] if I=0 Then return
    movlb 0x02
ram_bank = 2
    movf _IH,W
    iorwf _I,W
    movlp ((_lbl__1478) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1478
    return
_lbl__1478
F1_004404 equ $ ; in [POLYGENCODE.BAS] RC522_Address=RC522_Reg_ErrorReg
    movlw 6
    movwf RC522_Address
F1_004405 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Read
    movlp ((RC522_Read) >> 8)
    call RC522_Read
ram_bank = 0
F1_004406 equ $ ; in [POLYGENCODE.BAS] RC522_Temp=RC522_Value & 0x1B
    movlw 27
    andwf RC522_Value,W
    movwf RC522_Temp
F1_004407 equ $ ; in [POLYGENCODE.BAS] if RC522_Temp=0 Then
    movf RC522_Temp,F
    movlp ((_lbl__1480) >> 8)
    btfss STATUS,2
    goto _lbl__1480
F1_004408 equ $ ; in [POLYGENCODE.BAS] RC522_Status=RC522_MI_OK
    movlb 0x02
ram_bank = 2
    clrf RC522_Status
F1_004409 equ $ ; in [POLYGENCODE.BAS] RC522_Temp=N & RC522_irqEn & 0x01
    movf _N,W
    andwf RC522_irqEn,W
    movlb 0x00
ram_bank = 0
    clrf PP7H
    movwf PP7
    movlw 1
    andwf PP7,W
    movwf RC522_Temp
F1_004410 equ $ ; in [POLYGENCODE.BAS] if RC522_Temp>0 Then RC522_Status=RC522_MI_NOTAGERR
    movf RC522_Temp,F
    movlp ((_lbl__1482) >> 8)
    btfsc STATUS,2
    goto _lbl__1482
    movlb 0x02
ram_bank = 2
    movlw 1
    movwf RC522_Status
_lbl__1482
ram_bank = 0
F1_004411 equ $ ; in [POLYGENCODE.BAS] if RC522_Command=RC522_PCD_TRANSCEIVE Then
    movlw 12
    movlb 0x02
ram_bank = 2
    subwf RC522_Command,W
    movlp ((_lbl__1484) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1484
F1_004412 equ $ ; in [POLYGENCODE.BAS] RC522_Address=RC522_Reg_FIFOLevelReg
    movlw 10
    movwf RC522_Address
F1_004413 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Read
    movlp ((RC522_Read) >> 8)
    call RC522_Read
ram_bank = 0
F1_004414 equ $ ; in [POLYGENCODE.BAS] RC522_backLen=RC522_Value
    movf RC522_Value,W
    movwf RC522_backLen
F1_004415 equ $ ; in [POLYGENCODE.BAS] RC522_Address=RC522_Reg_ControlReg
    movlw 12
    movwf RC522_Address
F1_004416 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Read
    movlp ((RC522_Read) >> 8)
    call RC522_Read
ram_bank = 0
F1_004417 equ $ ; in [POLYGENCODE.BAS] RC522_lastBits=RC522_Value & 0x07
    movlw 7
    andwf RC522_Value,W
    movlb 0x02
ram_bank = 2
    movwf RC522_lastBits
F1_004418 equ $ ; in [POLYGENCODE.BAS] RC522_bitLen=RC522_backLen * 8
    movlb 0x00
ram_bank = 0
    lslf RC522_backLen,W
    movwf RC522_bitLen
    lslf RC522_bitLen,F
    lslf RC522_bitLen,F
F1_004419 equ $ ; in [POLYGENCODE.BAS] if RC522_lastBits<>0 Then
    movlb 0x02
ram_bank = 2
    movf RC522_lastBits,F
    movlp ((_lbl__1486) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__1486
F1_004420 equ $ ; in [POLYGENCODE.BAS] RC522_bitLen=RC522_bitLen - 8 + RC522_lastBits
    movlw 248
    addwf RC522_bitLen,W
    movwf PP7
    movlw 255
    btfsc STATUS,0
    addlw 1
    movwf PP7H
    movlb 0x02
ram_bank = 2
    movf RC522_lastBits,W
    movlb 0x00
ram_bank = 0
    addwf PP7,W
    movwf RC522_bitLen
F1_004421 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__1486
F1_004422 equ $ ; in [POLYGENCODE.BAS] if N=0 Then N=1
    movlb 0x02
ram_bank = 2
    movf _N,F
    movlp ((_lbl__1488) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1488
    movlb 0x02
ram_bank = 2
    movlw 1
    movwf _N
_lbl__1488
ram_bank = 0
F1_004423 equ $ ; in [POLYGENCODE.BAS] if N>RC522_MaxLen Then N=RC522_MaxLen
    movlw 101
    movlb 0x02
ram_bank = 2
    subwf _N,W
    movlp ((_lbl__1490) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,0
    goto _lbl__1490
    movlb 0x02
ram_bank = 2
    movlw 100
    movwf _N
_lbl__1490
ram_bank = 0
F1_004424 equ $ ; in [POLYGENCODE.BAS] Clear I
    movlb 0x02
ram_bank = 2
    clrf _IH
    clrf _I
F1_004425 equ $ ; in [POLYGENCODE.BAS] While I<N
_lbl__1491
ram_bank = 0
    movlb 0x02
ram_bank = 2
    movf _IH,F
    movlp ((_lbl__1492) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1492
    movlb 0x02
ram_bank = 2
    movf _N,W
    subwf _I,W
    movlp ((_lbl__1492) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__1492
F1_004426 equ $ ; in [POLYGENCODE.BAS] RC522_Address=RC522_Reg_FIFODataReg
    movlw 9
    movwf RC522_Address
F1_004427 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Read
    movlp ((RC522_Read) >> 8)
    call RC522_Read
ram_bank = 0
F1_004428 equ $ ; in [POLYGENCODE.BAS] RC522_backData[I] =RC522_Value
    movlb 0x02
ram_bank = 2
    movf _I,W
    addlw 62
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x00
ram_bank = 0
    movf RC522_Value,W
    movwf INDF0
F1_004429 equ $ ; in [POLYGENCODE.BAS] Inc I
    movlb 0x02
ram_bank = 2
    incf _I,F
    btfsc STATUS,2
    incf _IH,F
F1_004430 equ $ ; in [POLYGENCODE.BAS] Wend
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1491
_lbl__1492
F1_004431 equ $ ; in [POLYGENCODE.BAS] end if
_lbl__1484
    _mjump _lbl__1493
_lbl__1480
F1_004432 equ $ ; in [POLYGENCODE.BAS] else
F1_004433 equ $ ; in [POLYGENCODE.BAS] RC522_Status=RC522_MI_ERR
    movlb 0x02
ram_bank = 2
    movlw 2
    movwf RC522_Status
F1_004434 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1493
    movlb 0x00
ram_bank = 0
F1_004435 equ $ ; in [POLYGENCODE.BAS] return
    return
RC522_Request
F1_004439 equ $ ; in [POLYGENCODE.BAS] Clear RC522_Status
    movlb 0x02
ram_bank = 2
    clrf RC522_Status
F1_004440 equ $ ; in [POLYGENCODE.BAS] RC522_Address=RC522_Reg_BitFramingReg
    movlb 0x00
ram_bank = 0
    movlw 13
    movwf RC522_Address
F1_004441 equ $ ; in [POLYGENCODE.BAS] RC522_Value=0x07
    movlw 7
    movwf RC522_Value
F1_004442 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Write
    movlp ((RC522_Write) >> 8)
    call RC522_Write
ram_bank = 0
F1_004443 equ $ ; in [POLYGENCODE.BAS] RC522_Command=RC522_PCD_TRANSCEIVE
    movlb 0x02
ram_bank = 2
    movlw 12
    movwf RC522_Command
F1_004444 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[0] =RC522_RequestMode
    movf RC522_RequestMode,W
    movwf RC522_sendData#0
F1_004445 equ $ ; in [POLYGENCODE.BAS] RC522_sendLen=1
    movlw 1
    movwf RC522_sendLen
F1_004446 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_ToCard
    movlb 0x00
ram_bank = 0
    movlp ((RC522_ToCard) >> 8)
    call RC522_ToCard
ram_bank = 0
F1_004447 equ $ ; in [POLYGENCODE.BAS] if RC522_bitLen<>0x10 Then RC522_Status=RC522_MI_ERR
    movlw 16
    subwf RC522_bitLen,W
    movlp ((_lbl__1495) >> 8)
    btfsc STATUS,2
    goto _lbl__1495
    movlb 0x02
ram_bank = 2
    movlw 2
    movwf RC522_Status
_lbl__1495
ram_bank = 0
F1_004448 equ $ ; in [POLYGENCODE.BAS] if RC522_Status<>RC522_MI_OK Then RC522_Status=RC522_MI_ERR
    movlb 0x02
ram_bank = 2
    movf RC522_Status,F
    movlp ((_lbl__1497) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,2
    goto _lbl__1497
    movlb 0x02
ram_bank = 2
    movlw 2
    movwf RC522_Status
_lbl__1497
    movlb 0x00
ram_bank = 0
F1_004449 equ $ ; in [POLYGENCODE.BAS] return
    return
RC522_Anticoll
F1_004453 equ $ ; in [POLYGENCODE.BAS] Clear RC522_backLen
    clrf RC522_backLen
F1_004454 equ $ ; in [POLYGENCODE.BAS] Clear RC522_serNumCheck
    movlb 0x02
ram_bank = 2
    clrf RC522_serNumCheck
F1_004455 equ $ ; in [POLYGENCODE.BAS] RC522_Address=RC522_Reg_BitFramingReg
    movlb 0x00
ram_bank = 0
    movlw 13
    movwf RC522_Address
F1_004456 equ $ ; in [POLYGENCODE.BAS] RC522_Value=0
    clrf RC522_Value
F1_004457 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Write
    movlp ((RC522_Write) >> 8)
    call RC522_Write
ram_bank = 0
F1_004458 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[0] =RC522_Level
    movlb 0x02
ram_bank = 2
    movf RC522_Level,W
    movwf RC522_sendData#0
F1_004459 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[1] =0x20
    movlw 32
    movwf RC522_sendData#1
F1_004460 equ $ ; in [POLYGENCODE.BAS] RC522_sendLen=2
    movlw 2
    movwf RC522_sendLen
F1_004461 equ $ ; in [POLYGENCODE.BAS] RC522_Command=RC522_PCD_TRANSCEIVE
    movlw 12
    movwf RC522_Command
F1_004462 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_ToCard
    movlb 0x00
ram_bank = 0
    movlp ((RC522_ToCard) >> 8)
    call RC522_ToCard
ram_bank = 0
F1_004463 equ $ ; in [POLYGENCODE.BAS] if RC522_Status=RC522_MI_OK Then
    movlb 0x02
ram_bank = 2
    movf RC522_Status,F
    movlp ((_lbl__1499) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1499
F1_004464 equ $ ; in [POLYGENCODE.BAS] Clear I
    movlb 0x02
ram_bank = 2
    clrf _IH
    clrf _I
F1_004466 equ $ ; in [POLYGENCODE.BAS] if RC522_backLen=5 Then
    movlw 5
    movlb 0x00
ram_bank = 0
    subwf RC522_backLen,W
    movlp ((_lbl__1501) >> 8)
    btfss STATUS,2
    goto _lbl__1501
F1_004467 equ $ ; in [POLYGENCODE.BAS] While I<4
_lbl__1502
    movlb 0x02
ram_bank = 2
    movf _IH,F
    movlp ((_lbl__1503) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1503
    movlw 4
    movlb 0x02
ram_bank = 2
    subwf _I,W
    movlp ((_lbl__1503) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__1503
F1_004468 equ $ ; in [POLYGENCODE.BAS] RC522_serNumCheck=RC522_serNumCheck ^ RC522_backData[I]
    movlb 0x02
ram_bank = 2
    movf _I,W
    addlw 62
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR1
    movf PBS_VAR1,W
    movlb 0x02
ram_bank = 2
    xorwf RC522_serNumCheck,F
F1_004469 equ $ ; in [POLYGENCODE.BAS] Inc I
    incf _I,F
    btfsc STATUS,2
    incf _IH,F
F1_004470 equ $ ; in [POLYGENCODE.BAS] Wend
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1502
_lbl__1503
F1_004471 equ $ ; in [POLYGENCODE.BAS] if RC522_serNumCheck<>RC522_backData[I] Then RC522_Status=RC522_MI_ERR
    movlb 0x02
ram_bank = 2
    movf _I,W
    addlw 62
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf PBS_VAR1
    movlb 0x02
ram_bank = 2
    movf RC522_serNumCheck,W
    movlb 0x00
ram_bank = 0
    subwf PBS_VAR1,W
    movlp ((_lbl__1505) >> 8)
    btfsc STATUS,2
    goto _lbl__1505
    movlb 0x02
ram_bank = 2
    movlw 2
    movwf RC522_Status
_lbl__1505
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1506
_lbl__1501
F1_004472 equ $ ; in [POLYGENCODE.BAS] else
F1_004473 equ $ ; in [POLYGENCODE.BAS] RC522_Status=RC522_MI_ERR
    movlb 0x02
ram_bank = 2
    movlw 2
    movwf RC522_Status
F1_004474 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1506
    movlb 0x00
ram_bank = 0
F1_004475 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1499
F1_004476 equ $ ; in [POLYGENCODE.BAS] return
    return
RC522_CalculateCRC
F1_004480 equ $ ; in [POLYGENCODE.BAS] RC522_Address=RC522_Reg_DivIrqReg
    movlw 5
    movwf RC522_Address
F1_004481 equ $ ; in [POLYGENCODE.BAS] RC522_BitMask=0x04
    movlw 4
    movwf RC522_BitMask
F1_004482 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_ClearBitMask
    movlp ((RC522_ClearBitMask) >> 8)
    call RC522_ClearBitMask
ram_bank = 0
F1_004483 equ $ ; in [POLYGENCODE.BAS] RC522_Address=RC522_Reg_FIFOLevelReg
    movlw 10
    movwf RC522_Address
F1_004484 equ $ ; in [POLYGENCODE.BAS] RC522_BitMask=0x80
    movlw 128
    movwf RC522_BitMask
F1_004485 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_SetBitMask
    movlp ((RC522_SetBitMask) >> 8)
    call RC522_SetBitMask
ram_bank = 0
F1_004486 equ $ ; in [POLYGENCODE.BAS] Clear I
    movlb 0x02
ram_bank = 2
    clrf _IH
    clrf _I
F1_004487 equ $ ; in [POLYGENCODE.BAS] While I<RC522_sendLen
_lbl__1507
ram_bank = 0
    movlb 0x02
ram_bank = 2
    movf _IH,F
    movlp ((_lbl__1508) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1508
    movlb 0x02
ram_bank = 2
    movf RC522_sendLen,W
    subwf _I,W
    movlp ((_lbl__1508) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__1508
F1_004488 equ $ ; in [POLYGENCODE.BAS] RC522_Address=RC522_Reg_FIFODataReg
    movlw 9
    movwf RC522_Address
F1_004489 equ $ ; in [POLYGENCODE.BAS] RC522_Value=RC522_sendData[I]
    movlb 0x02
ram_bank = 2
    movf _I,W
    addlw 163
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf RC522_Value
F1_004490 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Write
    movlp ((RC522_Write) >> 8)
    call RC522_Write
ram_bank = 0
F1_004491 equ $ ; in [POLYGENCODE.BAS] Inc I
    movlb 0x02
ram_bank = 2
    incf _I,F
    btfsc STATUS,2
    incf _IH,F
F1_004492 equ $ ; in [POLYGENCODE.BAS] Wend
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1507
_lbl__1508
F1_004493 equ $ ; in [POLYGENCODE.BAS] RC522_Address=RC522_Reg_CommandReg
    movlw 1
    movwf RC522_Address
F1_004494 equ $ ; in [POLYGENCODE.BAS] RC522_Value=RC522_PCD_CALCCRC
    movlw 3
    movwf RC522_Value
F1_004495 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Write
    movlp ((RC522_Write) >> 8)
    call RC522_Write
ram_bank = 0
F1_004496 equ $ ; in [POLYGENCODE.BAS] I=0xFF
    movlb 0x02
ram_bank = 2
    clrf _IH
    movlw 255
    movwf _I
CRCWait
    movlb 0x00
ram_bank = 0
F1_004498 equ $ ; in [POLYGENCODE.BAS] RC522_Address=RC522_Reg_DivIrqReg
    movlw 5
    movwf RC522_Address
F1_004499 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Read
    movlp ((RC522_Read) >> 8)
    call RC522_Read
ram_bank = 0
F1_004500 equ $ ; in [POLYGENCODE.BAS] Dec I
    movlw 1
    movlb 0x02
ram_bank = 2
    subwf _I,F
    movlw 0
    subwfb _IH,F
F1_004501 equ $ ; in [POLYGENCODE.BAS] if RC522_Value.2=1 Then goto CRCFound
    movlp ((CRCFound) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc RC522_Value,2
    goto CRCFound
F1_004502 equ $ ; in [POLYGENCODE.BAS] GoSub UpdateAnimation
    movlp ((UpdateAnimation) >> 8)
    call UpdateAnimation
ram_bank = 0
F1_004503 equ $ ; in [POLYGENCODE.BAS] if I>0 Then goto CRCWait
    movlb 0x02
ram_bank = 2
    movf _I,W
    iorwf _IH,W
    movlp ((CRCWait) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto CRCWait
_cplb__123
ram_bank = 255
CRCFound
    movlb 0x00
ram_bank = 0
F1_004505 equ $ ; in [POLYGENCODE.BAS] RC522_Address=RC522_Reg_CRCResultRegL
    movlw 34
    movwf RC522_Address
F1_004506 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Read
    movlp ((RC522_Read) >> 8)
    call RC522_Read
ram_bank = 0
F1_004507 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[RC522_sendLen] =RC522_Value
    movlb 0x02
ram_bank = 2
    movf RC522_sendLen,W
    addlw 163
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x00
ram_bank = 0
    movf RC522_Value,W
    movwf INDF0
F1_004508 equ $ ; in [POLYGENCODE.BAS] Inc RC522_sendLen
    movlb 0x02
ram_bank = 2
    incf RC522_sendLen,F
F1_004509 equ $ ; in [POLYGENCODE.BAS] RC522_Address=RC522_Reg_CRCResultRegM
    movlb 0x00
ram_bank = 0
    movlw 33
    movwf RC522_Address
F1_004510 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Read
    movlp ((RC522_Read) >> 8)
    call RC522_Read
ram_bank = 0
F1_004511 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[RC522_sendLen] =RC522_Value
    movlb 0x02
ram_bank = 2
    movf RC522_sendLen,W
    addlw 163
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x00
ram_bank = 0
    movf RC522_Value,W
    movwf INDF0
F1_004512 equ $ ; in [POLYGENCODE.BAS] Inc RC522_sendLen
    movlb 0x02
ram_bank = 2
    incf RC522_sendLen,F
F1_004513 equ $ ; in [POLYGENCODE.BAS] return
    movlb 0x00
ram_bank = 0
    return
RC522_SelectTag
F1_004517 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[0] =RC522_Level
    movlb 0x02
ram_bank = 2
    movf RC522_Level,W
    movwf RC522_sendData#0
F1_004518 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[1] =0x70
    movlw 112
    movwf RC522_sendData#1
F1_004519 equ $ ; in [POLYGENCODE.BAS] Clear I
    clrf _IH
    clrf _I
F1_004520 equ $ ; in [POLYGENCODE.BAS] N=2
    movlw 2
    movwf _N
F1_004521 equ $ ; in [POLYGENCODE.BAS] While I<5
_lbl__1513
ram_bank = 0
    movlb 0x02
ram_bank = 2
    movf _IH,F
    movlp ((_lbl__1514) >> 8)
    movlb 0x00
ram_bank = 0
    btfss STATUS,2
    goto _lbl__1514
    movlw 5
    movlb 0x02
ram_bank = 2
    subwf _I,W
    movlp ((_lbl__1514) >> 8)
    movlb 0x00
ram_bank = 0
    btfsc STATUS,0
    goto _lbl__1514
F1_004522 equ $ ; in [POLYGENCODE.BAS] RC522_Temp=RC522_backData[I]
    movlb 0x02
ram_bank = 2
    movf _I,W
    addlw 62
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movf INDF0,W
    movlb 0x00
ram_bank = 0
    movwf RC522_Temp
F1_004523 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[N] =RC522_Temp
    movlb 0x02
ram_bank = 2
    movf _N,W
    addlw 163
    movwf FSR0L
    movlw 0x20
    clrf FSR0H
    addwfc FSR0H,F
    movlb 0x00
ram_bank = 0
    movf RC522_Temp,W
    movwf INDF0
F1_004524 equ $ ; in [POLYGENCODE.BAS] Inc I
    movlb 0x02
ram_bank = 2
    incf _I,F
    btfsc STATUS,2
    incf _IH,F
F1_004525 equ $ ; in [POLYGENCODE.BAS] Inc N
    incf _N,F
F1_004526 equ $ ; in [POLYGENCODE.BAS] Wend
    movlb 0x00
ram_bank = 0
    _mjump _lbl__1513
_lbl__1514
F1_004527 equ $ ; in [POLYGENCODE.BAS] RC522_sendLen=7
    movlb 0x02
ram_bank = 2
    movlw 7
    movwf RC522_sendLen
F1_004528 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_CalculateCRC
    movlb 0x00
ram_bank = 0
    movlp ((RC522_CalculateCRC) >> 8)
    call RC522_CalculateCRC
ram_bank = 0
F1_004529 equ $ ; in [POLYGENCODE.BAS] RC522_Command=RC522_PCD_TRANSCEIVE
    movlb 0x02
ram_bank = 2
    movlw 12
    movwf RC522_Command
F1_004530 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_ToCard
    movlb 0x00
ram_bank = 0
    movlp ((RC522_ToCard) >> 8)
    call RC522_ToCard
ram_bank = 0
F1_004531 equ $ ; in [POLYGENCODE.BAS] return
    return
RC522_ReadSector
F1_004535 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[0] =RC522_PICC_READ
    movlb 0x02
ram_bank = 2
    movlw 48
    movwf RC522_sendData#0
F1_004536 equ $ ; in [POLYGENCODE.BAS] RC522_sendData[1] =RC522_BlockAddress
    movf RC522_BlockAddress,W
    movwf RC522_sendData#1
F1_004537 equ $ ; in [POLYGENCODE.BAS] RC522_sendLen=2
    movlw 2
    movwf RC522_sendLen
F1_004538 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_CalculateCRC
    movlb 0x00
ram_bank = 0
    movlp ((RC522_CalculateCRC) >> 8)
    call RC522_CalculateCRC
ram_bank = 0
F1_004539 equ $ ; in [POLYGENCODE.BAS] RC522_Command=RC522_PCD_TRANSCEIVE
    movlb 0x02
ram_bank = 2
    movlw 12
    movwf RC522_Command
F1_004540 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_ToCard
    movlb 0x00
ram_bank = 0
    movlp ((RC522_ToCard) >> 8)
    call RC522_ToCard
ram_bank = 0
F1_004541 equ $ ; in [POLYGENCODE.BAS] return
    return
RC522_Init
F1_004544 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Reset
    movlp ((RC522_Reset) >> 8)
    call RC522_Reset
ram_bank = 0
F1_004545 equ $ ; in [POLYGENCODE.BAS] RC522_Address=RC522_Reg_TModeReg
    movlw 42
    movwf RC522_Address
F1_004546 equ $ ; in [POLYGENCODE.BAS] RC522_Value=0x8D
    movlw 141
    movwf RC522_Value
F1_004547 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Write
    movlp ((RC522_Write) >> 8)
    call RC522_Write
ram_bank = 0
F1_004548 equ $ ; in [POLYGENCODE.BAS] RC522_Address=RC522_Reg_TPrescalerReg
    movlw 43
    movwf RC522_Address
F1_004549 equ $ ; in [POLYGENCODE.BAS] RC522_Value=0x3E
    movlw 62
    movwf RC522_Value
F1_004550 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Write
    movlp ((RC522_Write) >> 8)
    call RC522_Write
ram_bank = 0
F1_004551 equ $ ; in [POLYGENCODE.BAS] RC522_Address=RC522_Reg_TReloadRegL
    movlw 45
    movwf RC522_Address
F1_004552 equ $ ; in [POLYGENCODE.BAS] RC522_Value=30
    movlw 30
    movwf RC522_Value
F1_004553 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Write
    movlp ((RC522_Write) >> 8)
    call RC522_Write
ram_bank = 0
F1_004554 equ $ ; in [POLYGENCODE.BAS] RC522_Address=RC522_Reg_TReloadRegH
    movlw 44
    movwf RC522_Address
F1_004555 equ $ ; in [POLYGENCODE.BAS] RC522_Value=0
    clrf RC522_Value
F1_004556 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Write
    movlp ((RC522_Write) >> 8)
    call RC522_Write
ram_bank = 0
F1_004557 equ $ ; in [POLYGENCODE.BAS] RC522_Address=RC522_Reg_TxAutoReg
    movlw 21
    movwf RC522_Address
F1_004558 equ $ ; in [POLYGENCODE.BAS] RC522_Value=0x40
    movlw 64
    movwf RC522_Value
F1_004559 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Write
    movlp ((RC522_Write) >> 8)
    call RC522_Write
ram_bank = 0
F1_004560 equ $ ; in [POLYGENCODE.BAS] RC522_Address=RC522_Reg_ModeReg
    movlw 17
    movwf RC522_Address
F1_004561 equ $ ; in [POLYGENCODE.BAS] RC522_Value=0x3D
    movlw 61
    movwf RC522_Value
F1_004562 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Write
    movlp ((RC522_Write) >> 8)
    call RC522_Write
ram_bank = 0
F1_004563 equ $ ; in [POLYGENCODE.BAS] RC522_Address=RC522_Reg_RFCfgReg
    movlw 38
    movwf RC522_Address
F1_004564 equ $ ; in [POLYGENCODE.BAS] RC522_Value=(0x07<<4)
    movlw 112
    movwf RC522_Value
F1_004565 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Write
    movlp ((RC522_Write) >> 8)
    call RC522_Write
ram_bank = 0
F1_004566 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_AntennaOn
    movlp ((RC522_AntennaOn) >> 8)
    call RC522_AntennaOn
ram_bank = 0
F1_004567 equ $ ; in [POLYGENCODE.BAS] return
    return
RC522_Reset
F1_004570 equ $ ; in [POLYGENCODE.BAS] RC522_Address=RC522_Reg_CommandReg
    movlw 1
    movwf RC522_Address
F1_004571 equ $ ; in [POLYGENCODE.BAS] RC522_Value=RC522_PCD_RESETPHASE
    movlw 15
    movwf RC522_Value
F1_004572 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Write
    movlp ((RC522_Write) >> 8)
    call RC522_Write
ram_bank = 0
F1_004573 equ $ ; in [POLYGENCODE.BAS] return
    return
RC522_AntennaOn
F1_004576 equ $ ; in [POLYGENCODE.BAS] RC522_Address=RC522_Reg_TxControlReg
    movlw 20
    movwf RC522_Address
F1_004577 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Read
    movlp ((RC522_Read) >> 8)
    call RC522_Read
ram_bank = 0
F1_004578 equ $ ; in [POLYGENCODE.BAS] if RC522_Value.0=0 Or RC522_Value.1=0 Then
    movlw 1
    btfsc RC522_Value,0
    movlw 0
    movwf SP__P9_
    movlw 1
    btfsc RC522_Value,1
    movlw 0
    iorwf SP__P9_,F
    movlp ((_lbl__1516) >> 8)
    btfsc STATUS,2
    goto _lbl__1516
F1_004579 equ $ ; in [POLYGENCODE.BAS] RC522_BitMask=3
    movlw 3
    movwf RC522_BitMask
F1_004580 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_SetBitMask
    movlp ((RC522_SetBitMask) >> 8)
    call RC522_SetBitMask
ram_bank = 0
F1_004581 equ $ ; in [POLYGENCODE.BAS] endif
_lbl__1516
F1_004582 equ $ ; in [POLYGENCODE.BAS] return
    return
RC522_AntennaOff
F1_004585 equ $ ; in [POLYGENCODE.BAS] RC522_Address=RC522_Reg_TxControlReg
    movlw 20
    movwf RC522_Address
F1_004586 equ $ ; in [POLYGENCODE.BAS] RC522_BitMask=3
    movlw 3
    movwf RC522_BitMask
F1_004587 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_ClearBitMask
    movlp ((RC522_ClearBitMask) >> 8)
    call RC522_ClearBitMask
ram_bank = 0
F1_004588 equ $ ; in [POLYGENCODE.BAS] return
    return
RC522_SetBitMask
F1_004591 equ $ ; in [POLYGENCODE.BAS] RC522_Value=0
    clrf RC522_Value
F1_004592 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Read
    movlp ((RC522_Read) >> 8)
    call RC522_Read
ram_bank = 0
F1_004593 equ $ ; in [POLYGENCODE.BAS] RC522_Value=RC522_Value | RC522_BitMask
    movf RC522_BitMask,W
    iorwf RC522_Value,F
F1_004594 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Write
    movlp ((RC522_Write) >> 8)
    call RC522_Write
ram_bank = 0
F1_004595 equ $ ; in [POLYGENCODE.BAS] return
    return
RC522_ClearBitMask
F1_004598 equ $ ; in [POLYGENCODE.BAS] RC522_Value=0
    clrf RC522_Value
F1_004599 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Read
    movlp ((RC522_Read) >> 8)
    call RC522_Read
ram_bank = 0
F1_004600 equ $ ; in [POLYGENCODE.BAS] RC522_Value=RC522_Value & (~RC522_BitMask)
    comf RC522_BitMask,W
    movwf PBS_VAR1
    movf PBS_VAR1,W
    andwf RC522_Value,F
F1_004601 equ $ ; in [POLYGENCODE.BAS] GoSub RC522_Write
    movlp ((RC522_Write) >> 8)
    call RC522_Write
ram_bank = 0
F1_004602 equ $ ; in [POLYGENCODE.BAS] return
    return
RC522_Write
F1_004605 equ $ ; in [POLYGENCODE.BAS] Clear SPIRFIDSelect
    bcf LATC,1
F1_004606 equ $ ; in [POLYGENCODE.BAS] RC522_Temp=SSP1BUF
    movlb 0x03
ram_bank = 3
    movf SSP1BUF,W
    movlb 0x00
ram_bank = 0
    movwf RC522_Temp
F1_004607 equ $ ; in [POLYGENCODE.BAS] RC522_Temp=RC522_Address << 1
    lslf RC522_Address,W
    movwf RC522_Temp
F1_004608 equ $ ; in [POLYGENCODE.BAS] RC522_Temp=RC522_Temp & $7E
    movlw 126
    andwf RC522_Temp,F
F1_004609 equ $ ; in [POLYGENCODE.BAS] SSP1BUF=RC522_Temp
    movf RC522_Temp,W
    movlb 0x03
ram_bank = 3
    movwf SSP1BUF
F1_004610 equ $ ; in [POLYGENCODE.BAS] While BF=0
_lbl__1517
ram_bank = 0
    movlp ((_lbl__1518) >> 8)
    movlb 0x03
ram_bank = 3
    movf SSP1STAT,W
    movlb 0x00
ram_bank = 0
    btfsc WREG,0
    goto _lbl__1518
F1_004612 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__1517
_lbl__1518
F1_004613 equ $ ; in [POLYGENCODE.BAS] RC522_Temp=SSP1BUF
    movlb 0x03
ram_bank = 3
    movf SSP1BUF,W
    movlb 0x00
ram_bank = 0
    movwf RC522_Temp
F1_004614 equ $ ; in [POLYGENCODE.BAS] SSP1BUF=RC522_Value
    movf RC522_Value,W
    movlb 0x03
ram_bank = 3
    movwf SSP1BUF
F1_004615 equ $ ; in [POLYGENCODE.BAS] While BF=0
_lbl__1519
ram_bank = 0
    movlp ((_lbl__1520) >> 8)
    movlb 0x03
ram_bank = 3
    movf SSP1STAT,W
    movlb 0x00
ram_bank = 0
    btfsc WREG,0
    goto _lbl__1520
F1_004617 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__1519
_lbl__1520
F1_004618 equ $ ; in [POLYGENCODE.BAS] RC522_Value=SSP1BUF
    movlb 0x03
ram_bank = 3
    movf SSP1BUF,W
    movlb 0x00
ram_bank = 0
    movwf RC522_Value
F1_004619 equ $ ; in [POLYGENCODE.BAS] Set SPIRFIDSelect
    bsf LATC,1
F1_004620 equ $ ; in [POLYGENCODE.BAS] return
    return
RC522_Read
F1_004623 equ $ ; in [POLYGENCODE.BAS] Clear SPIRFIDSelect
    bcf LATC,1
F1_004624 equ $ ; in [POLYGENCODE.BAS] RC522_Temp=SSP1BUF
    movlb 0x03
ram_bank = 3
    movf SSP1BUF,W
    movlb 0x00
ram_bank = 0
    movwf RC522_Temp
F1_004625 equ $ ; in [POLYGENCODE.BAS] RC522_Temp=RC522_Address << 1
    lslf RC522_Address,W
    movwf RC522_Temp
F1_004626 equ $ ; in [POLYGENCODE.BAS] RC522_Temp=RC522_Temp & $7E
    movlw 126
    andwf RC522_Temp,F
F1_004627 equ $ ; in [POLYGENCODE.BAS] RC522_Temp=RC522_Temp | $80
    bsf RC522_Temp,7
F1_004629 equ $ ; in [POLYGENCODE.BAS] SSP1BUF=RC522_Temp
    movf RC522_Temp,W
    movlb 0x03
ram_bank = 3
    movwf SSP1BUF
F1_004630 equ $ ; in [POLYGENCODE.BAS] While BF=0
_lbl__1521
ram_bank = 0
    movlp ((_lbl__1522) >> 8)
    movlb 0x03
ram_bank = 3
    movf SSP1STAT,W
    movlb 0x00
ram_bank = 0
    btfsc WREG,0
    goto _lbl__1522
F1_004632 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__1521
_lbl__1522
F1_004633 equ $ ; in [POLYGENCODE.BAS] RC522_Temp=SSP1BUF
    movlb 0x03
ram_bank = 3
    movf SSP1BUF,W
    movlb 0x00
ram_bank = 0
    movwf RC522_Temp
F1_004634 equ $ ; in [POLYGENCODE.BAS] SSP1BUF=0
    movlb 0x03
ram_bank = 3
    clrf SSP1BUF
F1_004635 equ $ ; in [POLYGENCODE.BAS] While BF=0
_lbl__1523
ram_bank = 0
    movlp ((_lbl__1524) >> 8)
    movlb 0x03
ram_bank = 3
    movf SSP1STAT,W
    movlb 0x00
ram_bank = 0
    btfsc WREG,0
    goto _lbl__1524
F1_004637 equ $ ; in [POLYGENCODE.BAS] Wend
    _mjump _lbl__1523
_lbl__1524
F1_004638 equ $ ; in [POLYGENCODE.BAS] RC522_Value=SSP1BUF
    movlb 0x03
ram_bank = 3
    movf SSP1BUF,W
    movlb 0x00
ram_bank = 0
    movwf RC522_Value
F1_004639 equ $ ; in [POLYGENCODE.BAS] Set SPIRFIDSelect
    bsf LATC,1
F1_004640 equ $ ; in [POLYGENCODE.BAS] return
    return
Snooze2s
F1_004644 equ $ ; in [POLYGENCODE.BAS] WDTCON0=%00010111
    movlb 0x10
ram_bank = 16
    movlw 23
    movwf WDTCON0
F1_004645 equ $ ; in [POLYGENCODE.BAS] goto SnoozeNow
    movlb 0x00
ram_bank = 0
    _mjump SnoozeNow
Snooze1s
F1_004648 equ $ ; in [POLYGENCODE.BAS] WDTCON0=%00010101
    movlb 0x10
ram_bank = 16
    movlw 21
    movwf WDTCON0
F1_004649 equ $ ; in [POLYGENCODE.BAS] goto SnoozeNow
    movlb 0x00
ram_bank = 0
    _mjump SnoozeNow
Snooze512ms
F1_004652 equ $ ; in [POLYGENCODE.BAS] WDTCON0=%00010011
    movlb 0x10
ram_bank = 16
    movlw 19
    movwf WDTCON0
F1_004653 equ $ ; in [POLYGENCODE.BAS] goto SnoozeNow
    movlb 0x00
ram_bank = 0
    _mjump SnoozeNow
Snooze256ms
F1_004656 equ $ ; in [POLYGENCODE.BAS] WDTCON0=%00010001
    movlb 0x10
ram_bank = 16
    movlw 17
    movwf WDTCON0
F1_004657 equ $ ; in [POLYGENCODE.BAS] goto SnoozeNow
    movlb 0x00
ram_bank = 0
    _mjump SnoozeNow
Snooze128ms
F1_004660 equ $ ; in [POLYGENCODE.BAS] WDTCON0=%00001111
    movlb 0x10
ram_bank = 16
    movlw 15
    movwf WDTCON0
SnoozeNow
    movlb 0x00
ram_bank = 0
   Sleep
F1_004666 equ $ ; in [POLYGENCODE.BAS] Clear WDTCON0
    movlb 0x10
ram_bank = 16
    clrf WDTCON0
F1_004667 equ $ ; in [POLYGENCODE.BAS] return
    movlb 0x00
ram_bank = 0
    return
PowerOff
F1_004671 equ $ ; in [POLYGENCODE.BAS] GoSub LED1PowerOn
    movlp ((LED1PowerOn) >> 8)
    call LED1PowerOn
ram_bank = 0
F1_004672 equ $ ; in [POLYGENCODE.BAS] GoSub LED2PowerOn
    movlp ((LED2PowerOn) >> 8)
    call LED2PowerOn
ram_bank = 0
F1_004673 equ $ ; in [POLYGENCODE.BAS] GoSub PowerOffSound
    movlp ((PowerOffSound) >> 8)
    call PowerOffSound
ram_bank = 0
F1_004674 equ $ ; in [POLYGENCODE.BAS] GoSub BlankAllLED1s
    movlp ((BlankAllLED1s) >> 8)
    call BlankAllLED1s
ram_bank = 0
F1_004675 equ $ ; in [POLYGENCODE.BAS] GoSub BlankAllLED2s
    movlp ((BlankAllLED2s) >> 8)
    call BlankAllLED2s
ram_bank = 0
F1_004676 equ $ ; in [POLYGENCODE.BAS] LED1ByteCount=51
    movlb 0x0D
ram_bank = 13
    movlw 51
    movwf LED1ByteCount
F1_004677 equ $ ; in [POLYGENCODE.BAS] LED2ByteCount=36
    movlw 36
    movwf LED2ByteCount
F1_004678 equ $ ; in [POLYGENCODE.BAS] GoSub SendLEDData
    movlb 0x00
ram_bank = 0
    movlp ((SendLEDData) >> 8)
    call SendLEDData
ram_bank = 0
F1_004679 equ $ ; in [POLYGENCODE.BAS] DelayMs 25
    movlw 25
    movlp ((__delay_ms_) >> 8)
    call __delay_ms_
ram_bank = 0
F1_004680 equ $ ; in [POLYGENCODE.BAS] GoSub LED1PowerOff
    movlp ((LED1PowerOff) >> 8)
    call LED1PowerOff
ram_bank = 0
F1_004681 equ $ ; in [POLYGENCODE.BAS] GoSub LED2PowerOff
    movlp ((LED2PowerOff) >> 8)
    call LED2PowerOff
ram_bank = 0
F1_004682 equ $ ; in [POLYGENCODE.BAS] DelayMs 25
    movlw 25
    movlp ((__delay_ms_) >> 8)
    call __delay_ms_
ram_bank = 0
F1_004683 equ $ ; in [POLYGENCODE.BAS] Clear PowerControl
    bcf LATB,1
PowerOffLoop
F1_004685 equ $ ; in [POLYGENCODE.BAS] goto PowerOffLoop
    _mjump PowerOffLoop
F1_EOF equ $ ; POLYGENCODE.BAS
_pblb__1525
    bra _pblb__1525
;---------------------------------------------
;---------------------------------------------
; USER. STRING VARIABLE PRE-LOADS
_strlb__1
    dt 72,115,119
    dt 105,116,99
    dt 104,0
_strlb__2
    dt 80,87,82
    dt 79,78,0
_strlb__3
    dt 67,76,75
    dt 69,82,0
_strlb__4
    dt 67,70,71
    dt 79,75,0
_strlb__5
    dt 67,70,71
    dt 66,68,0
_strlb__6
    dt 84,73,77
    dt 69,70,0
_strlb__7
    dt 77,81,84
    dt 84,70,0
_strlb__8
    dt 84,65,77
    dt 80,82,0
_strlb__9
    dt 65,76,73
    dt 86,69,0
_strlb__10
    dt 65,87,65
    dt 75,69,0
_strlb__11
    dt 73,78,73
    dt 84,65,0
_strlb__12
    dt 73,78,73
    dt 84,83,0
_strlb__13
    dt 73,78,73
    dt 84,78,0
_strlb__14
    dt 80,85,78
    dt 75,78,0
_strlb__15
    dt 80,76,65
    dt 89,82,0
_strlb__16
    dt 80,79,78
    dt 71,66,0
_strlb__17
    dt 79,87,78
    dt 69,82,0
_strlb__18
    dt 67,65,80
    dt 79,75,0
_strlb__19
    dt 67,65,80
    dt 70,65,0
_strlb__20
    dt 72,65,86
    dt 75,89,0
_strlb__21
    dt 78,79,75
    dt 69,89,0
_strlb__22
    dt 67,79,78
    dt 70,73,71
    dt 0
_strlb__23
    dt 85,80,68
    dt 87,70,0
_strlb__24
    dt 85,80,68
    dt 79,75,0
_strlb__25
    dt 71,65,77
    dt 69,68,0
_strlb__26
    dt 87,73,70
    dt 73,70,0
_strlb__27
    dt 82,69,71
    dt 79,75,0
_strlb__28
    dt 82,69,71
    dt 70,65,0
_strlb__29
    dt 87,73,80
    dt 69,68,0
_strlb__30
    dt 83,87,80
    dt 79,75,0
_strlb__31
    dt 83,87,80
    dt 70,76,0
_strlb__32
    dt 67,77,68
    dt 65,75,0
_strlb__33
    dt 116,101,120
    dt 116,47,105
    dt 110,105,116
    dt 0
_strlb__34
    dt 116,101,120
    dt 116,47,115
    dt 101,116,108
    dt 111,99,0
_strlb__35
    dt 116,101,120
    dt 116,47,112
    dt 119,114,111
    dt 102,102,0
_strlb__36
    dt 116,101,120
    dt 116,47,101
    dt 120,105,116
    dt 99,109,100
    dt 0
_strlb__37
    dt 116,101,120
    dt 116,47,100
    dt 105,97,103
    dt 115,0
;---------------------------------------------
; USER. CODE MEMORY TABLE DATA
MJTToken
    dt 0,0,0
    dt 0,0,0
    dt 0,0,0
    dt 0
MJTToken2
    dt 0,0,0
    dt 0,0,0
    dt 0,0,0
    dt 0
__eof
;---------------------------------------------
; CONFIG FUSES
__config _CONFIG1, FEXTOSC_OFF&RSTOSC_HFINT32&CLKOUTEN_OFF&CSWEN_ON&FCMEN_ON
__config _CONFIG2, MCLRE_OFF&PWRTE_OFF&LPBOREN_OFF&BOREN_ON&BORV_LO&ZCD_OFF&PPS1WAY_ON&STVREN_ON
__config _CONFIG3, WDTCPS_WDTCPS_31&WDTE_SWDTEN&WDTCWS_WDTCWS_7&WDTCCS_LFINTOSC
__config _CONFIG4, BBSIZE_BB512&BBEN_OFF&SAFEN_OFF&WRTAPP_ON&WRTB_ON&WRTC_ON&WRTSAF_ON&LVP_ON
__config _CONFIG5, CP_ON
    end
