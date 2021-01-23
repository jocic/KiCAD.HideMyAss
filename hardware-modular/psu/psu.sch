EESchema Schematic File Version 4
EELAYER 30 0
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
Connection ~ 2200 6300
Connection ~ 2200 5400
Connection ~ 2700 6300
Wire Wire Line
	2200 6300 2700 6300
Connection ~ 2700 5400
Wire Wire Line
	2200 5400 2700 5400
Connection ~ 4200 6300
Connection ~ 4200 5400
Connection ~ 3700 5400
Connection ~ 3700 6300
Connection ~ 3200 6300
Connection ~ 3200 5400
Wire Wire Line
	6050 5800 6050 5900
Wire Wire Line
	6050 6200 6050 6300
Wire Wire Line
	6050 5400 6050 5500
Wire Wire Line
	5600 5400 6050 5400
Connection ~ 5600 6300
Wire Wire Line
	6050 6300 5600 6300
$Comp
L Device:R R11
U 1 1 600ED1D8
P 6050 6050
F 0 "R11" H 6120 6096 50  0000 L CNN
F 1 "100" H 6120 6005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5980 6050 50  0001 C CNN
F 3 "~" H 6050 6050 50  0001 C CNN
	1    6050 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D10
U 1 1 600ECCEC
P 6050 5650
F 0 "D10" V 6089 5532 50  0000 R CNN
F 1 "RED" V 5998 5532 50  0000 R CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 6050 5650 50  0001 C CNN
F 3 "~" H 6050 5650 50  0001 C CNN
	1    6050 5650
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C4
U 1 1 6007B470
P 4200 5850
F 0 "C4" H 4318 5896 50  0000 L CNN
F 1 "470µF" H 4318 5805 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 4238 5700 50  0001 C CNN
F 3 "~" H 4200 5850 50  0001 C CNN
	1    4200 5850
	1    0    0    -1  
$EndComp
Connection ~ 5150 6300
Wire Wire Line
	5600 6300 5150 6300
Connection ~ 5600 5400
Wire Wire Line
	5600 5400 5600 5700
$Comp
L Device:C C6
U 1 1 600E3855
P 5600 5850
F 0 "C6" H 5715 5896 50  0000 L CNN
F 1 "0.1µF" H 5715 5805 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5638 5700 50  0001 C CNN
F 3 "~" H 5600 5850 50  0001 C CNN
	1    5600 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 6300 5600 6000
Connection ~ 4700 6300
Wire Wire Line
	5150 6300 4700 6300
Wire Wire Line
	5150 5700 5150 6300
Wire Wire Line
	4850 5400 4700 5400
Wire Wire Line
	5600 5400 5450 5400
Connection ~ 4700 5400
Wire Wire Line
	4700 5400 4700 5700
Wire Wire Line
	4200 5400 4700 5400
Wire Wire Line
	3700 5400 4200 5400
$Comp
L Regulator_Linear:L7805 U1
U 1 1 6006EAAE
P 5150 5400
F 0 "U1" H 5150 5642 50  0000 C CNN
F 1 "L7805" H 5150 5551 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5175 5250 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 5150 5350 50  0001 C CNN
	1    5150 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 6006FC97
P 4700 5850
F 0 "C5" H 4815 5896 50  0000 L CNN
F 1 "0.33µF" H 4815 5805 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4738 5700 50  0001 C CNN
F 3 "~" H 4700 5850 50  0001 C CNN
	1    4700 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 6300 4700 6000
Wire Wire Line
	4700 6300 4200 6300
Wire Wire Line
	3700 5700 3700 5400
Wire Wire Line
	3200 5400 3700 5400
Wire Wire Line
	3200 5700 3200 5400
Wire Wire Line
	2700 5400 3200 5400
Wire Wire Line
	2700 5700 2700 5400
Wire Wire Line
	4200 5400 4200 5700
Wire Wire Line
	4200 6300 4200 6000
Wire Wire Line
	4200 6300 3700 6300
Wire Wire Line
	3700 6300 3700 6000
Wire Wire Line
	3700 6300 3200 6300
Wire Wire Line
	3200 6300 3200 6000
Wire Wire Line
	3200 6300 2700 6300
