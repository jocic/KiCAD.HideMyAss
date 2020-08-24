EESchema Schematic File Version 4
LIBS:hardware-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "Hide My Ass"
Date "2020-08-24"
Rev "1.0.0"
Comp "Pijedestal"
Comment1 "RF jammer for all things known."
Comment2 "- - - - - - - - - - - - - - -"
Comment3 "office@djordjejocic.com"
Comment4 "Đorđe Jocić"
$EndDescr
$Comp
L Missing:USBLC6-2 U2
U 1 1 5F42C6D3
P 2250 2050
F 0 "U2" H 2250 2417 50  0000 C CNN
F 1 "USBLC6-2" H 2250 2326 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 1350 1450 50  0001 L BNN
F 3 "https://www.st.com/resource/en/datasheet/usblc6-2.pdf" H 2250 2550 50  0001 C CNN
	1    2250 2050
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Micro J1
U 1 1 5F42C876
P 1250 1800
F 0 "J1" H 1254 2280 50  0000 C CNN
F 1 "USB_B_Micro" H 1250 2182 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Molex_47346-0001" H 1400 1750 50  0001 C CNN
F 3 "~" H 1400 1750 50  0001 C CNN
	1    1250 1800
	1    0    0    -1  
$EndComp
NoConn ~ 1150 2200
$Comp
L MCU_Microchip_PIC18:PIC18F45K50_QFP U6
U 1 1 5F42CA4A
P 3350 8750
F 0 "U6" H 3950 10200 50  0000 C CNN
F 1 "PIC18F45K50_QFP" H 3950 10100 50  0000 C CNN
F 2 "Package_QFP:TQFP-44_10x10mm_P0.8mm" H 3350 8750 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/30000684B.pdf" H 3350 8450 50  0001 C CNN
	1    3350 8750
	1    0    0    -1  
$EndComp
NoConn ~ 1550 2000
Wire Wire Line
	1750 2050 1850 2050
Wire Wire Line
	2650 2050 2750 2050
Wire Wire Line
	2650 1950 2850 1950
Wire Wire Line
	2650 2150 2850 2150
$Comp
L power:GND #PWR01
U 1 1 5F42FA59
P 1250 2550
F 0 "#PWR01" H 1250 2300 50  0001 C CNN
F 1 "GND" H 1255 2377 50  0000 C CNN
F 2 "" H 1250 2550 50  0001 C CNN
F 3 "" H 1250 2550 50  0001 C CNN
	1    1250 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5F4300CF
P 2250 2450
F 0 "C2" V 2077 2451 50  0000 C CNN
F 1 "0.1μF" V 1987 2451 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2288 2300 50  0001 C CNN
F 3 "~" H 2250 2450 50  0001 C CNN
	1    2250 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2750 2450 2400 2450
Wire Wire Line
	2100 2450 1750 2450
Text GLabel 2850 1950 2    50   Input ~ 0
USB_D+
Text GLabel 2850 2150 2    50   Input ~ 0
USB_D-
Wire Wire Line
	2750 2050 2850 2050
Connection ~ 2750 2050
Text GLabel 2850 2050 2    50   Input ~ 0
USB_VBUS
Wire Wire Line
	2750 1600 2750 2050
Wire Wire Line
	2750 2050 2750 2450
Wire Wire Line
	1750 2050 1750 2450
Connection ~ 1750 2450
Wire Wire Line
	1250 2550 1250 2450
Wire Wire Line
	1550 1600 2750 1600
Wire Wire Line
	1750 2450 1250 2450
Wire Wire Line
	1250 2200 1250 2450
Wire Wire Line
	1850 2150 1650 2150
Wire Wire Line
	1650 2150 1650 1900
Wire Wire Line
	1650 1900 1550 1900
Wire Wire Line
	1550 1800 1750 1800
Wire Wire Line
	1750 1800 1750 1950
Wire Wire Line
	1750 1950 1850 1950
Wire Notes Line
	950  1200 950  2850
Text Notes 950  1150 0    50   ~ 0
USB Connection & ESD Protection
Wire Notes Line
	950  2850 3350 2850
Wire Notes Line
	3350 1200 3350 2850
Wire Notes Line
	950  1200 3350 1200
Text GLabel 1550 9750 0    50   Input ~ 0
USB_D+
Text GLabel 1550 9650 0    50   Input ~ 0
USB_D-
Wire Wire Line
	1550 9750 1650 9750
Wire Wire Line
	1650 9650 1550 9650
Text GLabel 1550 9550 0    50   Input ~ 0
USB_VBUS
Wire Wire Line
	1650 9550 1550 9550
$Comp
L Regulator_Linear:LM317_3PinPackage U3
U 1 1 5F43B134
P 2400 3900
F 0 "U3" H 2400 4142 50  0000 C CNN
F 1 "LM317A" H 2400 4051 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 2400 4150 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm317.pdf" H 2400 3900 50  0001 C CNN
	1    2400 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5F43DEFA
P 1600 4150
F 0 "C3" H 1715 4196 50  0000 L CNN
F 1 "0.1μF" H 1715 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1638 4000 50  0001 C CNN
F 3 "~" H 1600 4150 50  0001 C CNN
	1    1600 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5F43DF4C
