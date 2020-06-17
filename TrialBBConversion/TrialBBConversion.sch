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
L Device:Battery_Cell BT1
U 1 1 5EDEF379
P 1050 2700
F 0 "BT1" H 1168 2796 50  0000 L CNN
F 1 "Battery_Cell" H 1168 2705 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_2466_1xAAA" V 1050 2760 50  0001 C CNN
F 3 "~" V 1050 2760 50  0001 C CNN
	1    1050 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT2
U 1 1 5EDEF905
P 1050 3000
F 0 "BT2" H 1168 3096 50  0000 L CNN
F 1 "Battery_Cell" H 1168 3005 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_2466_1xAAA" V 1050 3060 50  0001 C CNN
F 3 "~" V 1050 3060 50  0001 C CNN
	1    1050 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT4
U 1 1 5EDF0036
P 1050 3300
F 0 "BT4" H 1168 3396 50  0000 L CNN
F 1 "Battery_Cell" H 1168 3305 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_2466_1xAAA" V 1050 3360 50  0001 C CNN
F 3 "~" V 1050 3360 50  0001 C CNN
	1    1050 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT3
U 1 1 5EDF07B8
P 1050 2400
F 0 "BT3" H 1168 2496 50  0000 L CNN
F 1 "Battery_Cell" H 1168 2405 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_2466_1xAAA" V 1050 2460 50  0001 C CNN
F 3 "~" V 1050 2460 50  0001 C CNN
	1    1050 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 3500 9950 3500
$Comp
L power:GND #PWR0101
U 1 1 5EE27041
P 2000 2200
F 0 "#PWR0101" H 2000 1950 50  0001 C CNN
F 1 "GND" H 2005 2027 50  0000 C CNN
F 2 "" H 2000 2200 50  0001 C CNN
F 3 "" H 2000 2200 50  0001 C CNN
	1    2000 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5EE286B6
P 1050 3400
F 0 "#PWR0102" H 1050 3150 50  0001 C CNN
F 1 "GND" H 1055 3227 50  0000 C CNN
F 2 "" H 1050 3400 50  0001 C CNN
F 3 "" H 1050 3400 50  0001 C CNN
	1    1050 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5EE296AF
P 5800 4750
F 0 "#PWR0103" H 5800 4500 50  0001 C CNN
F 1 "GND" H 5800 4500 50  0000 C CNN
F 2 "" H 5800 4750 50  0001 C CNN
F 3 "" H 5800 4750 50  0001 C CNN
	1    5800 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5EE2B058
P 8650 3200
F 0 "#PWR0104" H 8650 2950 50  0001 C CNN
F 1 "GND" V 8655 3072 50  0000 R CNN
F 2 "" H 8650 3200 50  0001 C CNN
F 3 "" H 8650 3200 50  0001 C CNN
	1    8650 3200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5EE2F230
P 9000 4600
F 0 "#PWR0107" H 9000 4350 50  0001 C CNN
F 1 "GND" H 9005 4427 50  0000 C CNN
F 2 "" H 9000 4600 50  0001 C CNN
F 3 "" H 9000 4600 50  0001 C CNN
	1    9000 4600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5EE31313
P 10200 4600
F 0 "#PWR0108" H 10200 4350 50  0001 C CNN
F 1 "GND" H 10205 4427 50  0000 C CNN
F 2 "" H 10200 4600 50  0001 C CNN
F 3 "" H 10200 4600 50  0001 C CNN
	1    10200 4600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5EE31532
P 10200 4750
F 0 "#PWR0109" H 10200 4500 50  0001 C CNN
F 1 "GND" H 10205 4577 50  0000 C CNN
F 2 "" H 10200 4750 50  0001 C CNN
F 3 "" H 10200 4750 50  0001 C CNN
	1    10200 4750
	0    -1   -1   0   