Wire Wire Line
	2700 6300 2700 6000
$Comp
L power:GND #PWR04
U 1 1 600B57EC
P 1500 6300
F 0 "#PWR04" H 1500 6050 50  0001 C CNN
F 1 "GND" H 1505 6127 50  0000 C CNN
F 2 "" H 1500 6300 50  0001 C CNN
F 3 "" H 1500 6300 50  0001 C CNN
	1    1500 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 6150 1500 6300
Wire Wire Line
	1500 6050 1500 5900
Wire Wire Line
	1050 5400 1050 5250
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 6006F35F
P 1150 6050
F 0 "J5" H 1068 6267 50  0000 C CNN
F 1 "DC_IN" H 1068 6176 50  0000 C CNN
F 2 "TerminalBlock_4Ucon:TerminalBlock_4Ucon_1x02_P3.50mm_Horizontal" H 1150 6050 50  0001 C CNN
F 3 "~" H 1150 6050 50  0001 C CNN
	1    1150 6050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1350 6150 1500 6150
Wire Wire Line
	1350 6050 1500 6050
$Comp
L Device:Fuse F1
U 1 1 60072A81
P 1350 5400
F 0 "F1" V 1153 5400 50  0000 C CNN
F 1 "2A" V 1244 5400 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Stelvio-Kontek_PTF78_Horizontal_Open" V 1280 5400 50  0001 C CNN
F 3 "~" H 1350 5400 50  0001 C CNN
	1    1350 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	1200 5400 1050 5400
Wire Wire Line
	1500 5400 1650 5400
Wire Wire Line
	2200 6000 2200 6300
Wire Wire Line
	2200 5400 2200 5700
$Comp
L Device:D_Zener D11
U 1 1 60078BB2
P 2200 5850
F 0 "D11" V 2154 5930 50  0000 L CNN
F 1 "18V" V 2245 5930 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2200 5850 50  0001 C CNN
F 3 "~" H 2200 5850 50  0001 C CNN
	1    2200 5850
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 6300 1850 6300
Wire Wire Line
	2050 5400 2200 5400
Wire Wire Line
	1850 6300 1850 6150
Wire Wire Line
	1850 5700 1850 5850
Wire Wire Line
	4700 4950 4700 5400
Wire Wire Line
	5000 4950 4700 4950
Wire Wire Line
	5600 4950 5600 5400
Wire Wire Line
	5300 4950 5600 4950
$Comp
L Device:CP C2
U 1 1 6007BE84
P 3200 5850
F 0 "C2" H 3318 5896 50  0000 L CNN
F 1 "1mF" H 3318 5805 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 3238 5700 50  0001 C CNN
F 3 "~" H 3200 5850 50  0001 C CNN
	1    3200 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 6007B1DF
P 3700 5850
F 0 "C3" H 3818 5896 50  0000 L CNN
F 1 "470µF" H 3818 5805 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 3738 5700 50  0001 C CNN
F 3 "~" H 3700 5850 50  0001 C CNN
	1    3700 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 6007AAD1
P 2700 5850
F 0 "C1" H 2818 5896 50  0000 L CNN
F 1 "1mF" H 2818 5805 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 2738 5700 50  0001 C CNN
F 3 "~" H 2700 5850 50  0001 C CNN
	1    2700 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 600796D8
P 1850 6000
F 0 "R10" H 1920 6046 50  0000 L CNN
F 1 "100k" H 1920 5955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1780 6000 50  0001 C CNN
F 3 "~" H 1850 6000 50  0001 C CNN
	1    1850 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_PMOS_GDS Q5
U 1 1 6007792C
P 1850 5500
F 0 "Q5" V 2192 5500 50  0000 C CNN
F 1 "IRF9510" V 2101 5500 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2050 5600 50  0001 C CNN
F 3 "~" H 1850 5500 50  0001 C CNN
	1    1850 5500
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4007 D9
U 1 1 60071720
P 5150 4950
F 0 "D9" H 5150 5167 50  0000 C CNN
F 1 "1N4007" H 5150 5076 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5150 4775 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 5150 4950 50  0001 C CNN
	1    5150 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 5400 6200 5400
