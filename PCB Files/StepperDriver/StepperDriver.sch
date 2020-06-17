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
L MCU_Microchip_ATmega:ATmega32U4-AU U1
U 1 1 5ED72168
P 3800 5250
F 0 "U1" H 3800 3361 50  0000 C CNN
F 1 "ATmega32U4-AU" H 3800 3270 50  0000 C CNN
F 2 "Package_QFP:TQFP-44_10x10mm_P0.8mm" H 3800 5250 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-7766-8-bit-AVR-ATmega16U4-32U4_Datasheet.pdf" H 3800 5250 50  0001 C CNN
	1    3800 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5ED730F4
P 1500 3125
F 0 "C3" H 1592 3171 50  0000 L CNN
F 1 "0.1u" H 1592 3080 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1500 3125 50  0001 C CNN
F 3 "~" H 1500 3125 50  0001 C CNN
	1    1500 3125
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5ED7380A
P 1800 3125
F 0 "C4" H 1892 3171 50  0000 L CNN
F 1 "0.1u" H 1892 3080 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1800 3125 50  0001 C CNN
F 3 "~" H 1800 3125 50  0001 C CNN
	1    1800 3125
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5ED73E10
P 2100 3125
F 0 "C5" H 2192 3171 50  0000 L CNN
F 1 "4.7u" H 2192 3080 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2100 3125 50  0001 C CNN
F 3 "~" H 2100 3125 50  0001 C CNN
	1    2100 3125
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5ED743A2
P 1175 3125
F 0 "C2" H 1267 3171 50  0000 L CNN
F 1 "0.1u" H 1267 3080 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1175 3125 50  0001 C CNN
F 3 "~" H 1175 3125 50  0001 C CNN
	1    1175 3125
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5ED74A38
P 850 3125
F 0 "C1" H 942 3171 50  0000 L CNN
F 1 "0.1u" H 942 3080 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 850 3125 50  0001 C CNN
F 3 "~" H 850 3125 50  0001 C CNN
	1    850  3125
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0101
U 1 1 5ED77D9A
P 850 3000
F 0 "#PWR0101" H 850 2850 50  0001 C CNN
F 1 "VCC" H 865 3173 50  0000 C CNN
F 2 "" H 850 3000 50  0001 C CNN
F 3 "" H 850 3000 50  0001 C CNN
	1    850  3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5ED78B5A
P 850 3275
F 0 "#PWR0102" H 850 3025 50  0001 C CNN
F 1 "GND" H 855 3102 50  0000 C CNN
F 2 "" H 850 3275 50  0001 C CNN
F 3 "" H 850 3275 50  0001 C CNN
	1    850  3275
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  3025 1175 3025
Wire Wire Line
	1500 3025 1175 3025
Connection ~ 1175 3025
Wire Wire Line
	1500 3025 1800 3025
Wire Wire Line
	1800 3025 2100 3025
Connection ~ 1500 3025
Connection ~ 1800 3025
Wire Wire Line
	2100 3225 1800 3225
Wire Wire Line
	1800 3225 1500 3225
Connection ~ 1800 3225
Wire Wire Line
	1175 3225 1500 3225
Connection ~ 1500 3225
Wire Wire Line
	1175 3225 850  3225
Connection ~ 1175 3225
Wire Wire Line
	850  3225 850  3275
Connection ~ 850  3225
Wire Wire Line
	850  3025 850  3000
Connection ~ 850  3025
$Comp
L keyboard_parts:XTAL_GND X1
U 1 1 5ED7AA4C
P 1975 4150
F 0 "X1" H 1975 4442 60  0000 C CNN
F 1 "XTAL_GND" H 1975 4336 60  0000 C CNN
F 2 "Crystal:Crystal_SMD_SeikoEpson_FA238-4Pin_3.2x2.5mm_HandSoldering" H 1975 4150 60  0001 C CNN
F 3 "" H 1975 4150 60  0000 C CNN
	1    1975 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5ED7DA26
P 1625 4250
F 0 "C6" H 1717 4296 50  0000 L CNN
F 1 "22p" H 1717 4205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1625 4250 50  0001 C CNN
F 3 "~" H 1625 4250 50  0001 C CNN
	1    1625 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5ED7DA2C