$EndComp
$Comp
L Regulator_Linear:SPX3819M5-L-3-3 U4
U 1 1 5EE62F37
P 2000 1900
F 0 "U4" H 2000 2242 50  0000 C CNN
F 1 "SPX3819M5-L-3-3" H 2000 2151 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 2000 2225 50  0001 C CNN
F 3 "https://www.exar.com/content/document.ashx?id=22106&languageid=1033&type=Datasheet&partnumber=SPX3819&filename=SPX3819.pdf&part=SPX3819" H 2000 1900 50  0001 C CNN
	1    2000 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1900 1550 1900
Wire Wire Line
	1550 1900 1550 1800
Wire Wire Line
	1550 1800 1700 1800
$Comp
L Device:C C1
U 1 1 5EE6C969
P 2400 2200
F 0 "C1" H 2515 2246 50  0000 L CNN
F 1 "10nf" H 2515 2155 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2438 2050 50  0001 C CNN
F 3 "~" H 2400 2200 50  0001 C CNN
	1    2400 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5EE6D10A
P 2700 2100
F 0 "C2" H 2815 2146 50  0000 L CNN
F 1 ".1uf" H 2815 2055 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2738 1950 50  0001 C CNN
F 3 "~" H 2700 2100 50  0001 C CNN
	1    2700 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5EE6D8E8
P 2700 2250
F 0 "#PWR0116" H 2700 2000 50  0001 C CNN
F 1 "GND" H 2705 2077 50  0000 C CNN
F 2 "" H 2700 2250 50  0001 C CNN
F 3 "" H 2700 2250 50  0001 C CNN
	1    2700 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5EE6DCC0
P 2400 2350
F 0 "#PWR0117" H 2400 2100 50  0001 C CNN
F 1 "GND" H 2405 2177 50  0000 C CNN
F 2 "" H 2400 2350 50  0001 C CNN
F 3 "" H 2400 2350 50  0001 C CNN
	1    2400 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1800 2700 1800
Wire Wire Line
	2400 2050 2400 1900
Wire Wire Line
	2400 1900 2300 1900
Wire Wire Line
	2700 1950 2700 1800
Connection ~ 2700 1800
Wire Wire Line
	2700 1800 2950 1800
$Comp
L Switch:SW_Push SW2
U 1 1 5EE76938
P 3750 3050
F 0 "SW2" H 3750 3335 50  0000 C CNN
F 1 "SW_Push" H 3750 3244 50  0000 C CNN
F 2 "MPV Custom stuff:Button_2_lead_SPST_TH" H 3750 3250 50  0001 C CNN
F 3 "~" H 3750 3250 50  0001 C CNN
	1    3750 3050
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 5EE77A95
P 4550 3300
F 0 "SW3" H 4550 3585 50  0000 C CNN
F 1 "SW_Push" H 4550 3494 50  0000 C CNN
F 2 "MPV Custom stuff:Button_2_lead_SPST_TH" H 4550 3500 50  0001 C CNN
F 3 "~" H 4550 3500 50  0001 C CNN
	1    4550 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5EE78C83
P 2950 3300
F 0 "R7" V 2743 3300 50  0000 C CNN
F 1 "100k" V 2834 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2880 3300 50  0001 C CNN
F 3 "~" H 2950 3300 50  0001 C CNN
	1    2950 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5EE79231
P 3000 3550
F 0 "R8" V 2793 3550 50  0000 C CNN
F 1 "100k" V 2884 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2930 3550 50  0001 C CNN
F 3 "~" H 3000 3550 50  0001 C CNN
	1    3000 3550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5EE7DA00
P 2800 3300
F 0 "#PWR0118" H 2800 3050 50  0001 C CNN
F 1 "GND" H 2805 3127 50  0000 C CNN
F 2 "" H 2800 3300 50  0001 C CNN
F 3 "" H 2800 3300 50  0001 C CNN
	1    2800 3300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5EE7DE4B