Connection ~ 6050 5400
Wire Wire Line
	5150 6300 5150 6450
$Comp
L power:GND #PWR05
U 1 1 6037C932
P 5150 6450
F 0 "#PWR05" H 5150 6200 50  0001 C CNN
F 1 "GND" H 5155 6277 50  0000 C CNN
F 2 "" H 5150 6450 50  0001 C CNN
F 3 "" H 5150 6450 50  0001 C CNN
	1    5150 6450
	1    0    0    -1  
$EndComp
Text GLabel 6200 5400 2    50   Input ~ 0
OUT
Text Notes 950  4750 0    50   ~ 0
Regulator
Text Notes 3700 1200 0    50   ~ 0
Splitter
Wire Notes Line
	9750 4200 9750 1050
Wire Notes Line
	9750 1050 3650 1050
Wire Notes Line
	3650 1050 3650 4200
Wire Notes Line
	3650 4200 9750 4200
Wire Notes Line
	6550 6800 6550 4600
Wire Notes Line
	6550 4600 850  4600
Wire Notes Line
	850  4600 850  6800
Wire Notes Line
	850  6800 6550 6800
$Comp
L power:+7.5V #PWR02
U 1 1 600C9490
P 1050 5250
F 0 "#PWR02" H 1050 5100 50  0001 C CNN
F 1 "+7.5V" H 1065 5423 50  0000 C CNN
F 2 "" H 1050 5250 50  0001 C CNN
F 3 "" H 1050 5250 50  0001 C CNN
	1    1050 5250
	1    0    0    -1  
$EndComp
$Comp
L power:+7.5V #PWR03
U 1 1 600C9EEF
P 1500 5900
F 0 "#PWR03" H 1500 5750 50  0001 C CNN
F 1 "+7.5V" H 1515 6073 50  0000 C CNN
F 2 "" H 1500 5900 50  0001 C CNN
F 3 "" H 1500 5900 50  0001 C CNN
	1    1500 5900
	1    0    0    -1  
$EndComp
Connection ~ 4350 2050
Wire Wire Line
	4250 2050 4350 2050
Wire Wire Line
	3950 2050 4050 2050
Wire Wire Line
	3950 2200 3950 2050
Wire Wire Line
	3950 2650 3950 2500
Wire Wire Line
	4350 2650 3950 2650
$Comp
L Device:Jumper_NO_Small JP5
U 1 1 60093A03
P 4150 2050
F 0 "JP5" H 4150 2235 50  0000 C CNN
F 1 "GATE" H 4150 2144 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4150 2050 50  0001 C CNN
F 3 "~" H 4150 2050 50  0001 C CNN
	1    4150 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 60093359
P 3950 2350
F 0 "R1" H 3881 2396 50  0000 R CNN
F 1 "100" H 3881 2305 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3880 2350 50  0001 C CNN
F 3 "~" H 3950 2350 50  0001 C CNN
	1    3950 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 6017E82E
P 4350 2350
F 0 "R2" H 4281 2396 50  0000 R CNN
F 1 "100" H 4281 2305 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4280 2350 50  0001 C CNN
F 3 "~" H 4350 2350 50  0001 C CNN
	1    4350 2350
	1    0    0    -1  
$EndComp
Text GLabel 6700 1400 1    50   Input ~ 0
OUT
Wire Wire Line
	6700 1550 6000 1550
Connection ~ 6700 1550
Wire Wire Line
	6700 1550 6700 1400
$Comp
L power:GND #PWR01
U 1 1 602DD61B
P 6700 3850
F 0 "#PWR01" H 6700 3600 50  0001 C CNN
F 1 "GND" H 6705 3677 50  0000 C CNN
F 2 "" H 6700 3850 50  0001 C CNN
F 3 "" H 6700 3850 50  0001 C CNN
	1    6700 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3700 6000 3700
Connection ~ 6700 3700
Wire Wire Line
	6700 3700 6700 3850
Wire Wire Line
	7400 3550 7600 3550
Connection ~ 7400 3550
Wire Wire Line
	7400 3700 6700 3700
Connection ~ 7400 3700
Wire Wire Line
	7400 3700 7400 3550
