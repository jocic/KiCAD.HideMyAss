EESchema Schematic File Version 4
LIBS:hardware-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Missing:USBLC6-2 U?
U 1 1 5F42C6D3
P 2150 1650
F 0 "U?" H 2150 2017 50  0000 C CNN
F 1 "USBLC6-2" H 2150 1926 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 1250 1050 50  0001 L BNN
F 3 "https://www.st.com/resource/en/datasheet/usblc6-2.pdf" H 2150 2150 50  0001 C CNN
	1    2150 1650
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Micro J?
U 1 1 5F42C876
P 1150 1400
F 0 "J?" H 1154 1880 50  0000 C CNN
F 1 "USB_B_Micro" H 1150 1782 50  0000 C CNN
F 2 "" H 1300 1350 50  0001 C CNN
F 3 "~" H 1300 1350 50  0001 C CNN
	1    1150 1400
	1    0    0    -1  
$EndComp
NoConn ~ 1050 1800
$Comp
L MCU_Microchip_PIC18:PIC18F45K50_QFP U?
U 1 1 5F42CA4A
P 7350 3100
F 0 "U?" H 7350 4678 50  0000 C CNN
F 1 "PIC18F45K50_QFP" H 7350 4587 50  0000 C CNN
F 2 "Package_QFP:TQFP-44_10x10mm_P0.8mm" H 7350 3100 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/30000684B.pdf" H 7350 2800 50  0001 C CNN
	1    7350 3100
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L78L05_SOT89 U?
U 1 1 5F42CC5E
P 4850 1250
F 0 "U?" H 4850 1492 50  0000 C CNN
F 1 "L78L05_SOT89" H 4850 1401 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-89-3" H 4850 1450 50  0001 C CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/15/55/e5/aa/23/5b/43/fd/CD00000446.pdf/files/CD00000446.pdf/jcr:content/translations/en.CD00000446.pdf" H 4850 1200 50  0001 C CNN
	1    4850 1250
	1    0    0    -1  
$EndComp
NoConn ~ 1450 1600
Wire Wire Line
	1650 1650 1750 1650
Wire Wire Line
	2550 1650 2650 1650
Wire Wire Line
	2550 1550 2750 1550
Wire Wire Line
	2550 1750 2750 1750
$Comp
L power:GND #PWR?
U 1 1 5F42FA59
P 1150 2150
F 0 "#PWR?" H 1150 1900 50  0001 C CNN
F 1 "GND" H 1155 1977 50  0000 C CNN
F 2 "" H 1150 2150 50  0001 C CNN
F 3 "" H 1150 2150 50  0001 C CNN
	1    1150 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F4300CF
P 2150 2050
F 0 "C?" V 1977 2051 50  0000 C CNN
F 1 "100nF" V 1887 2051 50  0000 C CNN
F 2 "" H 2188 1900 50  0001 C CNN
F 3 "~" H 2150 2050 50  0001 C CNN
	1    2150 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2650 2050 2300 2050
Wire Wire Line
	2000 2050 1650 2050
Text GLabel 2750 1550 2    50   Input ~ 0
USB_D+
Text GLabel 2750 1750 2    50   Input ~ 0
USB_D-
Wire Wire Line
	2650 1650 2750 1650
Connection ~ 2650 1650
Text GLabel 2750 1650 2    50   Input ~ 0
USB_VBUS
Wire Wire Line
	2650 1200 2650 1650
Wire Wire Line
	2650 1650 2650 2050
Wire Wire Line
	1650 1650 1650 2050
Connection ~ 1650 2050
Wire Wire Line
	1150 2150 1150 2050
Wire Wire Line
	1450 1200 2650 1200
Wire Wire Line
	1650 2050 1150 2050
Wire Wire Line
	1150 1800 1150 2050
Wire Wire Line
	1750 1750 1550 1750
Wire Wire Line
	1550 1750 1550 1500
Wire Wire Line
	1550 1500 1450 1500
Wire Wire Line
	1450 1400 1650 1400
Wire Wire Line
	1650 1400 1650 1550
Wire Wire Line
	1650 1550 1750 1550
Connection ~ 1150 2050
Wire Notes Line
	850  800  850  2450
Text Notes 850  750  0    50   ~ 0
USB Connection & ESD Protection
Wire Notes Line
	850  2450 3250 2450
Wire Notes Line
	3250 800  3250 2450
Wire Notes Line
	850  800  3250 800 
$EndSCHEMATC