P 2850 3550
F 0 "#PWR0119" H 2850 3300 50  0001 C CNN
F 1 "GND" H 2855 3377 50  0000 C CNN
F 2 "" H 2850 3550 50  0001 C CNN
F 3 "" H 2850 3550 50  0001 C CNN
	1    2850 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 3550 3150 3550
Wire Wire Line
	3400 3450 3400 3300
Wire Wire Line
	3400 3300 3100 3300
Wire Wire Line
	3400 3300 3400 3050
Wire Wire Line
	3400 3050 3550 3050
Connection ~ 3400 3300
Wire Wire Line
	4150 3550 4150 3300
Wire Wire Line
	4150 3300 4350 3300
$Comp
L TrialBBConversion-rescue:DRV883-MPV_Symbol_Lib U1
U 1 1 5EDEE511
P 8950 2850
F 0 "U1" H 9125 2875 50  0000 C CNN
F 1 "DRV883-MPV_Symbol_Lib" H 9125 2784 50  0000 C CNN
F 2 "MPV Custom stuff:DRV8833_Module" H 8950 2850 50  0001 C CNN
F 3 "" H 8950 2850 50  0001 C CNN
	1    8950 2850
	1    0    0    -1  
$EndComp
Connection ~ 4150 3550
$Comp
L Arduino_Pro_Mini:Arduino_Pro_Mini X1
U 1 1 5EE644F2
P 6000 3600
F 0 "X1" H 6000 2353 60  0000 C CNN
F 1 "Arduino_Pro_Mini" H 5950 2100 60  0000 C CNN
F 2 "MPV Custom stuff:pro_mini" V 5650 3500 60  0001 C CNN
F 3 "https://www.arduino.cc/en/Main/ArduinoBoardProMini" H 9600 450 60  0000 C CNN
	1    6000 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 5150 3500 5200
$Comp
L Device:R R3
U 1 1 5EEB57AC
P 3500 5000
F 0 "R3" V 3293 5000 50  0000 C CNN
F 1 "1k" V 3384 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3430 5000 50  0001 C CNN
F 3 "~" H 3500 5000 50  0001 C CNN
	1    3500 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 5500 3500 5600
$Comp
L power:GND #PWR0112
U 1 1 5EEB57B7
P 3500 5600
F 0 "#PWR0112" H 3500 5350 50  0001 C CNN
F 1 "GND" H 3505 5427 50  0000 C CNN
F 2 "" H 3500 5600 50  0001 C CNN
F 3 "" H 3500 5600 50  0001 C CNN
	1    3500 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5EEB57C1
P 3500 5350
F 0 "D3" H 3493 5567 50  0000 C CNN
F 1 "LED" H 3493 5476 50  0000 C CNN
F 2 "MPV Custom stuff:5730_LED_SMD" H 3500 5350 50  0001 C CNN
F 3 "~" H 3500 5350 50  0001 C CNN
	1    3500 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3850 5150 3850 5200
$Comp
L Device:R R4
U 1 1 5EEB57CC
P 3850 5000
F 0 "R4" V 3643 5000 50  0000 C CNN
F 1 "1k" V 3734 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3780 5000 50  0001 C CNN
F 3 "~" H 3850 5000 50  0001 C CNN
	1    3850 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 5500 3850 5600
$Comp
L power:GND #PWR0113
U 1 1 5EEB57D7
P 3850 5600
F 0 "#PWR0113" H 3850 5350 50  0001 C CNN
F 1 "GND" H 3855 5427 50  0000 C CNN
F 2 "" H 3850 5600 50  0001 C CNN
F 3 "" H 3850 5600 50  0001 C CNN
	1    3850 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 5EEB57E1
P 3850 5350
F 0 "D4" H 3843 5567 50  0000 C CNN
F 1 "LED" H 3843 5476 50  0000 C CNN
F 2 "MPV Custom stuff:5730_LED_SMD" H 3850 5350 50  0001 C CNN
F 3 "~" H 3850 5350 50  0001 C CNN
	1    3850 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 5150 4200 5200
