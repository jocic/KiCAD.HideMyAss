subtitle "Microchip MPLAB XC8 C Compiler v2.20 (Free license) build 20200408173844 Og9 "

pagewidth 120

	opt flic

	processor	12F675
include "/opt/microchip/xc8/v2.20/pic/include/proc/12f675.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
# 54 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
INDF equ 00h ;# 
# 74 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
TMR0 equ 01h ;# 
# 94 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
PCL equ 02h ;# 
# 114 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
STATUS equ 03h ;# 
# 200 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
FSR equ 04h ;# 
# 220 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
GPIO equ 05h ;# 
# 308 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
PCLATH equ 0Ah ;# 
# 328 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
INTCON equ 0Bh ;# 
# 406 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
PIR1 equ 0Ch ;# 
# 454 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
TMR1 equ 0Eh ;# 
# 461 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
TMR1L equ 0Eh ;# 
# 481 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
TMR1H equ 0Fh ;# 
# 501 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
T1CON equ 010h ;# 
# 566 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
CMCON equ 019h ;# 
# 625 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
ADRESH equ 01Eh ;# 
# 645 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
ADCON0 equ 01Fh ;# 
# 729 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
OPTION_REG equ 081h ;# 
# 799 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
TRISIO equ 085h ;# 
# 849 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
PIE1 equ 08Ch ;# 
# 897 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
PCON equ 08Eh ;# 
# 931 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
OSCCAL equ 090h ;# 
# 991 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
WPU equ 095h ;# 
# 1036 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
IOC equ 096h ;# 
# 1041 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
IOCB equ 096h ;# 
# 1210 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
VRCON equ 099h ;# 
# 1270 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
EEDATA equ 09Ah ;# 
# 1275 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
EEDAT equ 09Ah ;# 
# 1308 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
EEADR equ 09Bh ;# 
# 1328 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
EECON1 equ 09Ch ;# 
# 1366 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
EECON2 equ 09Dh ;# 
# 1386 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
ADRESL equ 09Eh ;# 
# 1406 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
ANSEL equ 09Fh ;# 
# 54 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
INDF equ 00h ;# 
# 74 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
TMR0 equ 01h ;# 
# 94 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
PCL equ 02h ;# 
# 114 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
STATUS equ 03h ;# 
# 200 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
FSR equ 04h ;# 
# 220 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
GPIO equ 05h ;# 
# 308 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
PCLATH equ 0Ah ;# 
# 328 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
INTCON equ 0Bh ;# 
# 406 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
PIR1 equ 0Ch ;# 
# 454 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
TMR1 equ 0Eh ;# 
# 461 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
TMR1L equ 0Eh ;# 
# 481 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
TMR1H equ 0Fh ;# 
# 501 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
T1CON equ 010h ;# 
# 566 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
CMCON equ 019h ;# 
# 625 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
ADRESH equ 01Eh ;# 
# 645 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
ADCON0 equ 01Fh ;# 
# 729 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
OPTION_REG equ 081h ;# 
# 799 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
TRISIO equ 085h ;# 
# 849 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
PIE1 equ 08Ch ;# 
# 897 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
PCON equ 08Eh ;# 
# 931 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
OSCCAL equ 090h ;# 
# 991 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
WPU equ 095h ;# 
# 1036 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
IOC equ 096h ;# 
# 1041 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
IOCB equ 096h ;# 
# 1210 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
VRCON equ 099h ;# 
# 1270 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
EEDATA equ 09Ah ;# 
# 1275 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
EEDAT equ 09Ah ;# 
# 1308 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
EEADR equ 09Bh ;# 
# 1328 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
EECON1 equ 09Ch ;# 
# 1366 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
EECON2 equ 09Dh ;# 
# 1386 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
ADRESL equ 09Eh ;# 
# 1406 "/opt/microchip/xc8/v2.20/pic/include/proc/pic12f675.h"
ANSEL equ 09Fh ;# 
	FNROOT	_main
	FNCALL	intlevel1,_status_routine
	global	intlevel1
	FNROOT	intlevel1
	global	_indicator
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"source/main.c"
	line	204

;initializer for _indicator
	retlw	02h
	global	_i
	global	_ticks_t0
	global	_voltage
	global	_ADRESH
_ADRESH	set	0x1E
	global	_CMCON
_CMCON	set	0x19
	global	_TMR0
_TMR0	set	0x1
	global	_T0IF
_T0IF	set	0x5A
	global	_GO
