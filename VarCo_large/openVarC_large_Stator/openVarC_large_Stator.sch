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
L Mechanical:MountingHole_Pad H1
U 1 1 61844636
P 2550 3000
F 0 "H1" V 2787 3003 50  0000 C CNN
F 1 "MountingHole_Pad" V 2696 3003 50  0000 C CNN
F 2 "MountingHole:MountingHole_5.3mm_M5_ISO7380_Pad_TopBottom" H 2550 3000 50  0001 C CNN
F 3 "~" H 2550 3000 50  0001 C CNN
	1    2550 3000
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 61844B24
P 2550 3500
F 0 "H2" V 2787 3503 50  0000 C CNN
F 1 "MountingHole_Pad" V 2696 3503 50  0000 C CNN
F 2 "MountingHole:MountingHole_5.3mm_M5_ISO7380_Pad_TopBottom" H 2550 3500 50  0001 C CNN
F 3 "~" H 2550 3500 50  0001 C CNN
	1    2550 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2650 3000 3200 3000
Wire Wire Line
	3200 3000 3200 3500
Wire Wire Line
	3200 3500 2650 3500
Text Label 2950 3000 0    50   ~ 0
Side_A
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 61844E25
P 4300 3000
F 0 "H3" V 4254 3150 50  0000 L CNN
F 1 "MountingHole_Pad" V 4345 3150 50  0000 L CNN
F 2 "MountingHole:MountingHole_5.3mm_M5_ISO7380_Pad_TopBottom" H 4300 3000 50  0001 C CNN
F 3 "~" H 4300 3000 50  0001 C CNN
	1    4300 3000
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 6184504D
P 4300 3500
F 0 "H4" V 4254 3650 50  0000 L CNN
F 1 "MountingHole_Pad" V 4345 3650 50  0000 L CNN
F 2 "MountingHole:MountingHole_5.3mm_M5_ISO7380_Pad_TopBottom" H 4300 3500 50  0001 C CNN
F 3 "~" H 4300 3500 50  0001 C CNN
	1    4300 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 3000 3650 3000
Wire Wire Line
	3650 3000 3650 3500
Wire Wire Line
	3650 3500 4200 3500
Text Label 3750 3000 0    50   ~ 0
Side_B
$EndSCHEMATC