Wire Wire Line
	6000 3550 6200 3550
Connection ~ 6000 3550
Wire Wire Line
	6000 3700 4600 3700
Connection ~ 6000 3700
Wire Wire Line
	6000 3700 6000 3550
Wire Wire Line
	4600 3550 4800 3550
Connection ~ 4600 3550
Wire Wire Line
	4600 3700 4600 3550
Wire Wire Line
	8800 3700 7400 3700
Wire Wire Line
	8800 3550 9000 3550
Connection ~ 8800 3550
Wire Wire Line
	8800 3550 8800 3700
Wire Wire Line
	7400 1550 6700 1550
Connection ~ 7400 1550
Wire Wire Line
	7400 1700 7400 1550
Wire Wire Line
	6000 1550 4600 1550
Connection ~ 6000 1550
Wire Wire Line
	6000 1700 6000 1550
Wire Wire Line
	4600 1550 4600 1700
Wire Wire Line
	8800 1550 7400 1550
Wire Wire Line
	8800 1700 8800 1550
Wire Wire Line
	8800 2050 9000 2050
Connection ~ 8800 2050
Wire Wire Line
	8800 2050 8800 1900
Wire Wire Line
	7400 2050 7600 2050
Connection ~ 7400 2050
Wire Wire Line
	7400 2050 7400 1900
Wire Wire Line
	6000 2050 6200 2050
Connection ~ 6000 2050
Wire Wire Line
	6000 2050 6000 1900
Wire Wire Line
	4600 2050 4800 2050
Connection ~ 4600 2050
Wire Wire Line
	4600 2050 4600 1900
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 60070C53
P 6400 2200
F 0 "J2" H 6480 2192 50  0000 L CNN
F 1 "DC_OUT_2" H 6480 2101 50  0000 L CNN
F 2 "TerminalBlock_4Ucon:TerminalBlock_4Ucon_1x02_P3.50mm_Horizontal" H 6400 2200 50  0001 C CNN
F 3 "~" H 6400 2200 50  0001 C CNN
	1    6400 2200
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BD137 Q2
U 1 1 601AC3E4
P 6100 2650
F 0 "Q2" H 6292 2696 50  0000 L CNN
F 1 "BD137" H 6292 2605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-126-3_Vertical" H 6300 2575 50  0001 L CIN
F 3 "http://www.st.com/internet/com/TECHNICAL_RESOURCES/TECHNICAL_LITERATURE/DATASHEET/CD00001225.pdf" H 6100 2650 50  0001 L CNN
	1    6100 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 601AC3EE
P 5750 2350
F 0 "R3" H 5681 2396 50  0000 R CNN
F 1 "100" H 5681 2305 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5680 2350 50  0001 C CNN
F 3 "~" H 5750 2350 50  0001 C CNN
	1    5750 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2450 6200 2300
Wire Wire Line
	6200 2200 6200 2050
$Comp
L Device:R R7
U 1 1 601AC3FA
P 6200 3200
F 0 "R7" H 6130 3154 50  0000 R CNN
F 1 "2.2" H 6130 3245 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6130 3200 50  0001 C CNN
F 3 "~" H 6200 3200 50  0001 C CNN
	1    6200 3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	5900 2650 5750 2650
$Comp
L Diode:1N4007 D6
U 1 1 601AC405
P 5750 3300
F 0 "D6" V 5796 3220 50  0000 R CNN
F 1 "1N4007" V 5705 3220 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5750 3125 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 5750 3300 50  0001 C CNN
	1    5750 3300
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4007 D2
U 1 1 601AC40F
P 5750 2900
F 0 "D2" V 5796 2820 50  0000 R CNN
F 1 "1N4007" V 5705 2820 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5750 2725 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 5750 2900 50  0001 C CNN
	1    5750 2900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5750 2750 5750 2650
Wire Wire Line
	5750 3050 5750 3150
Wire Wire Line
	5750 2650 5750 2500
Connection ~ 5750 2650
Wire Wire Line
	5750 3450 5750 3550
Wire Wire Line
	5750 3550 6000 3550
Wire Wire Line
	6200 2850 6200 3050
Wire Wire Line
	6200 3350 6200 3550