P 3500 4650
F 0 "C7" H 3615 4696 50  0000 L CNN
F 1 "1μF" H 3615 4605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3538 4500 50  0001 C CNN
F 3 "~" H 3500 4650 50  0001 C CNN
	1    3500 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5F4417D2
P 2800 4150
F 0 "R4" H 2870 4196 50  0000 L CNN
F 1 "1k" H 2870 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2730 4150 50  0001 C CNN
F 3 "~" H 2800 4150 50  0001 C CNN
	1    2800 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5F444855
P 2400 4650
F 0 "R5" H 2470 4696 50  0000 L CNN
F 1 "1.5k" H 2470 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2330 4650 50  0001 C CNN
F 3 "~" H 2400 4650 50  0001 C CNN
	1    2400 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4800 2400 4900
Connection ~ 2400 4900
Wire Wire Line
	2800 3900 2800 4000
Wire Wire Line
	2800 4300 2800 4400
Wire Wire Line
	2400 4200 2400 4400
Wire Wire Line
	2700 3900 2800 3900
Wire Wire Line
	2400 4400 2800 4400
Connection ~ 2400 4400
Wire Wire Line
	2400 4400 2400 4500
Connection ~ 1250 2450
Wire Wire Line
	2400 4900 2400 5050
$Comp
L power:GND #PWR02
U 1 1 5F45E674
P 2400 5050
F 0 "#PWR02" H 2400 4800 50  0001 C CNN
F 1 "GND" H 2405 4877 50  0000 C CNN
F 2 "" H 2400 5050 50  0001 C CNN
F 3 "" H 2400 5050 50  0001 C CNN
	1    2400 5050
	1    0    0    -1  
$EndComp
Text GLabel 3600 3900 2    50   Input ~ 0
VDD
Wire Wire Line
	3150 4300 3150 4400
Wire Wire Line
	3150 3900 3150 4000
$Comp
L Device:D D1
U 1 1 5F44854E
P 3150 4150
F 0 "D1" V 3104 4229 50  0000 L CNN
F 1 "M7" V 3195 4229 50  0000 L CNN
F 2 "Diode_SMD:D_MiniMELF_Handsoldering" H 3150 4150 50  0001 C CNN
F 3 "~" H 3150 4150 50  0001 C CNN
	1    3150 4150
	0    1    1    0   
$EndComp
$Comp
L Device:CP C6
U 1 1 5F466DD0
P 1950 4650
F 0 "C6" H 2068 4696 50  0000 L CNN
F 1 "10μF" H 2068 4605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1988 4500 50  0001 C CNN
F 3 "~" H 1950 4650 50  0001 C CNN
	1    1950 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 4500 1950 4400
Wire Wire Line
	1950 4900 1950 4800
Wire Wire Line
	1950 4400 2400 4400
Wire Wire Line
	1950 4900 2400 4900
Wire Notes Line
	3900 5350 3900 3550
Text Notes 950  3500 0    50   ~ 0
3.3V Voltage Regulator \w Improved Ripple Rejection
Wire Notes Line
	950  3550 950  5350
Wire Wire Line
	3500 3900 3600 3900
Wire Wire Line
	2800 3900 3150 3900
Connection ~ 2800 3900
Wire Wire Line
	3500 3900 3150 3900
Connection ~ 3500 3900
Connection ~ 3150 3900
Wire Wire Line
	2800 4400 3150 4400
Connection ~ 2800 4400
Wire Wire Line
	2400 4900 3500 4900
Wire Wire Line
	1950 4900 1600 4900
Connection ~ 1950 4900
Wire Wire Line
	1600 4900 1600 4300
Wire Wire Line
	1600 3900 2100 3900
Wire Wire Line
	1600 3900 1500 3900
Connection ~ 1600 3900
Wire Wire Line
	1600 4000 1600 3900
Wire Wire Line
	3500 3900 3500 4500
Wire Wire Line
	3500 4800 3500 4900
Wire Notes Line
	3900 5350 950  5350
Wire Notes Line
	950  3550 3900 3550
$Comp
L Missing:DW01 U1
U 1 1 5F49761B
P 4500 1250
F 0 "U1" H 5000 1517 50  0000 C CNN
F 1 "DW01+G" H 5000 1426 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TSOT-23-6_HandSoldering" H 4200 600 50  0001 L BNN
F 3 "https://datasheet.lcsc.com/szlcsc/Fortune-Semicon-DW01-G_C14213.pdf" H 3700 500 50  0001 L BNN
	1    4500 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 5F4978A6
P 4150 2200
F 0 "BT1" H 4032 2296 50  0000 R CNN
F 1 "3.7V" H 4032 2205 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" V 4150 2260 50  0001 C CNN
F 3 "~" V 4150 2260 50  0001 C CNN
	1    4150 2200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4650 2300 4650 2400
$Comp
L Device:R R1
U 1 1 5F49CDDA
P 4400 1900
F 0 "R1" V 4193 1900 50  0000 C CNN
F 1 "100" V 4284 1900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4330 1900 50  0001 C CNN
F 3 "~" H 4400 1900 50  0001 C CNN
	1    4400 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 1900 4150 1900
