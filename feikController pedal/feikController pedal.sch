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
Wire Wire Line
	5200 3750 4750 3750
Text Label 5000 3750 0    50   ~ 0
~CS
Text Label 6300 3450 0    50   ~ 0
CLK
Text Label 6300 3550 0    50   ~ 0
DATA
Text Label 6300 3650 0    50   ~ 0
CMD
$Comp
L power:GND #PWR04
U 1 1 5DA2790A
P 5700 4300
F 0 "#PWR04" H 5700 4050 50  0001 C CNN
F 1 "GND" H 5705 4127 50  0000 C CNN
F 2 "" H 5700 4300 50  0001 C CNN
F 3 "" H 5700 4300 50  0001 C CNN
	1    5700 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4300 5700 4250
$Comp
L power:+3.3V #PWR03
U 1 1 5DA29415
P 5700 3100
F 0 "#PWR03" H 5700 2950 50  0001 C CNN
F 1 "+3.3V" H 5715 3273 50  0000 C CNN
F 2 "" H 5700 3100 50  0001 C CNN
F 3 "" H 5700 3100 50  0001 C CNN
	1    5700 3100
	1    0    0    -1  
$EndComp
Text Label 4050 3450 0    50   ~ 0
VPP\~MCLR
Text Label 3400 3050 1    50   ~ 0
VDD
Text Label 3550 3450 1    50   ~ 0
VSS
Text Label 4050 3550 0    50   ~ 0
ICSPDAT
Text Label 4050 3650 0    50   ~ 0
ICSPCLK
$Comp
L power:+3.3V #PWR01
U 1 1 5DA328E1
P 3400 2900
F 0 "#PWR01" H 3400 2750 50  0001 C CNN
F 1 "+3.3V" H 3415 3073 50  0000 C CNN
F 2 "" H 3400 2900 50  0001 C CNN
F 3 "" H 3400 2900 50  0001 C CNN
	1    3400 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3050 3400 2900
$Comp
L power:GND #PWR02
U 1 1 5DA33130
P 3550 3450
F 0 "#PWR02" H 3550 3200 50  0001 C CNN
F 1 "GND" H 3555 3277 50  0000 C CNN
F 2 "" H 3550 3450 50  0001 C CNN
F 3 "" H 3550 3450 50  0001 C CNN
	1    3550 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3300 3550 3450
Wire Wire Line
	5200 3550 3850 3550
Wire Wire Line
	3700 3650 5200 3650
Wire Wire Line
	6850 3450 6850 3400
Wire Wire Line
	6200 3450 6850 3450
Wire Wire Line
	7150 3650 7150 3400
Wire Wire Line
	6200 3650 7150 3650
Wire Wire Line
	4750 3750 4750 4600
Wire Wire Line
	4750 4600 7300 4600
Wire Wire Line
	7300 4600 7300 3400
Wire Wire Line
	4000 3450 4000 3300
Wire Wire Line
	3850 3550 3850 3300
Wire Wire Line
	3700 3650 3700 3300
Wire Notes Line
	3050 2550 3050 3800
Wire Notes Line
	3050 3800 4500 3800
Wire Notes Line
	4500 3800 4500 2550
Wire Notes Line
	4500 2550 3050 2550
Text Notes 4150 2650 0    50   ~ 0
PICKit3
NoConn ~ 6200 3750
NoConn ~ 6200 3850
NoConn ~ 5200 3850
$Comp
L Connector:TestPoint TP2
U 1 1 5DA6550A
P 3400 3050
F 0 "TP2" V 3400 3250 50  0000 L CNN
F 1 "TestPoint" H 3458 3077 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 3600 3050 50  0001 C CNN
F 3 "~" H 3600 3050 50  0001 C CNN
	1    3400 3050
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP10
U 1 1 5DAA834D
P 7450 3400
F 0 "TP10" V 7450 3600 50  0000 L CNN
F 1 "TestPoint" H 7508 3427 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 7650 3400 50  0001 C CNN
F 3 "~" H 7650 3400 50  0001 C CNN
	1    7450 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP9
U 1 1 5DA61652
P 7300 3400
F 0 "TP9" V 7300 3600 50  0000 L CNN
F 1 "TestPoint" H 7358 3427 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 7500 3400 50  0001 C CNN
F 3 "~" H 7500 3400 50  0001 C CNN
	1    7300 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP8