$Comp
L Device:R R5
U 1 1 5EEBF093
P 4200 5000
F 0 "R5" V 3993 5000 50  0000 C CNN
F 1 "1k" V 4084 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4130 5000 50  0001 C CNN
F 3 "~" H 4200 5000 50  0001 C CNN
	1    4200 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 5500 4200 5600
$Comp
L power:GND #PWR0114
U 1 1 5EEBF09E
P 4200 5600
F 0 "#PWR0114" H 4200 5350 50  0001 C CNN
F 1 "GND" H 4205 5427 50  0000 C CNN
F 2 "" H 4200 5600 50  0001 C CNN
F 3 "" H 4200 5600 50  0001 C CNN
	1    4200 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D5
U 1 1 5EEBF0A8
P 4200 5350
F 0 "D5" H 4193 5567 50  0000 C CNN
F 1 "LED" H 4193 5476 50  0000 C CNN
F 2 "MPV Custom stuff:5730_LED_SMD" H 4200 5350 50  0001 C CNN
F 3 "~" H 4200 5350 50  0001 C CNN
	1    4200 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4550 5150 4550 5200
$Comp
L Device:R R6
U 1 1 5EEBF0B3
P 4550 5000
F 0 "R6" V 4343 5000 50  0000 C CNN
F 1 "1k" V 4434 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4480 5000 50  0001 C CNN
F 3 "~" H 4550 5000 50  0001 C CNN
	1    4550 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 5500 4550 5600
$Comp
L power:GND #PWR0115
U 1 1 5EEBF0BE
P 4550 5600
F 0 "#PWR0115" H 4550 5350 50  0001 C CNN
F 1 "GND" H 4555 5427 50  0000 C CNN
F 2 "" H 4550 5600 50  0001 C CNN
F 3 "" H 4550 5600 50  0001 C CNN
	1    4550 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D6
U 1 1 5EEBF0C8
P 4550 5350
F 0 "D6" H 4543 5567 50  0000 C CNN
F 1 "LED" H 4543 5476 50  0000 C CNN
F 2 "MPV Custom stuff:5730_LED_SMD" H 4550 5350 50  0001 C CNN
F 3 "~" H 4550 5350 50  0001 C CNN
	1    4550 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4900 5150 4900 5200
$Comp
L Device:R R9
U 1 1 5EEBF0D3
P 4900 5000
F 0 "R9" V 4693 5000 50  0000 C CNN
F 1 "1k" V 4784 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4830 5000 50  0001 C CNN
F 3 "~" H 4900 5000 50  0001 C CNN
	1    4900 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 5500 4900 5600
$Comp
L power:GND #PWR0120
U 1 1 5EEBF0DE
P 4900 5600
F 0 "#PWR0120" H 4900 5350 50  0001 C CNN
F 1 "GND" H 4905 5427 50  0000 C CNN
F 2 "" H 4900 5600 50  0001 C CNN
F 3 "" H 4900 5600 50  0001 C CNN
	1    4900 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D7
U 1 1 5EEBF0E8
P 4900 5350
F 0 "D7" H 4893 5567 50  0000 C CNN
F 1 "LED" H 4893 5476 50  0000 C CNN
F 2 "MPV Custom stuff:5730_LED_SMD" H 4900 5350 50  0001 C CNN
F 3 "~" H 4900 5350 50  0001 C CNN
	1    4900 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5250 5150 5250 5200
$Comp
L Device:R R10
U 1 1 5EEBF0F3
P 5250 5000
F 0 "R10" V 5043 5000 50  0000 C CNN
F 1 "1k" V 5134 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5180 5000 50  0001 C CNN
F 3 "~" H 5250 5000 50  0001 C CNN
	1    5250 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 5500 5250 5600