Wire Wire Line
	4150 1900 4150 2000
Wire Wire Line
	4150 2400 4650 2400
$Comp
L Device:C C1
U 1 1 5F49F544
P 4650 2150
F 0 "C1" H 4765 2196 50  0000 L CNN
F 1 "0.1μF" H 4765 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4688 2000 50  0001 C CNN
F 3 "~" H 4650 2150 50  0001 C CNN
	1    4650 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2300 4150 2400
Wire Wire Line
	5500 1350 5600 1350
Wire Wire Line
	4150 1900 4050 1900
Connection ~ 4150 1900
Wire Wire Line
	4150 2400 4050 2400
Connection ~ 4150 2400
Text GLabel 4750 2600 2    50   Input ~ 0
BP_VSS
Text GLabel 4750 1900 2    50   Input ~ 0
BP_VDD
Text GLabel 5600 1250 2    50   Input ~ 0
BP_VSS
Text GLabel 5600 1350 2    50   Input ~ 0
BP_VDD
NoConn ~ 5500 1450
$Comp
L Missing:TP4056 U4
U 1 1 5F4F6DD3
P 6350 4450
F 0 "U4" H 6350 5017 50  0000 C CNN
F 1 "TP4056" H 6350 4926 50  0000 C CNN
F 2 "Package_SO:SSOP-8_2.95x2.8mm_P0.65mm" H 5700 3350 50  0001 L BNN
F 3 "https://datasheet.lcsc.com/szlcsc/1906261508_Nanjing-Extension-Microelectronics-TP4056-42-ESOP8_C16581.pdf" H 6400 3250 50  0001 C CNN
	1    6350 4450
	1    0    0    -1  
$EndComp
$Comp
L Missing:FS8205 Q1
U 1 1 5F508BA9
P 5600 2400
F 0 "Q1" H 5800 2200 50  0000 L CNN
F 1 "FS8205" H 5718 2102 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TSOT-23-6_HandSoldering" H 4700 1800 50  0001 L BNN
F 3 "https://datasheet.lcsc.com/szlcsc/Fortune-Semicon-FS8205_C32254.pdf" H 4300 1700 50  0001 L BNN
	1    5600 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1450 4400 1450
Wire Wire Line
	5800 2050 5800 2150
Wire Wire Line
	4500 1350 4400 1350
Wire Wire Line
	4500 1250 4400 1250
Wire Wire Line
	5400 2150 5400 2050
Text GLabel 4400 1250 0    50   Input ~ 0
BP_OD
Text GLabel 4400 1450 0    50   Input ~ 0
BP_OC
Text GLabel 4400 1350 0    50   Input ~ 0
BP_CS
Text GLabel 5400 2050 1    50   Input ~ 0
BP_OD
Text GLabel 5800 2050 1    50   Input ~ 0
BP_OC
Wire Wire Line
	6050 2400 6150 2400
Text GLabel 6150 1900 1    50   Input ~ 0
BP_CS
Wire Wire Line
	6150 2000 6150 1900
$Comp
L Device:R R2
U 1 1 5F54F52E
P 6150 2150
F 0 "R2" H 6220 2196 50  0000 L CNN
F 1 "1k" H 6220 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6080 2150 50  0001 C CNN
F 3 "~" H 6150 2150 50  0001 C CNN
	1    6150 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2400 6150 2300
NoConn ~ 5600 2150
NoConn ~ 5600 2600
Connection ~ 4650 2400
Text Notes 3700 800  0    50   ~ 0
Battery Protection
Text GLabel 5250 3550 0    50   Input ~ 0
USB_VBUS
Wire Wire Line
	5650 3550 5750 3550
$Comp
L Device:R R3
U 1 1 5F584EE8
P 5500 3550
F 0 "R3" V 5293 3550 50  0000 C CNN
F 1 "180" V 5384 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5430 3550 50  0001 C CNN
F 3 "~" H 5500 3550 50  0001 C CNN
	1    5500 3550
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener D3
U 1 1 5F587D40
P 7450 4200
F 0 "D3" V 7404 4279 50  0000 L CNN
F 1 "ZMM5V6" V 7495 4279 50  0000 L CNN
F 2 "Diode_SMD:D_MiniMELF_Handsoldering" H 7450 4200 50  0001 C CNN
F 3 "~" H 7450 4200 50  0001 C CNN
	1    7450 4200
	0    1    1    0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5F59CA98
P 5150 4150
F 0 "D2" H 5141 4366 50  0000 C CNN
F 1 "GHC-YR" H 5141 4275 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5150 4150 50  0001 C CNN
F 3 "~" H 5150 4150 50  0001 C CNN
	1    5150 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 5F59CE16
P 5550 4250
F 0 "D4" H 5550 4510 50  0000 C CNN
F 1 "BHC-ZL" H 5550 4418 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5550 4250 50  0001 C CNN
F 3 "~" H 5550 4250 50  0001 C CNN
	1    5550 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5F5C7FC3
P 5550 4650
F 0 "R6" V 5343 4650 50  0000 C CNN
F 1 "68" V 5434 4650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5480 4650 50  0001 C CNN
F 3 "~" H 5550 4650 50  0001 C CNN
	1    5550 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	5400 4250 5300 4250