_GO	set	0xF9
	global	_GP4
_GP4	set	0x2C
	global	_GP3
_GP3	set	0x2B
	global	_GP2
_GP2	set	0x2A
	global	_GP1
_GP1	set	0x29
	global	_CHS1
_CHS1	set	0xFB
	global	_CHS0
_CHS0	set	0xFA
	global	_GP0
_GP0	set	0x28
	global	_VCFG
_VCFG	set	0xFE
	global	_ADFM
_ADFM	set	0xFF
	global	_GIE
_GIE	set	0x5F
	global	_T0IE
_T0IE	set	0x5D
	global	_ADRESL
_ADRESL	set	0x9E
	global	_VRCON
_VRCON	set	0x99
	global	_ANSEL
_ANSEL	set	0x9F
	global	_TRISIO4
_TRISIO4	set	0x42C
	global	_TRISIO3
_TRISIO3	set	0x42B
	global	_TRISIO2
_TRISIO2	set	0x42A
	global	_TRISIO1
_TRISIO1	set	0x429
	global	_ADCS2
_ADCS2	set	0x4FE
	global	_ADCS1
_ADCS1	set	0x4FD
	global	_ADCS0
_ADCS0	set	0x4FC
	global	_ANS2
_ANS2	set	0x4FA
	global	_TRISIO0
_TRISIO0	set	0x428
	global	_PS0
_PS0	set	0x408
	global	_PS1
_PS1	set	0x409
	global	_PS2
_PS2	set	0x40A
	global	_PSA
_PSA	set	0x40B
	global	_T0CS
_T0CS	set	0x40D
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FOSC = "INTRCIO"
	config WDTE = "OFF"
	config PWRTE = "OFF"
	config MCLRE = "OFF"
	config BOREN = "ON"
	config CP = "OFF"
	config CPD = "OFF"
	file	"dist/main.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_j:
       ds      2

_i:
       ds      2

_ticks_t0:
       ds      2

_voltage:
       ds      2

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"source/main.c"
	line	204
_indicator:
       ds      1

	file	"dist/main.as"
	line	#
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	line	#
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_main:	; 1 bytes @ 0x0
?_status_routine:	; 1 bytes @ 0x0
??_status_routine:	; 1 bytes @ 0x0
	ds	5
??_main:	; 1 bytes @ 0x5
	ds	3
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        1
;!    BSS         8
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON            0      0       0
;!    BANK0            62      8      17

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _status_routine in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _status_routine in BANK0
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 3     3      0       0
;!                                              5 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 0
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (1) _status_routine                                       5     5      0       0
;!                                              0 BANK0      5     5      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!
;! _status_routine (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               3E      8      11       4       27.4%
;!BITBANK0            3E      0       0       3        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               0      0       0       1        0.0%
;!BITCOMMON            0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      11       6        0.0%
;!ABS                  0      0      11       5        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA              80      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 245 in file "source/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          0       3
;;      Totals:         0       3
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"source/main.c"
	line	245
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"source/main.c"
	line	245
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	callstack 7
; Regs used in _main: [wreg+status,2+status,0+btemp+1]
	line	249
	
l738:	
	asmopt push
asmopt off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	173
movwf	((??_main+0)+0),f
	u157:
decfsz	((??_main+0)+0),f
	goto	u157
	decfsz	((??_main+0)+0+1),f
	goto	u157
	decfsz	((??_main+0)+0+2),f
	goto	u157
	nop2
asmopt pop

	line	253
	
l740:	
	bsf	(93/8),(93)&7	;volatile
	line	254
	
l742:	
	bsf	(95/8),(95)&7	;volatile
	line	258
	
l744:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1037/8)^080h,(1037)&7	;volatile
	line	259
	
l746:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	260
	
l748:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1035/8)^080h,(1035)&7	;volatile
	line	264
	
l750:	
	bcf	(1034/8)^080h,(1034)&7	;volatile
	line	265
	
l752:	
	bcf	(1033/8)^080h,(1033)&7	;volatile
	line	266
	
l754:	
	bsf	(1032/8)^080h,(1032)&7	;volatile
	line	270
	
l756:	
	clrf	(159)^080h	;volatile
	line	271
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(25)	;volatile
	line	272
	
l758:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(153)^080h	;volatile
	line	273
	
l760:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(255/8),(255)&7	;volatile
	line	274
	
l762:	
	bcf	(254/8),(254)&7	;volatile
	line	280
	