$Comp
L power:GND #PWR0121
U 1 1 5EEBF0FE
P 5250 5600
F 0 "#PWR0121" H 5250 5350 50  0001 C CNN
F 1 "GND" H 5255 5427 50  0000 C CNN
F 2 "" H 5250 5600 50  0001 C CNN
F 3 "" H 5250 5600 50  0001 C CNN
	1    5250 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D8
U 1 1 5EEBF108
P 5250 5350
F 0 "D8" H 5243 5567 50  0000 C CNN
F 1 "LED" H 5243 5476 50  0000 C CNN
F 2 "MPV Custom stuff:5730_LED_SMD" H 5250 5350 50  0001 C CNN
F 3 "~" H 5250 5350 50  0001 C CNN
	1    5250 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5250 4850 5250 4150
Wire Wire Line
	5250 4150 5450 4150
Wire Wire Line
	4900 4850 4900 4050
Wire Wire Line
	4900 4050 5450 4050
Wire Wire Line
	4550 4850 4550 3950
Wire Wire Line
	4550 3950 5450 3950
Wire Wire Line
	4200 4850 4200 3850
Wire Wire Line
	4200 3850 5450 3850
Wire Wire Line
	3850 4850 3850 3750
Wire Wire Line
	3850 3750 5450 3750
Wire Wire Line
	3500 4850 3500 3650
Wire Wire Line
	3500 3650 5450 3650
$Comp
L power:GND #PWR0122
U 1 1 5EEE1370
P 5450 3350
F 0 "#PWR0122" H 5450 3100 50  0001 C CNN
F 1 "GND" V 5455 3222 50  0000 R CNN
F 2 "" H 5450 3350 50  0001 C CNN
F 3 "" H 5450 3350 50  0001 C CNN
	1    5450 3350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5EE2EAD4
P 9000 4900
F 0 "#PWR0106" H 9000 4650 50  0001 C CNN
F 1 "GND" H 9005 4727 50  0000 C CNN
F 2 "" H 9000 4900 50  0001 C CNN
F 3 "" H 9000 4900 50  0001 C CNN
	1    9000 4900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5EE2EA3D
P 9000 5050
F 0 "#PWR0105" H 9000 4800 50  0001 C CNN
F 1 "GND" H 9005 4877 50  0000 C CNN
F 2 "" H 9000 5050 50  0001 C CNN
F 3 "" H 9000 5050 50  0001 C CNN
	1    9000 5050
	0    1    1    0   
$EndComp
$Comp
L TrialBBConversion-rescue:Color_Sensor-MPV_Symbol_Lib U2
U 1 1 5EDEF240
P 9600 4650
F 0 "U2" H 9600 4965 50  0000 C CNN
F 1 "Color_Sensor-MPV_Symbol_Lib" H 9600 4874 50  0000 C CNN
F 2 "MPV Custom stuff:Color_Sensor" H 9600 4650 50  0001 C CNN
F 3 "" H 9600 4650 50  0001 C CNN
	1    9600 4650
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPDT SW1
U 1 1 5EF0E249
P 1300 1900
F 0 "SW1" H 1300 2185 50  0000 C CNN
F 1 "SW_SPDT" H 1300 2094 50  0000 C CNN
F 2 "MPV Custom stuff:SPDT_Switch" H 1300 1900 50  0001 C CNN
F 3 "~" H 1300 1900 50  0001 C CNN
	1    1300 1900
	1    0    0    -1  
$EndComp
Connection ~ 1550 1800
Wire Wire Line
	1050 1950 1100 1900
Wire Wire Line
	1500 1800 1550 1800
Wire Wire Line
	2950 1300 2950 1250
$Comp
L Device:R R11
U 1 1 5EF211E5
P 2950 1450
F 0 "R11" V 2743 1450 50  0000 C CNN
F 1 "1k" V 2834 1450 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2880 1450 50  0001 C CNN
F 3 "~" H 2950 1450 50  0001 C CNN
	1    2950 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	2950 950  2950 850 