Wire Wire Line
	5300 4250 5300 4650
Wire Wire Line
	5300 4650 5400 4650
Wire Wire Line
	5750 4250 5700 4250
$Comp
L power:GND #PWR03
U 1 1 5F5E2B2B
P 6350 5350
F 0 "#PWR03" H 6350 5100 50  0001 C CNN
F 1 "GND" H 6355 5177 50  0000 C CNN
F 2 "" H 6350 5350 50  0001 C CNN
F 3 "" H 6350 5350 50  0001 C CNN
	1    6350 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 5250 6350 5250
Connection ~ 6350 5250
Wire Wire Line
	6350 5350 6350 5250
$Comp
L Device:R R7
U 1 1 5F5EC4EE
P 5150 4750
F 0 "R7" V 4943 4750 50  0000 C CNN
F 1 "68" V 5034 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5080 4750 50  0001 C CNN
F 3 "~" H 5150 4750 50  0001 C CNN
	1    5150 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 4750 4900 4750
Wire Wire Line
	5750 4150 5300 4150
Connection ~ 5750 4150
Wire Wire Line
	5750 4150 5750 4250
Connection ~ 5750 4250
Wire Wire Line
	5750 4650 5700 4650
Wire Wire Line
	5300 4750 5750 4750
Wire Wire Line
	5000 4150 4900 4150
Wire Wire Line
	4900 4150 4900 4750
$Comp
L Device:C C4
U 1 1 5F6246D5
P 4500 4200
F 0 "C4" H 4615 4246 50  0000 L CNN
F 1 "10μF" H 4615 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4538 4050 50  0001 C CNN
F 3 "~" H 4500 4200 50  0001 C CNN
	1    4500 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 4750 7050 4750
$Comp
L Device:R R8
U 1 1 5F6347C4
P 7050 5000
F 0 "R8" H 7120 5046 50  0000 L CNN
F 1 "2k" H 7120 4955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6980 5000 50  0001 C CNN
F 3 "~" H 7050 5000 50  0001 C CNN
	1    7050 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 4750 7050 4850
Wire Wire Line
	7050 5150 7050 5250
Wire Wire Line
	6350 5050 6350 5250
Wire Wire Line
	7450 4650 7450 5250
Connection ~ 7050 5250
Wire Wire Line
	6950 4650 7050 4650
Connection ~ 7450 4650
Wire Wire Line
	7450 4350 7450 4650
Wire Wire Line
	7450 3750 7450 4050
Wire Wire Line
	5250 3550 5350 3550
Wire Wire Line
	4500 3750 5750 3750
Wire Wire Line
	5750 3750 5750 4150
Connection ~ 5750 3750
Wire Wire Line
	6350 5250 4500 5250
Wire Wire Line
	4500 3750 4500 4050
Wire Wire Line
	4500 4350 4500 5250
Wire Wire Line
	5750 3550 5750 3750
Wire Wire Line
	6950 4150 7050 4150
Wire Wire Line
	7050 4150 7050 4250
$Comp
L Device:C C5
U 1 1 5F698C22
P 7050 4400
F 0 "C5" H 7165 4446 50  0000 L CNN
F 1 "10μF" H 7165 4355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7088 4250 50  0001 C CNN
F 3 "~" H 7050 4400 50  0001 C CNN
	1    7050 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 4550 7050 4650
Wire Wire Line
	7050 4650 7450 4650
Connection ~ 7050 4650
Wire Wire Line
	7050 5250 7450 5250
Wire Wire Line
	5750 3750 7450 3750
Text GLabel 4050 1900 0    50   Input ~ 0
BAT+
Wire Wire Line
	4550 1900 4650 1900
Wire Wire Line
	4650 2000 4650 1900
Connection ~ 4650 1900
Wire Wire Line
	4650 1900 4750 1900
Text GLabel 4050 2400 0    50   Input ~ 0
BAT-
Wire Notes Line
	8000 5650 8000 3200
Wire Notes Line
	4250 3200 4250 5650
Text Notes 4250 3150 0    50   ~ 0
580mA Battery Management
Text GLabel 1500 3900 0    50   Input ~ 0
BP_VDD
Wire Wire Line
	4650 2400 5150 2400
Wire Wire Line
	4650 2400 4650 2600
Wire Wire Line
	4750 2600 4650 2600
Wire Wire Line
	7050 4150 7050 3900
Wire Wire Line
	7050 3900 7550 3900
Connection ~ 7050 4150
Text GLabel 7550 3900 2    50   Input ~ 0
BP_VDD
Wire Notes Line
	4250 3200 8000 3200
Wire Notes Line
	4250 5650 8000 5650
Wire Wire Line
	5500 1250 5600 1250
Wire Notes Line
	6400 850  6400 2850
Wire Notes Line
	3700 2850 3700 850 
Text GLabel 7550 5250 2    50   Input ~ 0
BP_VSS
Wire Wire Line
	7550 5250 7450 5250
Connection ~ 7450 5250
Wire Notes Line
	6400 2850 3700 2850