P 2350 4250
F 0 "C7" H 2258 4204 50  0000 R CNN
F 1 "22p" H 2258 4295 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2350 4250 50  0001 C CNN
F 3 "~" H 2350 4250 50  0001 C CNN
	1    2350 4250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5ED7F72C
P 1975 4375
F 0 "#PWR0103" H 1975 4125 50  0001 C CNN
F 1 "GND" H 1980 4202 50  0000 C CNN
F 2 "" H 1975 4375 50  0001 C CNN
F 3 "" H 1975 4375 50  0001 C CNN
	1    1975 4375
	1    0    0    -1  
$EndComp
Wire Wire Line
	2275 4150 2350 4150
Wire Wire Line
	2350 4350 1975 4350
Wire Wire Line
	1975 4375 1975 4350
Connection ~ 1975 4350
Wire Wire Line
	1625 4350 1975 4350
Wire Wire Line
	1625 4150 1675 4150
Wire Wire Line
	2350 4150 3200 4150
Connection ~ 2350 4150
Wire Wire Line
	3200 3950 1625 3950
Connection ~ 1625 4150
Wire Wire Line
	1625 3950 1625 4150
$Comp
L Connector:USB_A J1
U 1 1 5ED8446C
P 1025 4750
F 0 "J1" H 1082 5217 50  0000 C CNN
F 1 "USB_A" H 1082 5126 50  0000 C CNN
F 2 "Connector_USB:USB_A_Molex_67643_Horizontal" H 1175 4700 50  0001 C CNN
F 3 " ~" H 1175 4700 50  0001 C CNN
	1    1025 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1325 4550 1450 4550
$Comp
L power:VCC #PWR0104
U 1 1 5ED882C5
P 1450 4550
F 0 "#PWR0104" H 1450 4400 50  0001 C CNN
F 1 "VCC" H 1465 4723 50  0000 C CNN
F 2 "" H 1450 4550 50  0001 C CNN
F 3 "" H 1450 4550 50  0001 C CNN
	1    1450 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 4550 3200 4550
$Comp
L Device:R R2
U 1 1 5ED88941
P 2850 4750
F 0 "R2" V 2850 4700 50  0000 C CNN
F 1 "22" V 2850 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2780 4750 50  0001 C CNN
F 3 "~" H 2850 4750 50  0001 C CNN
	1    2850 4750
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5ED890E5
P 2850 4850
F 0 "R1" V 2850 4800 50  0000 C CNN
F 1 "22" V 2850 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2780 4850 50  0001 C CNN
F 3 "~" H 2850 4850 50  0001 C CNN
	1    2850 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 4750 3200 4750
Wire Wire Line
	3200 4850 3000 4850
Wire Wire Line
	2700 4750 1325 4750
Wire Wire Line
	2700 4850 1325 4850
$Comp
L Device:C_Small C8
U 1 1 5ED8B304
P 2850 5050
F 0 "C8" V 2900 4975 50  0000 C CNN
F 1 "1u" V 2900 5150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2850 5050 50  0001 C CNN
F 3 "~" H 2850 5050 50  0001 C CNN
	1    2850 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 5050 3200 5050
Wire Wire Line
	2750 5050 1375 5050
Wire Wire Line
	1375 5050 1375 5150
Wire Wire Line
	1375 5150 1025 5150
Wire Wire Line
	1025 5150 925  5150
Connection ~ 1025 5150
$Comp
L power:GND #PWR0105
U 1 1 5ED8E7DB
P 1375 5150
F 0 "#PWR0105" H 1375 4900 50  0001 C CNN
F 1 "GND" H 1380 4977 50  0000 C CNN
F 2 "" H 1375 5150 50  0001 C CNN
F 3 "" H 1375 5150 50  0001 C CNN
	1    1375 5150
	1    0    0    -1  
$EndComp
Connection ~ 1375 5150
$Comp
L Switch:SW_SPST SW1
U 1 1 5ED8EF83
P 2800 3750
F 0 "SW1" H 2700 3850 50  0000 C CNN
F 1 "SW_SPST" H 2800 3650 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 2800 3750 50  0001 C CNN
F 3 "~" H 2800 3750 50  0001 C CNN
	1    2800 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3750 3075 3750
