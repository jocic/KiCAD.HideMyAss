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
	global	_i
	global	_io_stack
	global	_conversion
	global	_indicator
	global	_ADRESH
_ADRESH	set	0x1E
	global	_GPIO
_GPIO	set	0x5
	global	_CMCON
_CMCON	set	0x19
	global	_TMR0
_TMR0	set	0x1
	global	_GO
_GO	set	0xF9
	global	_ADON
_ADON	set	0xF8
	global	_GP4
_GP4	set	0x2C
	global	_GP5
_GP5	set	0x2D
	global	_GP1
_GP1	set	0x29
	global	_GP2
_GP2	set	0x2A
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
	global	_GPIE
_GPIE	set	0x5B
	global	_INTE
_INTE	set	0x5C
	global	_PEIE
_PEIE	set	0x5E
	global	_T0IE
_T0IE	set	0x5D
	global	_GIE
_GIE	set	0x5F
	global	_ADRESL
_ADRESL	set	0x9E
	global	_VRCON
_VRCON	set	0x99
	global	_ANSEL
_ANSEL	set	0x9F
	global	_IOC
_IOC	set	0x96
	global	_TRISIO4
_TRISIO4	set	0x42C
	global	_TRISIO5
_TRISIO5	set	0x42D
	global	_TRISIO1
_TRISIO1	set	0x429
	global	_TRISIO2
_TRISIO2	set	0x42A
	global	_ADCS2
_ADCS2	set	0x4FE
	global	_ADCS1
_ADCS1	set	0x4FD
	global	_ADCS0
_ADCS0	set	0x4FC
	global	_ANS0
_ANS0	set	0x4F8
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
	global	_EEIE
_EEIE	set	0x467
	global	_CMIE
_CMIE	set	0x463
	global	_ADIE
_ADIE	set	0x466
	global	_TMR1IE
_TMR1IE	set	0x460
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

_io_stack:
       ds      2

_conversion:
       ds      2

_indicator:
       ds      1

	file	"dist/main.as"
	line	#
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank0
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
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
??_main:	; 1 bytes @ 0x0
	ds	3
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         9
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON            0      0       0
;!    BANK0            62      3      12

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
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
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 0
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            0      0       0       0        0.0%
;!EEDATA              80      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMON               0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BITBANK0            3E      0       0       3        0.0%
;!BANK0               3E      3       C       4       19.4%
;!ABS                  0      0       C       5        0.0%
;!DATA                 0      0       C       6        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 289 in file "source/main.c"
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"source/main.c"
	line	289
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"source/main.c"
	line	289
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	callstack 8
; Regs used in _main: [wreg+status,2+status,0+btemp+1]
	line	291
	
l762:	
	asmopt push
asmopt off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	173
movwf	((??_main+0)+0),f
	u137:
decfsz	((??_main+0)+0),f
	goto	u137
	decfsz	((??_main+0)+0+1),f
	goto	u137
	decfsz	((??_main+0)+0+2),f
	goto	u137
	nop2
asmopt pop

	line	295
	
l764:	
	bsf	(95/8),(95)&7	;volatile
	line	296
	
l766:	
	bcf	(93/8),(93)&7	;volatile
	line	297
	
l768:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1120/8)^080h,(1120)&7	;volatile
	line	298
	
l770:	
	bsf	(1126/8)^080h,(1126)&7	;volatile
	line	299
	
l772:	
	bcf	(94/8),(94)&7	;volatile
	line	300
	
l774:	
	bcf	(1123/8)^080h,(1123)&7	;volatile
	line	301
	
l776:	
	bcf	(92/8),(92)&7	;volatile
	line	302
	
l778:	
	bcf	(91/8),(91)&7	;volatile
	line	303
	
l780:	
	clrf	(150)^080h	;volatile
	line	304
	
l782:	
	bcf	(1127/8)^080h,(1127)&7	;volatile
	line	308
	
l784:	
	bcf	(1037/8)^080h,(1037)&7	;volatile
	line	309
	
l786:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	310
	