U 1 1 5DA614DB
P 7150 3400
F 0 "TP8" V 7150 3600 50  0000 L CNN
F 1 "TestPoint" H 7208 3427 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 7350 3400 50  0001 C CNN
F 3 "~" H 7350 3400 50  0001 C CNN
	1    7150 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP7
U 1 1 5DA57C68
P 7000 3400
F 0 "TP7" V 7000 3600 50  0000 L CNN
F 1 "TestPoint" H 7058 3427 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 7200 3400 50  0001 C CNN
F 3 "~" H 7200 3400 50  0001 C CNN
	1    7000 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP6
U 1 1 5DA57006
P 6850 3400
F 0 "TP6" V 6850 3600 50  0000 L CNN
F 1 "TestPoint" H 6908 3427 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 7050 3400 50  0001 C CNN
F 3 "~" H 7050 3400 50  0001 C CNN
	1    6850 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 5DA646D5
P 4000 3300
F 0 "TP1" V 4000 3500 50  0000 L CNN
F 1 "TestPoint" H 4058 3327 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4200 3300 50  0001 C CNN
F 3 "~" H 4200 3300 50  0001 C CNN
	1    4000 3300
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 5DA65166
P 3850 3300
F 0 "TP4" V 3850 3500 50  0000 L CNN
F 1 "TestPoint" H 3908 3327 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4050 3300 50  0001 C CNN
F 3 "~" H 4050 3300 50  0001 C CNN
	1    3850 3300
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 5DA652EB
P 3700 3300
F 0 "TP5" V 3700 3500 50  0000 L CNN
F 1 "TestPoint" H 3758 3327 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 3900 3300 50  0001 C CNN
F 3 "~" H 3900 3300 50  0001 C CNN
	1    3700 3300
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 5DA656B7
P 3550 3300
F 0 "TP3" V 3550 3500 50  0000 L CNN
F 1 "TestPoint" H 3608 3327 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 3750 3300 50  0001 C CNN
F 3 "~" H 3750 3300 50  0001 C CNN
	1    3550 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C1
U 1 1 5DA2B48A
P 5200 2150
F 0 "C1" H 5350 2200 50  0000 L CNN
F 1 "0.1uF" H 5300 2100 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5200 2150 50  0001 C CNN
F 3 "~" H 5200 2150 50  0001 C CNN
	1    5200 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 5DA2BBAB
P 5200 1950
F 0 "#PWR05" H 5200 1800 50  0001 C CNN
F 1 "+3.3V" H 5215 2123 50  0000 C CNN
F 2 "" H 5200 1950 50  0001 C CNN
F 3 "" H 5200 1950 50  0001 C CNN
	1    5200 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5DA2C059
P 5200 2350
F 0 "#PWR06" H 5200 2100 50  0001 C CNN
F 1 "GND" H 5205 2177 50  0000 C CNN
F 2 "" H 5200 2350 50  0001 C CNN
F 3 "" H 5200 2350 50  0001 C CNN
	1    5200 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2350 5200 2300
Wire Wire Line
	5200 2050 5200 2000
$Comp
L Device:CP1_Small C2
U 1 1 5DA61B3C
P 5650 2150
F 0 "C2" H 5800 2200 50  0000 L CNN
F 1 "0.1uF" H 5741 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5650 2150 50  0001 C CNN
F 3 "~" H 5650 2150 50  0001 C CNN
	1    5650 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2050 5650 2000
Wire Wire Line
	5650 2000 5200 2000
Connection ~ 5200 2000
Wire Wire Line
	5200 2000 5200 1950
Wire Wire Line
	5650 2250 5650 2300
Wire Wire Line
	5650 2300 5200 2300
Connection ~ 5200 2300
Wire Wire Line
	5200 2300 5200 2250
$Comp
L Connector:TestPoint TP11
U 1 1 5DA9D15C
P 7600 3400
F 0 "TP11" V 7600 3600 50  0000 L CNN
F 1 "TestPoint" H 7658 3427 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 7800 3400 50  0001 C CNN
F 3 "~" H 7800 3400 50  0001 C CNN
	1    7600 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP12