$Comp
L power:GND #PWR0106
U 1 1 5ED904F0
P 2525 3750
F 0 "#PWR0106" H 2525 3500 50  0001 C CNN
F 1 "GND" V 2530 3622 50  0000 R CNN
F 2 "" H 2525 3750 50  0001 C CNN
F 3 "" H 2525 3750 50  0001 C CNN
	1    2525 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 3750 2525 3750
$Comp
L Device:R R3
U 1 1 5ED91311
P 3075 3575
F 0 "R3" H 3145 3621 50  0000 L CNN
F 1 "10K" H 3145 3530 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3005 3575 50  0001 C CNN
F 3 "~" H 3075 3575 50  0001 C CNN
	1    3075 3575
	1    0    0    -1  
$EndComp
Wire Wire Line
	3075 3725 3075 3750
Connection ~ 3075 3750
Wire Wire Line
	3075 3750 3200 3750
$Comp
L power:VCC #PWR0107
U 1 1 5ED9218E
P 3075 3375
F 0 "#PWR0107" H 3075 3225 50  0001 C CNN
F 1 "VCC" H 3090 3548 50  0000 C CNN
F 2 "" H 3075 3375 50  0001 C CNN
F 3 "" H 3075 3375 50  0001 C CNN
	1    3075 3375
	1    0    0    -1  
$EndComp
Wire Wire Line
	3075 3375 3075 3425
$Comp
L Device:R R4
U 1 1 5ED937A4
P 4825 5700
F 0 "R4" V 4900 5650 50  0000 L CNN
F 1 "10K" V 4825 5625 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4755 5700 50  0001 C CNN
F 3 "~" H 4825 5700 50  0001 C CNN
	1    4825 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4825 5850 4950 5850
$Comp
L power:GND #PWR0108
U 1 1 5ED95AB9
P 3700 7375
F 0 "#PWR0108" H 3700 7125 50  0001 C CNN
F 1 "GND" H 3705 7202 50  0000 C CNN
F 2 "" H 3700 7375 50  0001 C CNN
F 3 "" H 3700 7375 50  0001 C CNN
	1    3700 7375
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 7050 3700 7375
Wire Wire Line
	3800 7050 3700 7050
Connection ~ 3700 7050
Wire Wire Line
	3075 3375 3700 3375
Wire Wire Line
	3700 3375 3700 3450
Connection ~ 3075 3375
Wire Wire Line
	3700 3375 3800 3375
Wire Wire Line
	3800 3375 3800 3450
Connection ~ 3700 3375
Wire Wire Line
	3900 3375 3900 3450
Wire Wire Line
	3800 3375 3900 3375
Connection ~ 3800 3375
Connection ~ 1450 4550
$Comp
L Switch:SW_SPST SW2
U 1 1 5EDB4527
P 5150 5850
F 0 "SW2" H 5150 6085 50  0000 C CNN
F 1 "SW_SPST" H 5150 5994 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 5150 5850 50  0001 C CNN
F 3 "~" H 5150 5850 50  0001 C CNN
	1    5150 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5EDB4C19
P 5450 5850
F 0 "#PWR0109" H 5450 5600 50  0001 C CNN
F 1 "GND" V 5455 5722 50  0000 R CNN
F 2 "" H 5450 5850 50  0001 C CNN
F 3 "" H 5450 5850 50  0001 C CNN
	1    5450 5850
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0110
U 1 1 5EDB5136
P 4825 5500
F 0 "#PWR0110" H 4825 5350 50  0001 C CNN
F 1 "VCC" H 4840 5673 50  0000 C CNN
F 2 "" H 4825 5500 50  0001 C CNN
F 3 "" H 4825 5500 50  0001 C CNN
	1    4825 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4825 5500 4825 5550
Wire Wire Line
	4400 5850 4825 5850
Connection ~ 4825 5850
Wire Wire Line
	5450 5850 5350 5850
$Comp
L Driver_Motor:TMC2100-TA U2
U 1 1 5EDB8570
P 6175 3175
F 0 "U2" H 6175 3150 50  0000 C CNN
F 1 "TMC2100-TA" H 6175 3050 50  0000 C CNN
F 2 "Package_QFP:TQFP-48-1EP_7x7mm_P0.5mm_EP5x5mm_ThermalVias" H 6175 2075 50  0001 C CNN
F 3 "https://www.trinamic.com/fileadmin/assets/Products/ICs_Documents/TMC2100_datasheet_Rev1.08.pdf" H 5025 4225 50  0001 C CNN
	1    6175 3175
	1    0    0    -1  
