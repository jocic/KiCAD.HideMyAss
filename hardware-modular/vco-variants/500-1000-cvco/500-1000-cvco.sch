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
$Comp
L CVCO:CVCO55 Y1
U 1 1 601F41FF
P 6600 4500
F 0 "Y1" H 6600 4967 50  0000 C CNN
F 1 "549-CV55CW500-1000" H 6600 4876 50  0000 C CNN
F 2 "CVCO:CVCO55" H 6069 4028 50  0001 L BNN
F 3 "None" H 6600 4500 50  0001 L BNN
	1    6600 4500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 601F4CC3
P 4700 2100
F 0 "J1" H 4618 2417 50  0000 C CNN
F 1 "INPUT" H 4618 2326 50  0000 C CNN
F 2 "TerminalBlock_4Ucon:TerminalBlock_4Ucon_1x03_P3.50mm_Vertical" H 4700 2100 50  0001 C CNN
F 3 "~" H 4700 2100 50  0001 C CNN
	1    4700 2100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4900 2000 5050 2000
Wire Wire Line
	5050 2000 5050 1850
Wire Wire Line
	4900 2100 5200 2100
Wire Wire Line
	5050 2350 5050 2200
Wire Wire Line
	5050 2200 4900 2200
$Comp
L power:GND #PWR03
U 1 1 601F64C5
P 5050 2350
F 0 "#PWR03" H 5050 2100 50  0001 C CNN
F 1 "GND" H 5055 2177 50  0000 C CNN
F 2 "" H 5050 2350 50  0001 C CNN
F 3 "" H 5050 2350 50  0001 C CNN
	1    5050 2350
	1    0    0    -1  
$EndComp
Text GLabel 5200 2100 2    50   Input ~ 0
TUNE
$Comp
L Device:C C9
U 1 1 601F8893
P 5500 4950
F 0 "C9" H 5615 4996 50  0000 L CNN
F 1 "1μF" H 5615 4905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5538 4800 50  0001 C CNN
F 3 "~" H 5500 4950 50  0001 C CNN
	1    5500 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP1
U 1 1 601F97C8
P 5250 5400
F 0 "JP1" H 5250 5612 50  0000 C CNN
F 1 "Jumper" H 5250 5521 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5250 5400 50  0001 C CNN
F 3 "~" H 5250 5400 50  0001 C CNN
	1    5250 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:D D3
U 1 1 601FB634
P 3500 4300
F 0 "D3" V 3546 4380 50  0000 L CNN
F 1 "1N4007" V 3455 4380 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P2.54mm_Vertical_AnodeUp" H 3500 4300 50  0001 C CNN
F 3 "~" H 3500 4300 50  0001 C CNN
	1    3500 4300
	0    1    -1   0   
$EndComp
$Comp
L Device:D D4
U 1 1 601FB917
P 3500 4750
F 0 "D4" V 3546 4830 50  0000 L CNN
F 1 "1N4007" V 3455 4830 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P2.54mm_Vertical_AnodeUp" H 3500 4750 50  0001 C CNN
F 3 "~" H 3500 4750 50  0001 C CNN
	1    3500 4750
	0    1    -1   0   
$EndComp
Wire Wire Line
	3500 4450 3500 4600
Wire Wire Line
	3500 4900 3500 5050
$Comp
L Device:R R4
U 1 1 602005B6
P 3150 4050
F 0 "R4" V 2943 4050 50  0000 C CNN
F 1 "3k" V 3034 4050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3080 4050 50  0001 C CNN
F 3 "~" H 3150 4050 50  0001 C CNN
	1    3150 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 4050 2850 3900
$Comp
L power:+24V #PWR07
U 1 1 60200BA0
P 2850 3900
F 0 "#PWR07" H 2850 3750 50  0001 C CNN
F 1 "+24V" H 2865 4073 50  0000 C CNN
F 2 "" H 2850 3900 50  0001 C CNN
F 3 "" H 2850 3900 50  0001 C CNN
	1    2850 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:D D2