Wire Wire Line
	5750 2200 5750 2050
Wire Wire Line
	5750 2050 6000 2050
Wire Wire Line
	7150 2050 7400 2050
Wire Wire Line
	7150 2200 7150 2050
Wire Wire Line
	7600 3350 7600 3550
Wire Wire Line
	7600 2850 7600 3050
Wire Wire Line
	7150 3550 7400 3550
Wire Wire Line
	7150 3450 7150 3550
Connection ~ 7150 2650
Wire Wire Line
	7150 2650 7150 2500
Wire Wire Line
	7150 3050 7150 3150
Wire Wire Line
	7150 2750 7150 2650
$Comp
L Diode:1N4007 D3
U 1 1 601E36F5
P 7150 2900
F 0 "D3" V 7196 2820 50  0000 R CNN
F 1 "1N4007" V 7105 2820 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 7150 2725 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 7150 2900 50  0001 C CNN
	1    7150 2900
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4007 D7
U 1 1 601E36EB
P 7150 3300
F 0 "D7" V 7196 3220 50  0000 R CNN
F 1 "1N4007" V 7105 3220 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 7150 3125 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 7150 3300 50  0001 C CNN
	1    7150 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7300 2650 7150 2650
$Comp
L Device:R R8
U 1 1 601E36E0
P 7600 3200
F 0 "R8" H 7530 3154 50  0000 R CNN
F 1 "2.2" H 7530 3245 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7530 3200 50  0001 C CNN
F 3 "~" H 7600 3200 50  0001 C CNN
	1    7600 3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	7600 2200 7600 2050
Wire Wire Line
	7600 2450 7600 2300
$Comp
L Device:R R4
U 1 1 601E36D4
P 7150 2350
F 0 "R4" H 7081 2396 50  0000 R CNN
F 1 "100" H 7081 2305 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7080 2350 50  0001 C CNN
F 3 "~" H 7150 2350 50  0001 C CNN
	1    7150 2350
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BD137 Q3
U 1 1 601E3226
P 7500 2650
F 0 "Q3" H 7692 2696 50  0000 L CNN
F 1 "BD137" H 7692 2605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-126-3_Vertical" H 7700 2575 50  0001 L CIN
F 3 "http://www.st.com/internet/com/TECHNICAL_RESOURCES/TECHNICAL_LITERATURE/DATASHEET/CD00001225.pdf" H 7500 2650 50  0001 L CNN
	1    7500 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 2050 8800 2050
Wire Wire Line
	8550 2200 8550 2050
Wire Wire Line
	9000 3350 9000 3550
Wire Wire Line
	9000 2850 9000 3050
Wire Wire Line
	8550 3550 8800 3550
Wire Wire Line
	8550 3450 8550 3550
Connection ~ 8550 2650
Wire Wire Line
	8550 2650 8550 2500
Wire Wire Line
	8550 3050 8550 3150
Wire Wire Line
	8550 2750 8550 2650
$Comp
L Diode:1N4007 D4
U 1 1 601DF7E5
P 8550 2900
F 0 "D4" V 8596 2820 50  0000 R CNN
F 1 "1N4007" V 8505 2820 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 8550 2725 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 8550 2900 50  0001 C CNN
	1    8550 2900
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4007 D8
U 1 1 601DF7DB
P 8550 3300
F 0 "D8" V 8596 3220 50  0000 R CNN
F 1 "1N4007" V 8505 3220 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 8550 3125 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 8550 3300 50  0001 C CNN
	1    8550 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8700 2650 8550 2650
$Comp
L Device:R R9
U 1 1 601DF7D0
P 9000 3200
F 0 "R9" H 8930 3154 50  0000 R CNN
F 1 "2.2" H 8930 3245 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8930 3200 50  0001 C CNN
F 3 "~" H 9000 3200 50  0001 C CNN
	1    9000 3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	9000 2200 9000 2050
Wire Wire Line
	9000 2450 9000 2300