$EndComp
$Comp
L Connector:Jack-DC J2
U 1 1 5EDBA0EC
P 1250 2075
F 0 "J2" H 1307 2400 50  0000 C CNN
F 1 "Jack-DC" H 1307 2309 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 1300 2035 50  0001 C CNN
F 3 "~" H 1300 2035 50  0001 C CNN
	1    1250 2075
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5EDBB9FB
P 1350 1525
F 0 "J3" H 1458 1706 50  0000 C CNN
F 1 "XT-60" H 1458 1615 50  0000 C CNN
F 2 "TestPoint:TestPoint_2Pads_Pitch5.08mm_Drill1.3mm" H 1350 1525 50  0001 C CNN
F 3 "~" H 1350 1525 50  0001 C CNN
	1    1350 1525
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 5EDBDA79
P 1350 1100
F 0 "J4" H 1268 775 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 1268 866 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_Altech_AK300-2_P5.00mm" H 1350 1100 50  0001 C CNN
F 3 "~" H 1350 1100 50  0001 C CNN
	1    1350 1100
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 2175 1650 2175
Wire Wire Line
	1650 2175 1650 1625
Wire Wire Line
	1650 1625 1550 1625
Wire Wire Line
	1650 1625 1650 1100
Wire Wire Line
	1650 1100 1550 1100
Connection ~ 1650 1625
Wire Wire Line
	1550 1975 1750 1975
Wire Wire Line
	1750 1975 1750 1525
Wire Wire Line
	1750 1525 1550 1525
Wire Wire Line
	1750 1525 1750 1125
Wire Wire Line
	1750 1000 1550 1000
Connection ~ 1750 1525
$Comp
L power:GND #PWR0111
U 1 1 5EDC3B30
P 1650 2175
F 0 "#PWR0111" H 1650 1925 50  0001 C CNN
F 1 "GND" H 1655 2002 50  0000 C CNN
F 2 "" H 1650 2175 50  0001 C CNN
F 3 "" H 1650 2175 50  0001 C CNN
	1    1650 2175
	1    0    0    -1  
$EndComp
Connection ~ 1650 2175
Text Label 1750 1000 0    50   ~ 0
VM
$Comp
L Device:C_Small C15
U 1 1 5EDC5E51
P 5425 2075
F 0 "C15" H 5517 2121 50  0000 L CNN
F 1 "100n/50V" H 5517 2030 50  0000 L CNN
F 2 "Capacitor_SMD:C_2010_5025Metric_Pad1.52x2.65mm_HandSolder" H 5425 2075 50  0001 C CNN
F 3 "~" H 5425 2075 50  0001 C CNN
	1    5425 2075
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5EDC79B2
P 5425 1875
F 0 "#PWR0112" H 5425 1625 50  0001 C CNN
F 1 "GND" H 5430 1702 50  0000 C CNN
F 2 "" H 5425 1875 50  0001 C CNN
F 3 "" H 5425 1875 50  0001 C CNN
	1    5425 1875
	-1   0    0    1   
$EndComp
Text Label 5225 2175 0    50   ~ 0
VM
Wire Wire Line
	5425 2175 5750 2175
Wire Wire Line
	5425 1875 5425 1975
Wire Wire Line
	5425 2175 5225 2175
Connection ~ 5425 2175
Wire Wire Line
	5975 2175 6075 2175
$Comp
L Device:C_Small C10
U 1 1 5EDD1664
P 5975 1800
F 0 "C10" V 6150 1750 50  0000 L CNN
F 1 "100n/50V" V 6067 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_2010_5025Metric_Pad1.52x2.65mm_HandSolder" H 5975 1800 50  0001 C CNN
F 3 "~" H 5975 1800 50  0001 C CNN
	1    5975 1800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5775 1800 5875 1800
$Comp
L Device:C_Small C9
U 1 1 5EDD3B8D
P 5975 1500
F 0 "C9" V 6204 1500 50  0000 C CNN
F 1 "1u/50V" V 6113 1500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5975 1500 50  0001 C CNN
F 3 "~" H 5975 1500 50  0001 C CNN
	1    5975 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5775 1500 5875 1500
Wire Wire Line
	5775 1800 5775 1875