U 1 1 601FBB03
P 4600 4050
F 0 "D2" H 4600 4267 50  0000 C CNN
F 1 "1N4007" H 4600 4176 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P2.54mm_Vertical_AnodeUp" H 4600 4050 50  0001 C CNN
F 3 "~" H 4600 4050 50  0001 C CNN
	1    4600 4050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5500 4800 5500 4700
Wire Wire Line
	5900 4700 5900 4800
Wire Wire Line
	5500 5200 5500 5100
Wire Wire Line
	5900 5100 5900 5200
Wire Wire Line
	5500 5200 5700 5200
$Comp
L power:GND #PWR010
U 1 1 60233ED9
P 3500 5050
F 0 "#PWR010" H 3500 4800 50  0001 C CNN
F 1 "GND" H 3505 4877 50  0000 C CNN
F 2 "" H 3500 5050 50  0001 C CNN
F 3 "" H 3500 5050 50  0001 C CNN
	1    3500 5050
	1    0    0    -1  
$EndComp
Connection ~ 4900 5400
Wire Wire Line
	4900 5400 4900 5500
$Comp
L power:GND #PWR011
U 1 1 6021012D
P 4900 5500
F 0 "#PWR011" H 4900 5250 50  0001 C CNN
F 1 "GND" H 4905 5327 50  0000 C CNN
F 2 "" H 4900 5500 50  0001 C CNN
F 3 "" H 4900 5500 50  0001 C CNN
	1    4900 5500
	1    0    0    -1  
$EndComp
Connection ~ 4900 4500
Wire Wire Line
	4900 5050 4900 5400
Wire Wire Line
	4900 4500 4900 4750
$Comp
L Device:D_Zener D5
U 1 1 601F77CB
P 4900 4900
F 0 "D5" V 4854 4980 50  0000 L CNN
F 1 "ZPY 18" V 4945 4980 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P2.54mm_Vertical_AnodeUp" H 4900 4900 50  0001 C CNN
F 3 "~" H 4900 4900 50  0001 C CNN
	1    4900 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	7100 4700 7250 4700
Wire Wire Line
	7250 4700 7250 4850
$Comp
L power:GND #PWR08
U 1 1 60251273
P 7250 4850
F 0 "#PWR08" H 7250 4600 50  0001 C CNN
F 1 "GND" H 7255 4677 50  0000 C CNN
F 2 "" H 7250 4850 50  0001 C CNN
F 3 "" H 7250 4850 50  0001 C CNN
	1    7250 4850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J2
U 1 1 60251886
P 8050 4500
F 0 "J2" H 8150 4475 50  0000 L CNN
F 1 "RF_OUT" H 8150 4384 50  0000 L CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132289_EdgeMount" H 8050 4500 50  0001 C CNN
F 3 " ~" H 8050 4500 50  0001 C CNN
	1    8050 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 4700 8050 4850
$Comp
L power:GND #PWR09
U 1 1 60252481
P 8050 4850
F 0 "#PWR09" H 8050 4600 50  0001 C CNN
F 1 "GND" H 8055 4677 50  0000 C CNN
F 2 "" H 8050 4850 50  0001 C CNN
F 3 "" H 8050 4850 50  0001 C CNN
	1    8050 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 4500 7700 4500
$Comp
L Device:C C8
U 1 1 60252F14
P 7550 4500
F 0 "C8" V 7298 4500 50  0000 C CNN
F 1 "1.6nF" V 7389 4500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7588 4350 50  0001 C CNN
F 3 "~" H 7550 4500 50  0001 C CNN
	1    7550 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 4500 7100 4500
Wire Wire Line
	7100 4300 7250 4300
$Comp
L Device:C C2
U 1 1 6025F666
P 4550 3150
F 0 "C2" H 4665 3196 50  0000 L CNN
F 1 "1μF" H 4665 3105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4588 3000 50  0001 C CNN
F 3 "~" H 4550 3150 50  0001 C CNN
	1    4550 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 6025F900