$Comp
L Device:R R5
U 1 1 601DF7C4
P 8550 2350
F 0 "R5" H 8481 2396 50  0000 R CNN
F 1 "100" H 8481 2305 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8480 2350 50  0001 C CNN
F 3 "~" H 8550 2350 50  0001 C CNN
	1    8550 2350
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BD137 Q4
U 1 1 601DF3A8
P 8900 2650
F 0 "Q4" H 9092 2696 50  0000 L CNN
F 1 "BD137" H 9092 2605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-126-3_Vertical" H 9100 2575 50  0001 L CIN
F 3 "http://www.st.com/internet/com/TECHNICAL_RESOURCES/TECHNICAL_LITERATURE/DATASHEET/CD00001225.pdf" H 8900 2650 50  0001 L CNN
	1    8900 2650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 600707BF
P 5000 2200
F 0 "J1" H 5080 2192 50  0000 L CNN
F 1 "DC_OUT_1" H 5080 2101 50  0000 L CNN
F 2 "TerminalBlock_4Ucon:TerminalBlock_4Ucon_1x02_P3.50mm_Horizontal" H 5000 2200 50  0001 C CNN
F 3 "~" H 5000 2200 50  0001 C CNN
	1    5000 2200
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BD137 Q1
U 1 1 60179BA8
P 4700 2650
F 0 "Q1" H 4892 2696 50  0000 L CNN
F 1 "BD137" H 4892 2605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-126-3_Vertical" H 4900 2575 50  0001 L CIN
F 3 "http://www.st.com/internet/com/TECHNICAL_RESOURCES/TECHNICAL_LITERATURE/DATASHEET/CD00001225.pdf" H 4700 2650 50  0001 L CNN
	1    4700 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 2450 4800 2300
Wire Wire Line
	4800 2200 4800 2050
$Comp
L Device:R R6
U 1 1 6018C0B1
P 4800 3200
F 0 "R6" H 4730 3154 50  0000 R CNN
F 1 "2.2" H 4730 3245 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4730 3200 50  0001 C CNN
F 3 "~" H 4800 3200 50  0001 C CNN
	1    4800 3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	4500 2650 4350 2650
$Comp
L Diode:1N4007 D5
U 1 1 60193D6D
P 4350 3300
F 0 "D5" V 4396 3220 50  0000 R CNN
F 1 "1N4007" V 4305 3220 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 4350 3125 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 4350 3300 50  0001 C CNN
	1    4350 3300
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4007 D1
U 1 1 60192B0D
P 4350 2900
F 0 "D1" V 4396 2820 50  0000 R CNN
F 1 "1N4007" V 4305 2820 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 4350 2725 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 4350 2900 50  0001 C CNN
	1    4350 2900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4350 2750 4350 2650
Wire Wire Line
	4350 3050 4350 3150
Wire Wire Line
	4350 2650 4350 2500
Connection ~ 4350 2650
Wire Wire Line
	4350 3450 4350 3550
Wire Wire Line
	4350 3550 4600 3550
Wire Wire Line
	4800 2850 4800 3050
Wire Wire Line
	4800 3350 4800 3550
Wire Wire Line
	4350 2200 4350 2050
Wire Wire Line
	4350 2050 4600 2050
$Comp
L Device:Jumper_NC_Small JP4
U 1 1 600748B5
P 8800 1800
F 0 "JP4" V 8754 1874 50  0000 L CNN
F 1 "GATE" V 8845 1874 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8800 1800 50  0001 C CNN
F 3 "~" H 8800 1800 50  0001 C CNN
	1    8800 1800
	0    1    1    0   
$EndComp
$Comp
L Device:Jumper_NC_Small JP3
U 1 1 600746E7
P 7400 1800
F 0 "JP3" V 7354 1874 50  0000 L CNN
F 1 "GATE" V 7445 1874 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7400 1800 50  0001 C CNN
F 3 "~" H 7400 1800 50  0001 C CNN
	1    7400 1800
	0    1    1    0   
$EndComp
$Comp
L Device:Jumper_NC_Small JP2
U 1 1 600744BF
P 6000 1800
F 0 "JP2" V 5954 1874 50  0000 L CNN
F 1 "GATE" V 6045 1874 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6000 1800 50  0001 C CNN
F 3 "~" H 6000 1800 50  0001 C CNN
	1    6000 1800
	0    1    1    0   