l764:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1064/8)^080h,(1064)&7	;volatile
	line	281
	
l766:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(40/8),(40)&7	;volatile
	line	282
	
l768:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1274/8)^080h,(1274)&7	;volatile
	line	283
	
l770:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(250/8),(250)&7	;volatile
	line	284
	
l772:	
	bcf	(251/8),(251)&7	;volatile
	line	285
	
l774:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1276/8)^080h,(1276)&7	;volatile
	line	286
	
l776:	
	bsf	(1277/8)^080h,(1277)&7	;volatile
	line	287
	
l778:	
	bcf	(1278/8)^080h,(1278)&7	;volatile
	line	293
	
l780:	
	bcf	(1065/8)^080h,(1065)&7	;volatile
	line	294
	
l782:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(41/8),(41)&7	;volatile
	line	300
	
l784:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1066/8)^080h,(1066)&7	;volatile
	line	301
	
l786:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(42/8),(42)&7	;volatile
	line	307
	
l788:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1067/8)^080h,(1067)&7	;volatile
	line	308
	
l790:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(43/8),(43)&7	;volatile
	line	314
	
l792:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1068/8)^080h,(1068)&7	;volatile
	line	315
	
l794:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(44/8),(44)&7	;volatile
	line	321
	
l796:	
	asmopt push
asmopt off
movlw	130
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_main+0)+0+1),f
	movlw	221
movwf	((??_main+0)+0),f
	u167:
decfsz	((??_main+0)+0),f
	goto	u167
	decfsz	((??_main+0)+0+1),f
	goto	u167
	nop2
asmopt pop

	line	323
	
l798:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(249/8),(249)&7	;volatile
	line	325
	goto	l802
	line	327
	
l800:	
	asmopt push
asmopt off
	movlw	199
movwf	((??_main+0)+0),f
	u177:
	nop2
decfsz	(??_main+0)+0,f
	goto	u177
	nop2
	nop2
asmopt pop

	line	325
	
l802:	
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(249/8),(249)&7	;volatile
	goto	u81
	goto	u80
u81:
	goto	l800
u80:
	line	330
	
l804:	
	movlw	low(02h)
	andwf	(30),w	;volatile
	movwf	(??_main+0)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	addwf	0+(??_main+0)+0,w
	movwf	(??_main+1)+0
	clrf	(??_main+1)+0+1
	rlf	1+(??_main+1)+0,f
	
	movf	0+(??_main+1)+0,w
	movwf	(_voltage)
	movf	1+(??_main+1)+0,w
	movwf	(_voltage+1)
	line	332
	
l806:	
	movlw	02h
	subwf	(_voltage+1),w
	movlw	05Bh
	skipnz
	subwf	(_voltage),w
	skipnc
	goto	u91
	goto	u90
u91:
	goto	l810
u90:
	line	334
	
l808:	
	bsf	(41/8),(41)&7	;volatile
	line	335
	bcf	(42/8),(42)&7	;volatile
	line	336
	bcf	(43/8),(43)&7	;volatile
	line	338
	clrf	(_indicator)
	incf	(_indicator),f
	line	340
	goto	l796
	line	341
	
l810:	
	movlw	02h
	subwf	(_voltage+1),w
	movlw	0E1h
	skipnz
	subwf	(_voltage),w
	skipnc
	goto	u101
	goto	u100
u101:
	goto	l816
u100:
	line	343
	
l812:	
	bcf	(41/8),(41)&7	;volatile
	line	344
	bsf	(42/8),(42)&7	;volatile
	line	345
	bcf	(43/8),(43)&7	;volatile
	line	347
	
l814:	
	movlw	low(02h)
	movwf	btemp+1
	movf	btemp+1,w
	movwf	(_indicator)
	line	349
	goto	l796
	line	350
	
l816:	
	movlw	02h
	subwf	(_voltage+1),w
	movlw	0FFh
	skipnz
	subwf	(_voltage),w
	skipnc
	goto	u111
	goto	u110
u111:
	goto	l822
u110:
	line	352
	
l818:	
	bcf	(41/8),(41)&7	;volatile
	line	353
	bcf	(42/8),(42)&7	;volatile
	line	354
	bsf	(43/8),(43)&7	;volatile
	line	356
	
l820:	
	movlw	low(03h)
	movwf	btemp+1
	movf	btemp+1,w
	movwf	(_indicator)
	line	358
	goto	l796
	line	361
	
l822:	
	clrf	(_indicator)
	line	363
	