P 5000 3150
F 0 "C3" H 5115 3196 50  0000 L CNN
F 1 "1μF" H 5115 3105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5038 3000 50  0001 C CNN
F 3 "~" H 5000 3150 50  0001 C CNN
	1    5000 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 6025FAEE
P 5450 3150
F 0 "C4" H 5565 3196 50  0000 L CNN
F 1 "1.2nF" H 5565 3105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5488 3000 50  0001 C CNN
F 3 "~" H 5450 3150 50  0001 C CNN
	1    5450 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 6025FD7C
P 5900 3150
F 0 "C5" H 6015 3196 50  0000 L CNN
F 1 "1.2nF" H 6015 3105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5938 3000 50  0001 C CNN
F 3 "~" H 5900 3150 50  0001 C CNN
	1    5900 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 6026001E
P 6350 3150
F 0 "C6" H 6465 3196 50  0000 L CNN
F 1 "68pF" H 6465 3105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6388 3000 50  0001 C CNN
F 3 "~" H 6350 3150 50  0001 C CNN
	1    6350 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR02
U 1 1 601F5C37
P 5050 1850
F 0 "#PWR02" H 5050 1700 50  0001 C CNN
F 1 "+24V" H 5065 2023 50  0000 C CNN
F 2 "" H 5050 1850 50  0001 C CNN
F 3 "" H 5050 1850 50  0001 C CNN
	1    5050 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 602722A6
P 4100 2550
F 0 "R2" H 4170 2596 50  0000 L CNN
F 1 "1.2k" H 4170 2505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4030 2550 50  0001 C CNN
F 3 "~" H 4100 2550 50  0001 C CNN
	1    4100 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2400 4100 2250
Wire Wire Line
	4100 2850 4550 2850
$Comp
L Device:R R3
U 1 1 6027C30B
P 4100 3150
F 0 "R3" H 4170 3196 50  0000 L CNN
F 1 "1.8k" H 4170 3105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4030 3150 50  0001 C CNN
F 3 "~" H 4100 3150 50  0001 C CNN
	1    4100 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3300 4100 3450
Wire Wire Line
	4100 2700 4100 2850
Connection ~ 4100 2850
Wire Wire Line
	4100 2850 4100 3000
Wire Wire Line
	4550 3000 4550 2850
Connection ~ 4550 2850
Wire Wire Line
	4550 2850 5000 2850
Wire Wire Line
	5000 3000 5000 2850
Connection ~ 5000 2850
Wire Wire Line
	5000 2850 5450 2850
Wire Wire Line
	5450 3000 5450 2850
Wire Wire Line
	5450 2850 5900 2850
Connection ~ 5450 2850
Wire Wire Line
	5900 3000 5900 2850
Wire Wire Line
	5900 2850 6350 2850
Connection ~ 5900 2850
Wire Wire Line
	6350 3000 6350 2850
Wire Wire Line
	6350 3300 6350 3450
Wire Wire Line
	6350 3450 5900 3450
Wire Wire Line
	5900 3300 5900 3450
Connection ~ 5900 3450
Wire Wire Line
	5900 3450 5450 3450
Wire Wire Line
	5450 3300 5450 3450
Wire Wire Line
	5450 3450 5000 3450
Connection ~ 5450 3450
Wire Wire Line
	5000 3300 5000 3450
Wire Wire Line
	5000 3450 4550 3450
Connection ~ 5000 3450
Wire Wire Line
	4550 3300 4550 3450
Connection ~ 4550 3450
Wire Wire Line
	6350 2850 6800 2850
Connection ~ 6350 2850
Wire Wire Line
	7250 2850 7250 3000
$Comp
L Device:C C10
U 1 1 601F8DF3
P 5900 4950
F 0 "C10" H 6015 4996 50  0000 L CNN
F 1 "0.1μF" H 6015 4905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5938 4800 50  0001 C CNN
F 3 "~" H 5900 4950 50  0001 C CNN
	1    5900 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3450 4550 3450