Wire Notes Line
	3700 850  6400 850 
$Comp
L Device:CP C8
U 1 1 5F7C52BC
P 1850 6750
F 0 "C8" H 1968 6796 50  0000 L CNN
F 1 "10μF" H 1968 6705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1888 6600 50  0001 C CNN
F 3 "~" H 1850 6750 50  0001 C CNN
	1    1850 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5F7C5330
P 2350 6750
F 0 "C9" H 2465 6796 50  0000 L CNN
F 1 "0.1μF" H 2465 6705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2388 6600 50  0001 C CNN
F 3 "~" H 2350 6750 50  0001 C CNN
	1    2350 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 6600 1850 6500
Wire Wire Line
	1850 6500 2350 6500
Wire Wire Line
	2350 6500 2350 6600
Wire Wire Line
	2350 6900 2350 7000
Wire Wire Line
	2350 7000 1850 7000
Wire Wire Line
	1850 7000 1850 6900
$Comp
L Device:C C10
U 1 1 5F7CEB17
P 2850 6750
F 0 "C10" H 2965 6796 50  0000 L CNN
F 1 "0.1μF" H 2965 6705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2888 6600 50  0001 C CNN
F 3 "~" H 2850 6750 50  0001 C CNN
	1    2850 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 6500 2850 6600
Wire Wire Line
	2850 6900 2850 7000
Connection ~ 2350 6500
Wire Wire Line
	2850 7000 2350 7000
Connection ~ 2350 7000
Wire Wire Line
	1850 6500 1850 6350
Connection ~ 1850 6500
Wire Wire Line
	1850 7000 1850 7100
Connection ~ 1850 7000
$Comp
L power:GND #PWR04
U 1 1 5F8000A9
P 1850 7100
F 0 "#PWR04" H 1850 6850 50  0001 C CNN
F 1 "GND" H 1855 6927 50  0000 C CNN
F 2 "" H 1850 7100 50  0001 C CNN
F 3 "" H 1850 7100 50  0001 C CNN
	1    1850 7100
	1    0    0    -1  
$EndComp
Text GLabel 1850 6350 1    50   Input ~ 0
VDD
$Comp
L Device:CP C13
U 1 1 5F8CE4BE
P 4950 6750
F 0 "C13" H 5068 6796 50  0000 L CNN
F 1 "10μF" H 5068 6705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4988 6600 50  0001 C CNN
F 3 "~" H 4950 6750 50  0001 C CNN
	1    4950 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5F8CE4C4
P 4450 6750
F 0 "C12" H 4565 6796 50  0000 L CNN
F 1 "0.1μF" H 4565 6705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4488 6600 50  0001 C CNN
F 3 "~" H 4450 6750 50  0001 C CNN
	1    4450 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 6600 3950 6500
Wire Wire Line
	3950 6500 4450 6500
Wire Wire Line
	4450 6500 4450 6600
Wire Wire Line
	4450 6900 4450 7000
Wire Wire Line
	4450 7000 3950 7000
Wire Wire Line
	3950 7000 3950 6900
$Comp
L Device:C C11
U 1 1 5F8CE4D0
P 3950 6750
F 0 "C11" H 4065 6796 50  0000 L CNN
F 1 "0.1μF" H 4065 6705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3988 6600 50  0001 C CNN
F 3 "~" H 3950 6750 50  0001 C CNN
	1    3950 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 6500 4950 6600
Wire Wire Line
	4950 6900 4950 7000
Wire Wire Line
	4450 6500 4950 6500
Connection ~ 4450 6500
Wire Wire Line
	4950 7000 4450 7000
Connection ~ 4450 7000
Wire Wire Line
	4950 6500 4950 6350
Wire Wire Line
	4950 7000 4950 7100
$Comp
L power:GND #PWR05
U 1 1 5F8CE4E0
P 4950 7100
F 0 "#PWR05" H 4950 6850 50  0001 C CNN
F 1 "GND" H 4955 6927 50  0000 C CNN
F 2 "" H 4950 7100 50  0001 C CNN
F 3 "" H 4950 7100 50  0001 C CNN
	1    4950 7100
	1    0    0    -1  
$EndComp
Text GLabel 4950 6350 1    50   Input ~ 0
VDD
Connection ~ 4950 6500
Connection ~ 4950 7000
Wire Wire Line
	3450 10250 3450 10350
Wire Wire Line
	3450 10350 3350 10350
Wire Wire Line
	3350 10350 3350 10250
$Comp
L power:GND #PWR08
U 1 1 5F916BEA
P 3350 10450
F 0 "#PWR08" H 3350 10200 50  0001 C CNN
F 1 "GND" H 3355 10277 50  0000 C CNN
F 2 "" H 3350 10450 50  0001 C CNN
F 3 "" H 3350 10450 50  0001 C CNN
	1    3350 10450
	1    0    0    -1  
$EndComp
Connection ~ 3350 10350
Wire Wire Line
	3350 10450 3350 10350
$Comp
L Device:R R10
U 1 1 5F92ABB2
P 5600 7650
F 0 "R10" V 5393 7650 50  0000 C CNN
F 1 "470" V 5484 7650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5530 7650 50  0001 C CNN
F 3 "~" H 5600 7650 50  0001 C CNN
	1    5600 7650
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 7650 5850 7650
Wire Wire Line
	5850 7650 5850 7750