$Comp
L power:GND #PWR0124
U 1 1 5EF211EC
P 2950 850
F 0 "#PWR0124" H 2950 600 50  0001 C CNN
F 1 "GND" H 2955 677 50  0000 C CNN
F 2 "" H 2950 850 50  0001 C CNN
F 3 "" H 2950 850 50  0001 C CNN
	1    2950 850 
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D9
U 1 1 5EF211F2
P 2950 1100
F 0 "D9" H 2943 1317 50  0000 C CNN
F 1 "LED" H 2943 1226 50  0000 C CNN
F 2 "MPV Custom stuff:5730_LED_SMD" H 2950 1100 50  0001 C CNN
F 3 "~" H 2950 1100 50  0001 C CNN
	1    2950 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 1600 2950 1800
Wire Wire Line
	1050 1950 1050 2200
Wire Wire Line
	10200 4900 10400 4900
Wire Wire Line
	10400 4900 10400 5350
Wire Wire Line
	10400 5350 8200 5350
Wire Wire Line
	8200 5350 8200 4250
Wire Wire Line
	8200 4250 6550 4250
Text GLabel 2950 1800 2    50   Input ~ 0
3.3vlabel
Text GLabel 3950 3050 2    50   Input ~ 0
3.3vlabel
Text GLabel 10200 5050 2    50   Input ~ 0
3.3vlabel
Text GLabel 9000 4750 0    50   Input ~ 0
3.3vlabel
Text GLabel 8650 3050 0    50   Input ~ 0
3.3vlabel
Text GLabel 8650 3800 0    50   Input ~ 0
3.3vlabel
Text GLabel 6550 3250 2    50   Input ~ 0
3.3vlabel
Text GLabel 4750 3300 2    50   Input ~ 0
3.3vlabel
Wire Wire Line
	3400 3450 5450 3450
Wire Wire Line
	4150 3550 5450 3550
$Comp
L TrialBBConversion-rescue:a-24543.5mmAudio U3
U 1 1 5EE04161
P 10450 3850
F 0 "U3" H 10200 4000 50  0000 L CNN
F 1 "a-24543.5mmAudio" H 9900 3900 50  0000 L CNN
F 2 "MPV Custom stuff:3.5mm_Audio_Jack_A-2454_Tayda" H 10400 3700 50  0001 C CNN
F 3 "" H 10400 3700 50  0001 C CNN
	1    10450 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	9600 3950 9800 3950
Wire Wire Line
	9800 3950 9800 3650
Wire Wire Line
	9800 3650 9950 3650
Wire Wire Line
	8650 3950 8200 3950
Wire Wire Line
	8200 3950 8200 4150
Wire Wire Line
	8200 4150 6550 4150
Wire Wire Line
	6600 5150 6600 5200
$Comp
L Device:R R1
U 1 1 5F00357D
P 6600 5000
F 0 "R1" V 6393 5000 50  0000 C CNN
F 1 "1k" V 6484 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6530 5000 50  0001 C CNN
F 3 "~" H 6600 5000 50  0001 C CNN
	1    6600 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 5500 6600 5600
$Comp
L power:GND #PWR0110
U 1 1 5F003588
P 6600 5600
F 0 "#PWR0110" H 6600 5350 50  0001 C CNN
F 1 "GND" H 6605 5427 50  0000 C CNN
F 2 "" H 6600 5600 50  0001 C CNN
F 3 "" H 6600 5600 50  0001 C CNN
	1    6600 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5F003592
P 6600 5350
F 0 "D1" H 6593 5567 50  0000 C CNN
F 1 "LED" H 6593 5476 50  0000 C CNN
F 2 "MPV Custom stuff:5730_LED_SMD" H 6600 5350 50  0001 C CNN
F 3 "~" H 6600 5350 50  0001 C CNN
	1    6600 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6900 5150 6900 5200