Connection ~ 3600 2250
Wire Wire Line
	3600 2250 4100 2250
Wire Wire Line
	3200 2100 3200 2250
Connection ~ 3200 2250
Wire Wire Line
	3200 1800 3200 1650
$Comp
L Device:R R1
U 1 1 6026670F
P 3200 1950
F 0 "R1" H 3270 1996 50  0000 L CNN
F 1 "670" H 3270 1905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P15.24mm_Horizontal" V 3130 1950 50  0001 C CNN
F 3 "~" H 3200 1950 50  0001 C CNN
	1    3200 1950
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR01
U 1 1 6025DAF3
P 3200 1650
F 0 "#PWR01" H 3200 1500 50  0001 C CNN
F 1 "+24V" H 3215 1823 50  0000 C CNN
F 2 "" H 3200 1650 50  0001 C CNN
F 3 "" H 3200 1650 50  0001 C CNN
	1    3200 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2250 3600 2250
Wire Wire Line
	4100 3450 4100 3600
$Comp
L power:GND #PWR06
U 1 1 6027DD83
P 4100 3600
F 0 "#PWR06" H 4100 3350 50  0001 C CNN
F 1 "GND" H 4105 3427 50  0000 C CNN
F 2 "" H 4100 3600 50  0001 C CNN
F 3 "" H 4100 3600 50  0001 C CNN
	1    4100 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2250 3200 2400
$Comp
L Device:C C1
U 1 1 6025A063
P 3200 2550
F 0 "C1" H 3315 2596 50  0000 L CNN
F 1 "1μF" H 3315 2505 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3238 2400 50  0001 C CNN
F 3 "~" H 3200 2550 50  0001 C CNN
	1    3200 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2400 3600 2250
$Comp
L Device:D_Zener D1
U 1 1 60257F8F
P 3600 2550
F 0 "D1" V 3554 2630 50  0000 L CNN
F 1 "ZPY 20" V 3645 2630 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P2.54mm_Vertical_AnodeUp" H 3600 2550 50  0001 C CNN
F 3 "~" H 3600 2550 50  0001 C CNN
	1    3600 2550
	0    1    1    0   
$EndComp
Connection ~ 3600 2850
Wire Wire Line
	3600 2850 3600 3000
Wire Wire Line
	3200 2850 3200 2700
Wire Wire Line
	3600 2850 3200 2850
$Comp
L power:GND #PWR04
U 1 1 6025930D
P 3600 3000
F 0 "#PWR04" H 3600 2750 50  0001 C CNN
F 1 "GND" H 3605 2827 50  0000 C CNN
F 2 "" H 3600 3000 50  0001 C CNN
F 3 "" H 3600 3000 50  0001 C CNN
	1    3600 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2700 3600 2850
$Comp
L Device:C C7
U 1 1 602F06CD
P 6800 3150
F 0 "C7" H 6915 3196 50  0000 L CNN
F 1 "68pF" H 6915 3105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6838 3000 50  0001 C CNN
F 3 "~" H 6800 3150 50  0001 C CNN
	1    6800 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3000 6800 2850
Wire Wire Line
	6800 3300 6800 3450
Wire Wire Line
	6800 2850 7250 2850
Connection ~ 6800 2850
Wire Wire Line
	6800 3450 6350 3450
Connection ~ 6350 3450
$Comp
L Device:L L1
U 1 1 60302AD2
P 7250 3150
F 0 "L1" H 7302 3196 50  0000 L CNN
F 1 "470μF" H 7302 3105 50  0000 L CNN
F 2 "Inductor_SMD:L_0805_2012Metric" H 7250 3150 50  0001 C CNN
F 3 "~" H 7250 3150 50  0001 C CNN
	1    7250 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 3300 7250 4300
Connection ~ 4100 3450
Wire Wire Line
	4450 4500 4300 4500