$EndComp
$Comp
L Device:Jumper_NC_Small JP1
U 1 1 60073FD9
P 4600 1800
F 0 "JP1" V 4554 1874 50  0000 L CNN
F 1 "GATE" V 4645 1874 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4600 1800 50  0001 C CNN
F 3 "~" H 4600 1800 50  0001 C CNN
	1    4600 1800
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 60071206
P 7800 2200
F 0 "J3" H 7880 2192 50  0000 L CNN
F 1 "DC_OUT_3" H 7880 2101 50  0000 L CNN
F 2 "TerminalBlock_4Ucon:TerminalBlock_4Ucon_1x02_P3.50mm_Horizontal" H 7800 2200 50  0001 C CNN
F 3 "~" H 7800 2200 50  0001 C CNN
	1    7800 2200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 60070F48
P 9200 2200
F 0 "J4" H 9280 2192 50  0000 L CNN
F 1 "DC_OUT_4" H 9280 2101 50  0000 L CNN
F 2 "TerminalBlock_4Ucon:TerminalBlock_4Ucon_1x02_P3.50mm_Horizontal" H 9200 2200 50  0001 C CNN
F 3 "~" H 9200 2200 50  0001 C CNN
	1    9200 2200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 60137365
P 1900 1900
F 0 "H1" V 2137 1903 50  0000 C CNN
F 1 "Mounting Pad" V 2046 1903 50  0000 C CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 1900 1900 50  0001 C CNN
F 3 "~" H 1900 1900 50  0001 C CNN
	1    1900 1900
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 6014BDD1
P 1900 2300
F 0 "H2" V 2137 2303 50  0000 C CNN
F 1 "Mounting Pad" V 2046 2303 50  0000 C CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 1900 2300 50  0001 C CNN
F 3 "~" H 1900 2300 50  0001 C CNN
	1    1900 2300
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 601516FA
P 1900 2700
F 0 "H3" V 2137 2703 50  0000 C CNN
F 1 "Mounting Pad" V 2046 2703 50  0000 C CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 1900 2700 50  0001 C CNN
F 3 "~" H 1900 2700 50  0001 C CNN
	1    1900 2700
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 60156BF4
P 1900 3100
F 0 "H4" V 2137 3103 50  0000 C CNN
F 1 "Mounting Pad" V 2046 3103 50  0000 C CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 1900 3100 50  0001 C CNN
F 3 "~" H 1900 3100 50  0001 C CNN
	1    1900 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2000 1900 2300 1900
Wire Wire Line
	2300 1900 2300 2300
Wire Wire Line
	2300 3100 2000 3100
Wire Wire Line
	2000 2300 2300 2300
Connection ~ 2300 2300
Wire Wire Line
	2300 2300 2300 2700
Wire Wire Line
	2000 2700 2300 2700
Connection ~ 2300 2700
Wire Wire Line
	2300 2700 2300 3100
Wire Wire Line
	2300 3100 2300 3250
Connection ~ 2300 3100
$Comp
L power:GND #PWR06
U 1 1 6017625A
P 2300 3250
F 0 "#PWR06" H 2300 3000 50  0001 C CNN
F 1 "GND" H 2305 3077 50  0000 C CNN
F 2 "" H 2300 3250 50  0001 C CNN
F 3 "" H 2300 3250 50  0001 C CNN
	1    2300 3250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Heatsink_Pad HS1
U 1 1 601EB1DF
P 5950 4850
F 0 "HS1" H 6092 4889 50  0000 L CNN
F 1 "Heatsink" H 6092 4798 50  0000 L CNN
F 2 "Heatsink:Heatsink_Fischer_SK104-STCB_35x13mm__2xDrill3.5mm_ScrewM3" H 5962 4800 50  0001 C CNN
F 3 "~" H 5962 4800 50  0001 C CNN
	1    5950 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 6020A2BD
P 5950 5050
F 0 "#PWR0101" H 5950 4800 50  0001 C CNN
F 1 "GND" H 5955 4877 50  0000 C CNN
F 2 "" H 5950 5050 50  0001 C CNN
F 3 "" H 5950 5050 50  0001 C CNN
	1    5950 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 5050 5950 4950
$EndSCHEMATC