$Comp
L Device:R R2
U 1 1 5F00FCDF
P 6900 5000
F 0 "R2" V 6693 5000 50  0000 C CNN
F 1 "1k" V 6784 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6830 5000 50  0001 C CNN
F 3 "~" H 6900 5000 50  0001 C CNN
	1    6900 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5500 6900 5600
$Comp
L power:GND #PWR0111
U 1 1 5F00FCEA
P 6900 5600
F 0 "#PWR0111" H 6900 5350 50  0001 C CNN
F 1 "GND" H 6905 5427 50  0000 C CNN
F 2 "" H 6900 5600 50  0001 C CNN
F 3 "" H 6900 5600 50  0001 C CNN
	1    6900 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5F00FCF4
P 6900 5350
F 0 "D2" H 6893 5567 50  0000 C CNN
F 1 "LED" H 6893 5476 50  0000 C CNN
F 2 "MPV Custom stuff:5730_LED_SMD" H 6900 5350 50  0001 C CNN
F 3 "~" H 6900 5350 50  0001 C CNN
	1    6900 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7200 5150 7200 5200
$Comp
L Device:R R12
U 1 1 5F013BBF
P 7200 5000
F 0 "R12" V 6993 5000 50  0000 C CNN
F 1 "1k" V 7084 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7130 5000 50  0001 C CNN
F 3 "~" H 7200 5000 50  0001 C CNN
	1    7200 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 5500 7200 5600
$Comp
L power:GND #PWR0123
U 1 1 5F013BCA
P 7200 5600
F 0 "#PWR0123" H 7200 5350 50  0001 C CNN
F 1 "GND" H 7205 5427 50  0000 C CNN
F 2 "" H 7200 5600 50  0001 C CNN
F 3 "" H 7200 5600 50  0001 C CNN
	1    7200 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D10
U 1 1 5F013BD4
P 7200 5350
F 0 "D10" H 7193 5567 50  0000 C CNN
F 1 "LED" H 7193 5476 50  0000 C CNN
F 2 "MPV Custom stuff:5730_LED_SMD" H 7200 5350 50  0001 C CNN
F 3 "~" H 7200 5350 50  0001 C CNN
	1    7200 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7550 5150 7550 5200
$Comp
L Device:R R13
U 1 1 5F0170B7
P 7550 5000
F 0 "R13" V 7343 5000 50  0000 C CNN
F 1 "1k" V 7434 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7480 5000 50  0001 C CNN
F 3 "~" H 7550 5000 50  0001 C CNN
	1    7550 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 5500 7550 5600
$Comp
L power:GND #PWR0125
U 1 1 5F0170C2
P 7550 5600
F 0 "#PWR0125" H 7550 5350 50  0001 C CNN
F 1 "GND" H 7555 5427 50  0000 C CNN
F 2 "" H 7550 5600 50  0001 C CNN
F 3 "" H 7550 5600 50  0001 C CNN
	1    7550 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D11
U 1 1 5F0170CC
P 7550 5350
F 0 "D11" H 7543 5567 50  0000 C CNN
F 1 "LED" H 7543 5476 50  0000 C CNN
F 2 "MPV Custom stuff:5730_LED_SMD" H 7550 5350 50  0001 C CNN
F 3 "~" H 7550 5350 50  0001 C CNN
	1    7550 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6600 4850 6600 4050
Wire Wire Line
	6600 4050 6550 4050
Wire Wire Line
	6900 4850 6900 3950
Wire Wire Line
	6900 3950 6550 3950
Wire Wire Line
	7200 4850 7200 3850
Wire Wire Line
	7200 3850 6550 3850
Wire Wire Line
	7550 4850 7550 3750
Wire Wire Line
	7550 3750 6550 3750
$EndSCHEMATC