Wire Wire Line
	5775 1875 5425 1875
Connection ~ 5775 1800
Connection ~ 5425 1875
Connection ~ 6075 2175
Connection ~ 6075 1800
Wire Wire Line
	6075 1800 6075 2100
Wire Wire Line
	6075 1500 6075 1800
Wire Wire Line
	5775 1500 5775 1800
$Comp
L Device:C_Small C11
U 1 1 5EDE352C
P 6075 1175
F 0 "C11" V 6250 1125 50  0000 L CNN
F 1 "100n/50V" V 6167 1130 50  0000 L CNN
F 2 "Capacitor_SMD:C_2010_5025Metric_Pad1.52x2.65mm_HandSolder" H 6075 1175 50  0001 C CNN
F 3 "~" H 6075 1175 50  0001 C CNN
	1    6075 1175
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5775 1175 5775 1500
Wire Wire Line
	5775 1175 5975 1175
Connection ~ 5775 1500
$Comp
L power:VCC #PWR0113
U 1 1 5EDE8D42
P 6175 1025
F 0 "#PWR0113" H 6175 875 50  0001 C CNN
F 1 "VCC" H 6190 1198 50  0000 C CNN
F 2 "" H 6175 1025 50  0001 C CNN
F 3 "" H 6175 1025 50  0001 C CNN
	1    6175 1025
	1    0    0    -1  
$EndComp
Wire Wire Line
	6175 1025 6175 1175
Connection ~ 6175 1175
Wire Wire Line
	6175 1175 6175 2175
Wire Wire Line
	5750 2175 5750 2100
Wire Wire Line
	5750 2100 6075 2100
Wire Wire Line
	6475 2100 6475 2175
Connection ~ 5750 2175
Wire Wire Line
	5750 2175 5875 2175
$Comp
L Device:C_Small C13
U 1 1 5EDECF49
P 6875 1100
F 0 "C13" V 7000 1100 50  0000 C CNN
F 1 "470n/10V" V 7075 1225 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6875 1100 50  0001 C CNN
F 3 "~" H 6875 1100 50  0001 C CNN
	1    6875 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5EDEE171
P 6575 1000
F 0 "#PWR0114" H 6575 750 50  0001 C CNN
F 1 "GND" H 6580 827 50  0000 C CNN
F 2 "" H 6575 1000 50  0001 C CNN
F 3 "" H 6575 1000 50  0001 C CNN
	1    6575 1000
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR0115
U 1 1 5EDEED53
P 6375 1025
F 0 "#PWR0115" H 6375 875 50  0001 C CNN
F 1 "VCC" H 6390 1198 50  0000 C CNN
F 2 "" H 6375 1025 50  0001 C CNN
F 3 "" H 6375 1025 50  0001 C CNN
	1    6375 1025
	1    0    0    -1  
$EndComp
Wire Wire Line
	6375 2175 6375 1475
$Comp
L Device:C_Small C12
U 1 1 5EDF3501
P 6475 1175
F 0 "C12" V 6300 1175 50  0000 C CNN
F 1 "4.7u/10V" V 6375 1325 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6475 1175 50  0001 C CNN
F 3 "~" H 6475 1175 50  0001 C CNN
	1    6475 1175
	0    1    1    0   
$EndComp
Wire Wire Line
	6575 1000 6575 1175
$Comp
L Device:R R5
U 1 1 5EDF7F1B
P 6525 1475
F 0 "R5" V 6318 1475 50  0000 C CNN
F 1 "2.2" V 6409 1475 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6455 1475 50  0001 C CNN
F 3 "~" H 6525 1475 50  0001 C CNN
	1    6525 1475
	0    1    1    0   
$EndComp
Connection ~ 6375 1475
Wire Wire Line
	6375 1475 6375 1175
Wire Wire Line
	6675 1475 6875 1475
Wire Wire Line
	6875 1475 6875 1200
Wire Wire Line
	6875 1000 6575 1000
Connection ~ 6575 1000
Wire Wire Line
	6875 1475 6875 1600
Wire Wire Line
	6875 1600 6275 1600
Wire Wire Line
	6275 1600 6275 2175
Connection ~ 6875 1475
Wire Wire Line
	6375 4175 6275 4175
Wire Wire Line
	6175 4175 6275 4175