l788:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1035/8)^080h,(1035)&7	;volatile
	line	314
	
l790:	
	bcf	(1034/8)^080h,(1034)&7	;volatile
	line	315
	
l792:	
	bcf	(1033/8)^080h,(1033)&7	;volatile
	line	316
	
l794:	
	bsf	(1032/8)^080h,(1032)&7	;volatile
	line	320
	
l796:	
	clrf	(159)^080h	;volatile
	line	321
	
l798:	
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(25)	;volatile
	line	322
	bsf	status, 5	;RP0=1, select bank1
	clrf	(153)^080h	;volatile
	line	323
	
l800:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(255/8),(255)&7	;volatile
	line	324
	
l802:	
	bcf	(254/8),(254)&7	;volatile
	line	330
	
l804:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1064/8)^080h,(1064)&7	;volatile
	line	331
	
l806:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(40/8),(40)&7	;volatile
	line	332
	
l808:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1272/8)^080h,(1272)&7	;volatile
	line	333
	
l810:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(250/8),(250)&7	;volatile
	line	334
	
l812:	
	bcf	(251/8),(251)&7	;volatile
	line	335
	
l814:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1276/8)^080h,(1276)&7	;volatile
	line	336
	
l816:	
	bsf	(1277/8)^080h,(1277)&7	;volatile
	line	337
	
l818:	
	bcf	(1278/8)^080h,(1278)&7	;volatile
	line	343
	
l820:	
	bcf	(1066/8)^080h,(1066)&7	;volatile
	line	344
	
l822:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(42/8),(42)&7	;volatile
	line	350
	
l824:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1065/8)^080h,(1065)&7	;volatile
	line	351
	
l826:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(41/8),(41)&7	;volatile
	line	357
	
l828:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1069/8)^080h,(1069)&7	;volatile
	line	358
	
l830:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(45/8),(45)&7	;volatile
	line	364
	
l832:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1068/8)^080h,(1068)&7	;volatile
	line	365
	
l834:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(44/8),(44)&7	;volatile
	line	369
	
l836:	
	bsf	(248/8),(248)&7	;volatile
	line	371
	
l101:	
	line	375
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_io_stack)	;volatile
	clrf	(_io_stack+1)	;volatile
	line	379
	
l838:	
	movf	(_io_stack),w	;volatile
	movwf	(5)	;volatile
	line	381
	
l840:	
	asmopt push
asmopt off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	173
movwf	((??_main+0)+0),f
	u147:
decfsz	((??_main+0)+0),f
	goto	u147
	decfsz	((??_main+0)+0+1),f
	goto	u147
	decfsz	((??_main+0)+0+2),f
	goto	u147
	nop2
asmopt pop

	line	385
	
l842:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(249/8),(249)&7	;volatile
	line	387
	goto	l846
	line	389
	
l844:	
	asmopt push
asmopt off
	movlw	199
movwf	((??_main+0)+0),f
	u157:
	nop2
decfsz	(??_main+0)+0,f
	goto	u157
	nop2
	nop2
asmopt pop

	line	387
	
l846:	
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(249/8),(249)&7	;volatile
	goto	u71
	goto	u70
u71:
	goto	l844
u70:
	line	392
	
l848:	
	movlw	low(03h)
	andwf	(30),w	;volatile
	movwf	(??_main+0)+0
	movf	0+(??_main+0)+0,w
	movwf	(_conversion+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_conversion)
	line	396
	
l850:	
	movf	(_conversion+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u85
	movlw	050h
	subwf	(_conversion),w
u85:

	skipnc
	goto	u81
	goto	u80
u81:
	goto	l105
u80:
	line	398
	
l852:	
	movlw	low(04h)
	movwf	btemp+1
	movf	btemp+1,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_indicator)
	line	400
	