Wire Wire Line
	5850 7650 5850 7550
Connection ~ 5850 7650
Wire Wire Line
	3450 6500 3450 7350
$Comp
L Device:R R9
U 1 1 5F94DE40
P 5850 7400
F 0 "R9" H 5920 7446 50  0000 L CNN
F 1 "10k" H 5920 7355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5780 7400 50  0001 C CNN
F 3 "~" H 5850 7400 50  0001 C CNN
	1    5850 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 5F94E036
P 5850 8200
F 0 "C14" H 5965 8246 50  0000 L CNN
F 1 "0.1μF" H 5965 8155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5888 8050 50  0001 C CNN
F 3 "~" H 5850 8200 50  0001 C CNN
	1    5850 8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 8350 5850 8450
$Comp
L power:GND #PWR06
U 1 1 5F95312C
P 5850 8450
F 0 "#PWR06" H 5850 8200 50  0001 C CNN
F 1 "GND" H 5855 8277 50  0000 C CNN
F 2 "" H 5850 8450 50  0001 C CNN
F 3 "" H 5850 8450 50  0001 C CNN
	1    5850 8450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 7250 5850 7150
Text GLabel 5850 7150 1    50   Input ~ 0
VDD
Wire Wire Line
	3350 6500 3350 7350
Wire Wire Line
	2350 6500 2850 6500
Wire Wire Line
	5850 8050 5850 7950
$Comp
L Device:Jumper_NC_Small JP1
U 1 1 5F991ECA
P 5850 7850
F 0 "JP1" V 5804 7925 50  0000 L CNN
F 1 "Jumper" V 5895 7925 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5850 7850 50  0001 C CNN
F 3 "~" H 5850 7850 50  0001 C CNN
	1    5850 7850
	0    1    1    0   
$EndComp
Connection ~ 5250 7650
Text GLabel 5250 7500 1    50   Input ~ 0
IC_MCLR
Wire Wire Line
	5050 7650 5250 7650
Wire Wire Line
	5250 7650 5450 7650
Wire Wire Line
	5250 7500 5250 7650
Wire Wire Line
	5050 7850 5150 7850
Wire Wire Line
	5050 7950 5150 7950
Wire Wire Line
	5050 8150 5150 8150
Wire Wire Line
	5050 8250 5150 8250
Wire Wire Line
	5050 8350 5150 8350
Wire Wire Line
	5050 8450 5150 8450
Wire Wire Line
	5050 8550 5150 8550
Wire Wire Line
	5050 8650 5150 8650
Wire Wire Line
	5050 8850 5150 8850
Wire Wire Line
	5050 8950 5150 8950
Wire Wire Line
	5050 9050 5150 9050
Wire Wire Line
	5050 9150 5150 9150
Wire Wire Line
	5050 9250 5150 9250
Wire Wire Line
	5050 9350 5150 9350
Wire Wire Line
	5050 9450 5150 9450
Wire Wire Line
	5050 9550 5150 9550
Wire Wire Line
	5050 9750 5150 9750
Wire Wire Line
	5050 9850 5150 9850
Wire Wire Line
	5050 9950 5150 9950
Wire Wire Line
	1550 8050 1650 8050
Wire Wire Line
	1550 8150 1650 8150
Wire Wire Line
	1550 8250 1650 8250
Wire Wire Line
	1550 8350 1650 8350
Wire Wire Line
	1550 8450 1650 8450
Wire Wire Line
	1550 8550 1650 8550
Wire Wire Line
	1550 8650 1650 8650
Wire Wire Line
	1550 8750 1650 8750
Wire Wire Line
	1550 7650 1650 7650
Wire Wire Line
	1550 7750 1650 7750
Wire Wire Line
	1550 7850 1650 7850
Wire Wire Line
	1550 8950 1650 8950
Wire Wire Line
	1550 9050 1650 9050
Wire Wire Line
	1550 9150 1650 9150
Wire Wire Line
	1550 9250 1650 9250
Wire Wire Line
	1550 9350 1650 9350
Wire Wire Line
	3950 6500 3450 6500
Connection ~ 3950 6500
Connection ~ 2850 6500
Wire Wire Line
	3350 6500 2850 6500
$Comp
L Connector_Generic:Conn_02x20_Counter_Clockwise J2
U 1 1 5FA70074
P 14250 2500
F 0 "J2" H 14300 3617 50  0000 C CNN
F 1 "Breakout" H 14300 3526 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 14250 2500 50  0001 C CNN
F 3 "~" H 14250 2500 50  0001 C CNN
	1    14250 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	14050 1600 13950 1600
Wire Wire Line
	13950 1700 14050 1700
Wire Wire Line
	13950 1800 14050 1800
Wire Wire Line
	13950 1900 14050 1900
Wire Wire Line
	13950 2000 14050 2000
Wire Wire Line
	13950 2100 14050 2100
Wire Wire Line
	13950 2200 14050 2200
Wire Wire Line
	13950 2300 14050 2300
Wire Wire Line
	13950 2400 14050 2400
