EESchema Schematic File Version 4
EELAYER 30 0
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
L Connector:Conn_Coaxial J1
U 1 1 5F52127E
P 3950 2300
F 0 "J1" H 4050 2275 50  0000 L CNN
F 1 "Conn_Coaxial" H 4050 2184 50  0000 L CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132134_Vertical" H 3950 2300 50  0001 C CNN
F 3 " ~" H 3950 2300 50  0001 C CNN
	1    3950 2300
	1    0    0    -1  
$EndComp
$Comp
L CVCO:CVCO55 Y1
U 1 1 5F523A21
P 2250 3300
F 0 "Y1" H 2250 3767 50  0000 C CNN
F 1 "CVCO55" H 2250 3676 50  0000 C CNN
F 2 "CVCO:CVCO55" H 1719 2828 50  0001 L BNN
F 3 "None" H 2250 3300 50  0001 L BNN
	1    2250 3300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