Connection ~ 6275 4175
$Comp
L power:GND #PWR0116
U 1 1 5EE07C9C
P 6275 4250
F 0 "#PWR0116" H 6275 4000 50  0001 C CNN
F 1 "GND" H 6280 4077 50  0000 C CNN
F 2 "" H 6275 4250 50  0001 C CNN
F 3 "" H 6275 4250 50  0001 C CNN
	1    6275 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6275 4175 6275 4250
$Comp
L power:GND #PWR0117
U 1 1 5EE0A144
P 5450 2775
F 0 "#PWR0117" H 5450 2525 50  0001 C CNN
F 1 "GND" V 5455 2647 50  0000 R CNN
F 2 "" H 5450 2775 50  0001 C CNN
F 3 "" H 5450 2775 50  0001 C CNN
	1    5450 2775
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 2775 5575 2775
Wire Wire Line
	5575 3975 5575 4175
Wire Wire Line
	5575 4175 6175 4175
Connection ~ 6175 4175
$Comp
L Device:C_Small C14
U 1 1 5EE29CD3
P 6875 3825
F 0 "C14" H 6967 3871 50  0000 L CNN
F 1 "22n/50V" H 6967 3780 50  0000 L CNN
F 2 "Capacitor_SMD:C_2010_5025Metric_Pad1.52x2.65mm_HandSolder" H 6875 3825 50  0001 C CNN
F 3 "~" H 6875 3825 50  0001 C CNN
	1    6875 3825
	1    0    0    -1  
$EndComp
Wire Wire Line
	6775 3875 6775 3925
Wire Wire Line
	6775 3925 6875 3925
Wire Wire Line
	6875 3725 6775 3725
Wire Wire Line
	6775 3725 6775 3775
$Comp
L Device:R R6
U 1 1 5EE30AD2
P 7450 3825
F 0 "R6" H 7520 3871 50  0000 L CNN
F 1 "180M" H 7520 3780 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7380 3825 50  0001 C CNN
F 3 "~" H 7450 3825 50  0001 C CNN
	1    7450 3825
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5EE315C5
P 7800 3825
F 0 "R7" H 7870 3871 50  0000 L CNN
F 1 "180M" H 7870 3780 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7730 3825 50  0001 C CNN
F 3 "~" H 7800 3825 50  0001 C CNN
	1    7800 3825
	1    0    0    -1  
$EndComp
Wire Wire Line
	6775 3375 7450 3375
Wire Wire Line
	7450 3375 7450 3675
Wire Wire Line
	6775 3075 7800 3075
Wire Wire Line
	7800 3075 7800 3675
Wire Wire Line
	7800 3975 7450 3975
$Comp
L power:GND #PWR0118
U 1 1 5EE3B6E6
P 7450 4175
F 0 "#PWR0118" H 7450 3925 50  0001 C CNN
F 1 "GND" H 7455 4002 50  0000 C CNN
F 2 "" H 7450 4175 50  0001 C CNN
F 3 "" H 7450 4175 50  0001 C CNN
	1    7450 4175
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3975 7450 4175
Connection ~ 7450 3975
Connection ~ 6375 1175
Wire Wire Line
	6375 1175 6375 1025
$Comp
L Connector_Generic:Conn_01x04 J5
U 1 1 5EE4911A
P 8300 2975
F 0 "J5" H 8388 2889 50  0000 L CNN
F 1 "JST-XH Stepper Connection" H 8388 2798 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 8300 2975 50  0001 C CNN
F 3 "~" H 8300 2975 50  0001 C CNN
	1    8300 2975
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2975 6775 2975
Wire Wire Line
	6775 2875 8100 2875
Wire Wire Line
	6775 3475 7925 3475
Wire Wire Line
	7925 3475 7925 3075
Wire Wire Line
	7925 3075 8100 3075
Wire Wire Line
	8050 3575 8050 3175
Wire Wire Line
	8050 3175 8100 3175
Wire Wire Line
	6775 3575 8050 3575
Text GLabel 1750 1725 2    50   Input ~ 0
12V
Wire Wire Line
	6075 2175 6075 2100
Connection ~ 6075 2100
Wire Wire Line
	6075 2100 6475 2100