Wire Wire Line
	14050 2500 13950 2500
Wire Wire Line
	13950 2600 14050 2600
Wire Wire Line
	13950 2700 14050 2700
Wire Wire Line
	13950 2800 14050 2800
Wire Wire Line
	13950 2900 14050 2900
Wire Wire Line
	13950 3000 14050 3000
Wire Wire Line
	13950 3100 14050 3100
Wire Wire Line
	13950 3200 14050 3200
Wire Wire Line
	13950 3300 14050 3300
Wire Wire Line
	14650 1600 14550 1600
Wire Wire Line
	14550 1700 14650 1700
Wire Wire Line
	14550 1800 14650 1800
Wire Wire Line
	14550 1900 14650 1900
Wire Wire Line
	14550 2000 14650 2000
Wire Wire Line
	14550 2100 14650 2100
Wire Wire Line
	14550 2200 14650 2200
Wire Wire Line
	14550 2300 14650 2300
Wire Wire Line
	14550 2400 14650 2400
Wire Wire Line
	14650 2500 14550 2500
Wire Wire Line
	14550 2600 14650 2600
Wire Wire Line
	14550 2700 14650 2700
Wire Wire Line
	14550 2800 14650 2800
Wire Wire Line
	14550 2900 14650 2900
Wire Wire Line
	14550 3000 14650 3000
Wire Wire Line
	14550 3100 14650 3100
Wire Wire Line
	14550 3200 14650 3200
Wire Wire Line
	14550 3300 14650 3300
Wire Wire Line
	14550 3400 14650 3400
Wire Wire Line
	14650 3500 14550 3500
Wire Wire Line
	14050 3400 13950 3400
Wire Wire Line
	14050 3500 13950 3500
Text GLabel 13950 1600 0    50   Input ~ 0
VDD
Wire Wire Line
	5950 9450 5950 9300
Text GLabel 5950 9300 1    50   Input ~ 0
VSS
$Comp
L power:GND #PWR07
U 1 1 5FAEFABB
P 5950 9450
F 0 "#PWR07" H 5950 9200 50  0001 C CNN
F 1 "GND" H 5955 9277 50  0000 C CNN
F 2 "" H 5950 9450 50  0001 C CNN
F 3 "" H 5950 9450 50  0001 C CNN
	1    5950 9450
	1    0    0    -1  