U 1 1 5DA9C9E5
P 7750 3150
F 0 "TP12" V 7750 3350 50  0000 L CNN
F 1 "TestPoint" H 7808 3177 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 7950 3150 50  0001 C CNN
F 3 "~" H 7950 3150 50  0001 C CNN
	1    7750 3150
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0101
U 1 1 5DAB3ABC
P 7750 3000
F 0 "#PWR0101" H 7750 2850 50  0001 C CNN
F 1 "+3.3V" H 7765 3173 50  0000 C CNN
F 2 "" H 7750 3000 50  0001 C CNN
F 3 "" H 7750 3000 50  0001 C CNN
	1    7750 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5DAB41BD
P 7600 3600
F 0 "#PWR0102" H 7600 3350 50  0001 C CNN
F 1 "GND" H 7605 3427 50  0000 C CNN
F 2 "" H 7600 3600 50  0001 C CNN
F 3 "" H 7600 3600 50  0001 C CNN
	1    7600 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3600 7600 3400
Wire Wire Line
	7750 3150 7750 3000
Wire Notes Line
	6750 2750 6750 3850
Wire Notes Line
	6750 3850 8000 3850
Wire Notes Line
	8000 3850 8000 2750
Wire Notes Line
	8000 2750 6750 2750
Text Notes 6800 2850 0    50   ~ 0
PlayStation
Wire Wire Line
	4000 3450 5200 3450
Wire Wire Line
	5700 3100 5700 3150
Text Label 7600 3550 1    50   ~ 0
VSS
Text Label 7750 3150 1    50   ~ 0
VDD
$Comp
L Device:CP1_Small C3
U 1 1 5DABA497
P 6050 2150
F 0 "C3" H 6200 2200 50  0000 L CNN
F 1 "0.1uF" H 6141 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6050 2150 50  0001 C CNN
F 3 "~" H 6050 2150 50  0001 C CNN
	1    6050 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2050 6050 2000
Wire Wire Line
	6050 2000 5650 2000
Connection ~ 5650 2000
Wire Wire Line
	6050 2250 6050 2300
Wire Wire Line
	6050 2300 5650 2300
Connection ~ 5650 2300
Wire Notes Line
	5050 1700 5050 2600
Wire Notes Line
	5050 2600 6400 2600
Wire Notes Line
	6400 2600 6400 1700
Wire Notes Line
	6400 1700 5050 1700
Text Notes 5500 1800 0    50   ~ 0
* Only install one cap
Wire Wire Line
	7000 3550 7000 3400
Wire Wire Line
	6200 3550 7000 3550
Text Label 6300 3950 0    50   ~ 0
ACK
Wire Wire Line
	5200 3950 4850 3950
Wire Wire Line
	4850 3950 4850 4200
Wire Wire Line
	7450 3950 7450 3400
Wire Wire Line
	6200 3950 7450 3950
$Comp
L Connector:TestPoint TP13
U 1 1 5F04A345
P 4900 4200
F 0 "TP13" V 4900 4400 50  0000 L CNN
F 1 "TestPoint" H 4958 4227 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 5100 4200 50  0001 C CNN
F 3 "~" H 5100 4200 50  0001 C CNN
	1    4900 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 4200 4900 4200
$Comp
L Connector:TestPoint TP14
U 1 1 5F04C808
P 4900 4300
F 0 "TP14" V 4900 4500 50  0000 L CNN
F 1 "TestPoint" H 4958 4327 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 5100 4300 50  0001 C CNN
F 3 "~" H 5100 4300 50  0001 C CNN
	1    4900 4300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F04CAAF
P 4850 4350
F 0 "#PWR?" H 4850 4100 50  0001 C CNN
F 1 "GND" H 4855 4177 50  0000 C CNN
F 2 "" H 4850 4350 50  0001 C CNN
F 3 "" H 4850 4350 50  0001 C CNN
	1    4850 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 4350 4850 4300
Wire Wire Line
	4850 4300 4900 4300
Text Label 5000 3950 0    50   ~ 0
SW
$Comp
L feikController:PIC16F18325-ISL U1
U 1 1 5F0BB55F
P 5700 3750
F 0 "U1" H 5400 4250 50  0000 C CNN
F 1 "PIC16F18325-ISL" H 6050 4250 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5700 2650 50  0001 C CNN
F 3 "" H 5700 3750 50  0001 C CNN
	1    5700 3750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