l824:	
	asmopt push
asmopt off
movlw  153
movwf	((??_main+0)+0+2),f
movlw	49
movwf	((??_main+0)+0+1),f
	movlw	162
movwf	((??_main+0)+0),f
	u187:
decfsz	((??_main+0)+0),f
	goto	u187
	decfsz	((??_main+0)+0+1),f
	goto	u187
	decfsz	((??_main+0)+0+2),f
	goto	u187
	nop
asmopt pop

	goto	l796
	global	start
	ljmp	start
	callstack 0
	line	367
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_status_routine

;; *************** function _status_routine *****************
;; Defined at:
;;		line 390 in file "source/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          0       5
;;      Totals:         0       5
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	390
global __ptext1
__ptext1:	;psect for function _status_routine
psect	text1
	file	"source/main.c"
	line	390
	global	__size_of_status_routine
	__size_of_status_routine	equ	__end_of_status_routine-_status_routine
	
_status_routine:	
;incstack = 0
	callstack 7
; Regs used in _status_routine: [wreg+status,2]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_status_routine+3)
	movf	pclath,w
	movwf	(??_status_routine+4)
	ljmp	_status_routine
psect	text1
	line	394
	
i1l826:	
	btfss	(90/8),(90)&7	;volatile
	goto	u12_21
	goto	u12_20
u12_21:
	goto	i1l105
u12_20:
	line	396
	
i1l828:	
	movlw	01h
	addwf	(_ticks_t0),f	;volatile
	skipnc
	incf	(_ticks_t0+1),f	;volatile
	movlw	0
	addwf	(_ticks_t0+1),f	;volatile
	line	398
	movlw	low(05h)
	movwf	(1)	;volatile
	line	399
	
i1l830:	
	bcf	(90/8),(90)&7	;volatile
	line	401
	movlw	07h
	subwf	(_ticks_t0+1),w	;volatile
	movlw	0D0h
	skipnz
	subwf	(_ticks_t0),w	;volatile
	skipc
	goto	u13_21
	goto	u13_20
u13_21:
	goto	i1l105
u13_20:
	line	403
	
i1l832:	
	clrf	(_i)
	clrf	(_i+1)
	goto	i1l102
	
i1l103:	
	line	405
	bsf	(44/8),(44)&7	;volatile
	line	407
	
i1l834:	
	asmopt push
asmopt off
movlw  2
movwf	((??_status_routine+0)+0+2),f
movlw	69
movwf	((??_status_routine+0)+0+1),f
	movlw	169
movwf	((??_status_routine+0)+0),f
	u19_27:
decfsz	((??_status_routine+0)+0),f
	goto	u19_27
	decfsz	((??_status_routine+0)+0+1),f
	goto	u19_27
	decfsz	((??_status_routine+0)+0+2),f
	goto	u19_27
	nop2
asmopt pop

	line	409
	
i1l836:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(44/8),(44)&7	;volatile
	line	411
	asmopt push
asmopt off
movlw  2
movwf	((??_status_routine+0)+0+2),f
movlw	69
movwf	((??_status_routine+0)+0+1),f
	movlw	169
movwf	((??_status_routine+0)+0),f
	u20_27:
decfsz	((??_status_routine+0)+0),f
	goto	u20_27
	decfsz	((??_status_routine+0)+0+1),f
	goto	u20_27
	decfsz	((??_status_routine+0)+0+2),f
	goto	u20_27
	nop2
asmopt pop

	line	403
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	0
	addwf	(_i+1),f
	
i1l102:	
	movf	(_indicator),w
	movwf	(??_status_routine+0)+0
	clrf	(??_status_routine+0)+0+1
	movf	1+(??_status_routine+0)+0,w
	subwf	(_i+1),w
	skipz
	goto	u14_25
	movf	0+(??_status_routine+0)+0,w
	subwf	(_i),w
u14_25:
	skipc
	goto	u14_21
	goto	u14_20
u14_21:
	goto	i1l103
u14_20:
	line	415
	
i1l838:	
	clrf	(_ticks_t0)	;volatile
	clrf	(_ticks_t0+1)	;volatile
	line	418
	
i1l105:	
	movf	(??_status_routine+4),w
	movwf	pclath
	swapf	(??_status_routine+3)^00h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	callstack 0
GLOBAL	__end_of_status_routine
	__end_of_status_routine:
	signat	_status_routine,89
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 05Eh

	DABS	1,94,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