$EndComp
Text GLabel 13950 1700 0    50   Input ~ 0
VSS
Text GLabel 1550 7650 0    50   Input ~ 0
IC_RE0
Text GLabel 13950 1800 0    50   Input ~ 0
IC_RE0
Text GLabel 1550 7750 0    50   Input ~ 0
IC_RE1
Text GLabel 13950 1900 0    50   Input ~ 0
IC_RE1
Text GLabel 1550 7850 0    50   Input ~ 0
IC_RE2
Text GLabel 13950 2000 0    50   Input ~ 0
IC_RE2
Text GLabel 1550 8050 0    50   Input ~ 0
IC_RD0
Text GLabel 13950 2100 0    50   Input ~ 0
IC_RD0
Text GLabel 1550 8150 0    50   Input ~ 0
IC_RD1
Text GLabel 13950 2200 0    50   Input ~ 0
IC_RD1
Text GLabel 1550 8250 0    50   Input ~ 0
IC_RD2
Text GLabel 13950 2300 0    50   Input ~ 0
IC_RD2
Text GLabel 1550 8350 0    50   Input ~ 0
IC_RD3
Text GLabel 13950 2400 0    50   Input ~ 0
IC_RD3
Text GLabel 1550 8450 0    50   Input ~ 0
IC_RD4
Text GLabel 13950 2500 0    50   Input ~ 0
IC_RD4
Text GLabel 1550 8550 0    50   Input ~ 0
IC_RD5
Text GLabel 1550 8650 0    50   Input ~ 0
IC_RD6
Text GLabel 1550 8750 0    50   Input ~ 0
IC_RD7
Text GLabel 13950 2600 0    50   Input ~ 0
IC_RD5
Text GLabel 13950 2700 0    50   Input ~ 0
IC_RD6
Text GLabel 13950 2800 0    50   Input ~ 0
IC_RD7
Text GLabel 1550 8950 0    50   Input ~ 0
IC_RC0
Text GLabel 13950 2900 0    50   Input ~ 0
IC_RC0
Text GLabel 1550 9050 0    50   Input ~ 0
IC_RC1
Text GLabel 13950 3000 0    50   Input ~ 0
IC_RC1
Text GLabel 1550 9150 0    50   Input ~ 0
IC_RC2
Text GLabel 13950 3100 0    50   Input ~ 0
IC_RC2
Text GLabel 1550 9250 0    50   Input ~ 0
IC_RC6
Text GLabel 13950 3200 0    50   Input ~ 0
IC_RC6
Text GLabel 1550 9350 0    50   Input ~ 0
IC_RC7
Text GLabel 13950 3300 0    50   Input ~ 0
IC_RC7
Text GLabel 5150 7850 2    50   Input ~ 0
IC_OSC2
Text GLabel 13950 3500 0    50   Input ~ 0
IC_OSC2
Text GLabel 5150 7950 2    50   Input ~ 0
IC_OSC1
Text GLabel 13950 3400 0    50   Input ~ 0
IC_OSC1
Text GLabel 5150 8150 2    50   Input ~ 0
IC_RA0
Text GLabel 5150 8250 2    50   Input ~ 0
IC_RA1
Text GLabel 5150 8350 2    50   Input ~ 0
IC_RA2
Text GLabel 5150 8450 2    50   Input ~ 0
IC_RA3
Text GLabel 5150 8550 2    50   Input ~ 0
IC_RA4
Text GLabel 5150 8650 2    50   Input ~ 0
IC_RA5
Text GLabel 14650 1600 2    50   Input ~ 0
IC_RA0
Text GLabel 14650 1700 2    50   Input ~ 0
IC_RA1
Text GLabel 14650 1800 2    50   Input ~ 0
IC_RA2
Text GLabel 14650 1900 2    50   Input ~ 0
IC_RA3
Text GLabel 14650 2000 2    50   Input ~ 0
IC_RA4
Text GLabel 14650 2100 2    50   Input ~ 0
IC_RA5
Text GLabel 5150 8850 2    50   Input ~ 0
IC_RB0
Text GLabel 5150 8950 2    50   Input ~ 0
IC_RB1
Text GLabel 5150 9050 2    50   Input ~ 0
IC_RB2
Text GLabel 5150 9150 2    50   Input ~ 0
IC_RB3
Text GLabel 5150 9250 2    50   Input ~ 0
IC_RB4
Text GLabel 5150 9350 2    50   Input ~ 0
IC_RB5
Text GLabel 5150 9450 2    50   Input ~ 0
IC_RB6
Text GLabel 5150 9550 2    50   Input ~ 0
IC_RB7
Text GLabel 14650 2200 2    50   Input ~ 0
IC_RB0
Text GLabel 14650 2300 2    50   Input ~ 0
IC_RB1
Text GLabel 14650 2400 2    50   Input ~ 0
IC_RB2
Text GLabel 14650 2500 2    50   Input ~ 0
IC_RB3
Text GLabel 14650 2600 2    50   Input ~ 0
IC_RB4
Text GLabel 14650 2700 2    50   Input ~ 0
IC_RB5
Text GLabel 14650 2800 2    50   Input ~ 0
IC_RB6
Text GLabel 14650 2900 2    50   Input ~ 0
IC_RB7
Text GLabel 5150 9750 2    50   Input ~ 0
IC_ICPGC
Text GLabel 14650 3000 2    50   Input ~ 0
IC_ICPGC
Text GLabel 5150 9850 2    50   Input ~ 0
IC_ICPGD
Text GLabel 14650 3100 2    50   Input ~ 0
IC_ICPGD
Text GLabel 5150 9950 2    50   Input ~ 0
IC_ICVPP
Text GLabel 14650 3200 2    50   Input ~ 0
IC_ICVPP
Text GLabel 14650 3400 2    50   Input ~ 0
USB_D-
Text GLabel 14650 3500 2    50   Input ~ 0
USB_D+
Wire Notes Line
	6350 10800 6350 6000
Wire Notes Line
	6350 6000 950  6000
Wire Notes Line
	950  6000 950  10800
Wire Notes Line
	950  10800 6350 10800
Text Notes 950  5950 0    50   ~ 0
Microcontroller
Wire Notes Line
	15250 1250 13400 1250
Wire Notes Line
	15250 1250 15250 3700
Wire Notes Line
	13400 3700 15250 3700
Wire Notes Line
	13400 1250 13400 3700
Text Notes 13400 1200 0    50   ~ 0
Breakout Pins
$Comp
L Missing:MAX2871ETJ+ U5
U 1 1 5FC27F78
P 12650 6400
F 0 "U5" H 12650 8170 50  0000 C CNN
F 1 "MAX2871ETJ+" H 12650 8079 50  0000 C CNN
F 2 "QFN50P500X500X80-33N" H 12650 6400 50  0001 L BNN
F 3 "QFN-32 Maxim" H 12650 6400 50  0001 L BNN
F 4 "Maxim Integrated" H 12650 6400 50  0001 L BNN "Field4"
F 5 "Unavailable" H 12650 6400 50  0001 L BNN "Field5"
F 6 "MAX2871ETJ+" H 12650 6400 50  0001 L BNN "Field6"
F 7 "PLL Frequency Synthesizer Single 23.5MHz to 6000MHz 32-Pin TQFN EP" H 11500 4050 50  0001 L BNN "Field7"
F 8 "None" H 12650 6400 50  0001 L BNN "Field8"
	1    12650 6400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J3
U 1 1 5FC83A62
P 14750 6050
F 0 "J3" H 14849 6026 50  0000 L CNN
F 1 "Conn_Coaxial" H 14849 5935 50  0000 L CNN
F 2 "" H 14750 6050 50  0001 C CNN
F 3 " ~" H 14750 6050 50  0001 C CNN
	1    14750 6050
	1    0    0    -1  
$EndComp
Text GLabel 14650 3300 2    50   Input ~ 0
IC_MCLR
$EndSCHEMATC