Text GLabel 6775 2575 2    50   Input ~ 0
ERROR
Text GLabel 6775 2675 2    50   Input ~ 0
INDEX
$Comp
L Regulator_Linear:LM7805_TO220 U3
U 1 1 5EE207D3
P 3250 1125
F 0 "U3" H 3250 1367 50  0000 C CNN
F 1 "LM7805_TO220" H 3250 1276 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 3250 1350 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/ds/LM/LM7805.pdf" H 3250 1075 50  0001 C CNN
	1    3250 1125
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D1
U 1 1 5EE22DC1
P 2500 1125
F 0 "D1" H 2500 908 50  0000 C CNN
F 1 "1N4007" H 2500 999 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2500 950 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 2500 1125 50  0001 C CNN
	1    2500 1125
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C16
U 1 1 5EE23EEA
P 2700 1275
F 0 "C16" H 2792 1321 50  0000 L CNN
F 1 "470uF" H 2792 1230 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 2700 1275 50  0001 C CNN
F 3 "~" H 2700 1275 50  0001 C CNN
	1    2700 1275
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C17
U 1 1 5EE2484D
P 3625 1275
F 0 "C17" H 3717 1321 50  0000 L CNN
F 1 "1uF" H 3717 1230 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 3625 1275 50  0001 C CNN
F 3 "~" H 3625 1275 50  0001 C CNN
	1    3625 1275
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1125 2700 1125
Wire Wire Line
	2700 1125 2700 1175
Connection ~ 2700 1125
Wire Wire Line
	2700 1125 2650 1125
Wire Wire Line
	3250 1425 2700 1425
Wire Wire Line
	2700 1425 2700 1375
Wire Wire Line
	3250 1425 3625 1425
Wire Wire Line
	3625 1425 3625 1375
Connection ~ 3250 1425
Wire Wire Line
	3550 1125 3625 1125
Wire Wire Line
	3625 1125 3625 1175
$Comp
L power:VCC #PWR0119
U 1 1 5EE400C0
P 3625 1125
F 0 "#PWR0119" H 3625 975 50  0001 C CNN
F 1 "VCC" H 3640 1298 50  0000 C CNN
F 2 "" H 3625 1125 50  0001 C CNN
F 3 "" H 3625 1125 50  0001 C CNN
	1    3625 1125
	1    0    0    -1  
$EndComp
Connection ~ 3625 1125
Wire Wire Line
	2350 1125 1750 1125
Connection ~ 1750 1125
Wire Wire Line
	1750 1125 1750 1000
$Comp
L power:GND #PWR0120
U 1 1 5EE46218
P 3250 1425
F 0 "#PWR0120" H 3250 1175 50  0001 C CNN
F 1 "GND" H 3255 1252 50  0000 C CNN
F 2 "" H 3250 1425 50  0001 C CNN
F 3 "" H 3250 1425 50  0001 C CNN
	1    3250 1425
	1    0    0    -1  
$EndComp
Text GLabel 4400 6350 2    50   Input ~ 0
CGF0
Text GLabel 4400 6450 2    50   Input ~ 0
CGF1
Text GLabel 4400 6550 2    50   Input ~ 0
CGF2
Text GLabel 4400 6650 2    50   Input ~ 0
CGF3
Text GLabel 4400 5550 2    50   Input ~ 0
CGF4
Text GLabel 4400 5650 2    50   Input ~ 0
CGF5
Text GLabel 4400 4350 2    50   Input ~ 0
CGF6
Text GLabel 4400 6250 2    50   Input ~ 0
STEP
Text GLabel 4400 6150 2    50   Input ~ 0
DIR
Text GLabel 5575 3275 0    50   Input ~ 0
CGF0
Text GLabel 5575 3375 0    50   Input ~ 0
CGF1
Text GLabel 5575 3475 0    50   Input ~ 0
CGF2
Text GLabel 5575 3575 0    50   Input ~ 0
CGF3
Text GLabel 5575 3675 0    50   Input ~ 0
CGF4
Text GLabel 5575 3775 0    50   Input ~ 0
CGF5
Text GLabel 5575 2675 0    50   Input ~ 0
CGF6
Text GLabel 5575 2975 0    50   Input ~ 0
STEP
Text GLabel 5575 3075 0    50   Input ~ 0
DIR
Text GLabel 4400 5150 2    50   Input ~ 0
INDEX
Text GLabel 4400 5250 2    50   Input ~ 0
ERROR
$EndSCHEMATC