Text GLabel 4300 4500 0    50   Input ~ 0
TUNE
$Comp
L Device:R R5
U 1 1 601F7DE4
P 4600 4500
F 0 "R5" V 4393 4500 50  0000 C CNN
F 1 "3k" V 4484 4500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4530 4500 50  0001 C CNN
F 3 "~" H 4600 4500 50  0001 C CNN
	1    4600 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 4500 4900 4500
Wire Wire Line
	4900 4500 5300 4500
Wire Wire Line
	5300 4050 5300 4500
Connection ~ 5300 4500
Wire Wire Line
	3300 4050 3500 4050
Wire Wire Line
	4750 4050 5300 4050
Wire Wire Line
	4450 4050 3500 4050
Connection ~ 3500 4050
Wire Wire Line
	3500 4050 3500 4150
Wire Wire Line
	2850 4050 3000 4050
Wire Notes Line
	8550 5850 8550 1300
Wire Notes Line
	8550 1300 2650 1300
Wire Notes Line
	2650 1300 2650 5850
Wire Notes Line
	2650 5850 8550 5850
Text Notes 7650 5750 0    50   ~ 0
CVCO Implementation
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 603B13D9
P 7850 1750
F 0 "H1" V 8087 1753 50  0000 C CNN
F 1 "Mounting Pad" V 7996 1753 50  0000 C CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 7850 1750 50  0001 C CNN
F 3 "~" H 7850 1750 50  0001 C CNN
	1    7850 1750
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 603B7259
P 7850 2150
F 0 "H2" V 8087 2153 50  0000 C CNN
F 1 "Mounting Pad" V 7996 2153 50  0000 C CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 7850 2150 50  0001 C CNN
F 3 "~" H 7850 2150 50  0001 C CNN
	1    7850 2150
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 603B7587
P 7850 2550
F 0 "H3" V 8087 2553 50  0000 C CNN
F 1 "Mounting Pad" V 7996 2553 50  0000 C CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 7850 2550 50  0001 C CNN
F 3 "~" H 7850 2550 50  0001 C CNN
	1    7850 2550
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 603B7A04
P 7850 2950
F 0 "H4" V 8087 2953 50  0000 C CNN
F 1 "Mounting Pad" V 7996 2953 50  0000 C CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 7850 2950 50  0001 C CNN
F 3 "~" H 7850 2950 50  0001 C CNN
	1    7850 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7950 1750 8300 1750
Wire Wire Line
	8300 1750 8300 2150
Wire Wire Line
	8300 2950 7950 2950
Wire Wire Line
	7950 2150 8300 2150
Connection ~ 8300 2150
Wire Wire Line
	8300 2150 8300 2550
Wire Wire Line
	7950 2550 8300 2550
Connection ~ 8300 2550
Wire Wire Line
	8300 2550 8300 2950
Wire Wire Line
	8300 2950 8300 3100
$Comp
L power:GND #PWR05
U 1 1 603BE813
P 8300 3100
F 0 "#PWR05" H 8300 2850 50  0001 C CNN
F 1 "GND" H 8305 2927 50  0000 C CNN
F 2 "" H 8300 3100 50  0001 C CNN
F 3 "" H 8300 3100 50  0001 C CNN
	1    8300 3100
	1    0    0    -1  
$EndComp
Connection ~ 8300 2950
Wire Wire Line
	5300 4500 5700 4500
Wire Wire Line
	5700 4500 5700 4700
Wire Wire Line
	5500 4700 5700 4700
Connection ~ 5700 4500
Wire Wire Line
	5700 4500 6100 4500
Connection ~ 5700 4700
Wire Wire Line
	5700 4700 5900 4700
Wire Wire Line
	5700 5200 5700 5400
Wire Wire Line
	4900 5400 5150 5400
Connection ~ 5700 5200
Wire Wire Line
	5700 5200 5900 5200
Wire Wire Line
	5350 5400 5700 5400
$EndSCHEMATC