l105:	
	line	401
	bcf	status, 5	;RP0=0, select bank0
	movf	(_conversion+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(03h)^80h
	subwf	btemp+1,w
	skipz
	goto	u95
	movlw	034h
	subwf	(_conversion),w
u95:

	skipnc
	goto	u91
	goto	u90
u91:
	goto	l858
u90:
	line	403
	
l854:	
	movlw	06h
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(_io_stack),f	;volatile
	movlw	0
	iorwf	(_io_stack+1),f	;volatile
	line	405
	
l856:	
	clrf	(_indicator)
	incf	(_indicator),f
	line	407
	goto	l870
	line	408
	
l858:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(_conversion+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(03h)^80h
	subwf	btemp+1,w
	skipz
	goto	u105
	movlw	0DEh
	subwf	(_conversion),w
u105:

	skipc
	goto	u101
	goto	u100
u101:
	goto	l862
u100:
	
l860:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(_conversion+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(03h)^80h
	subwf	btemp+1,w
	skipz
	goto	u115
	movlw	0FCh
	subwf	(_conversion),w
u115:

	skipnc
	goto	u111
	goto	u110
u111:
	goto	l866
u110:
	line	410
	
l862:	
	movlw	024h
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(_io_stack),f	;volatile
	movlw	0
	iorwf	(_io_stack+1),f	;volatile
	line	412
	
l864:	
	movlw	low(03h)
	movwf	btemp+1
	movf	btemp+1,w
	movwf	(_indicator)
	line	414
	goto	l870
	line	417
	
l866:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_indicator)
	line	419
	
l868:	
	asmopt push
asmopt off
movlw  23
movwf	((??_main+0)+0+2),f
movlw	213
movwf	((??_main+0)+0+1),f
	movlw	22
movwf	((??_main+0)+0),f
	u167:
decfsz	((??_main+0)+0),f
	goto	u167
	decfsz	((??_main+0)+0+1),f
	goto	u167
	decfsz	((??_main+0)+0+2),f
	goto	u167
	nop
asmopt pop

	line	423
	
l870:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(_io_stack),w	;volatile
	movwf	(5)	;volatile
	line	427
	clrf	(_i)
	clrf	(_i+1)
	goto	l112
	
l113:	
	line	429
	bsf	(_io_stack)+(4/8),(4)&7	;volatile
	line	431
	
l872:	
	asmopt push
asmopt off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	4
movwf	((??_main+0)+0+1),f
	movlw	186
movwf	((??_main+0)+0),f
	u177:
decfsz	((??_main+0)+0),f
	goto	u177
	decfsz	((??_main+0)+0+1),f
	goto	u177
	decfsz	((??_main+0)+0+2),f
	goto	u177
	nop
asmopt pop

	line	433
	bcf	status, 5	;RP0=0, select bank0
	movf	(_io_stack),w	;volatile
	movwf	(5)	;volatile
	line	435
	movlw	02Fh
	andwf	(_io_stack),f	;volatile
	movlw	0
	andwf	(_io_stack+1),f	;volatile
	line	437
	asmopt push
asmopt off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	4
movwf	((??_main+0)+0+1),f
	movlw	186
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

	line	439
	bcf	status, 5	;RP0=0, select bank0
	movf	(_io_stack),w	;volatile
	movwf	(5)	;volatile
	line	427
	movlw	01h
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	0
	addwf	(_i+1),f
	
l112:	
	movf	(_indicator),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	1+(??_main+0)+0,w
	subwf	(_i+1),w
	skipz
	goto	u125
	movf	0+(??_main+0)+0,w
	subwf	(_i),w
u125:
	skipc
	goto	u121
	goto	u120
u121:
	goto	l113
u120:
	line	445
	
l874:	
	asmopt push
asmopt off
movlw  16
movwf	((??_main+0)+0+2),f
movlw	57
movwf	((??_main+0)+0+1),f
	movlw	13
movwf	((??_main+0)+0),f
	u197:
decfsz	((??_main+0)+0),f
	goto	u197
	decfsz	((??_main+0)+0+1),f
	goto	u197
	decfsz	((??_main+0)+0+2),f
	goto	u197
	nop2
asmopt pop

	goto	l101
	global	start
	ljmp	start
	callstack 0
	line	449
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 05Eh

	DABS	1,94,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
