EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Open VarC large"
Date "2022-02-21"
Rev "1.0"
Comp "by OE6AHF"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	5350 4250 5400 4250
Wire Wire Line
	5950 4250 5950 4100
Text Label 5550 4250 0    50   ~ 0
Plate
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 61862E6B
P 5400 4350
F 0 "H2" H 5300 4307 50  0000 R CNN
F 1 "MountingHole_Pad" H 5300 4398 50  0000 R CNN
F 2 "TestPoint:TestPoint_THTPad_2.0x2.0mm_Drill1.0mm" H 5400 4350 50  0001 C CNN
F 3 "~" H 5400 4350 50  0001 C CNN
	1    5400 4350
	-1   0    0    1   
$EndComp
Connection ~ 5400 4250
Wire Wire Line
	5400 4250 5900 4250
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 61863631
P 5900 4350
F 0 "H3" H 5800 4307 50  0000 R CNN
F 1 "MountingHole_Pad" H 5800 4398 50  0000 R CNN
F 2 "TestPoint:TestPoint_THTPad_2.0x2.0mm_Drill1.0mm" H 5900 4350 50  0001 C CNN
F 3 "~" H 5900 4350 50  0001 C CNN
	1    5900 4350
	-1   0    0    1   
$EndComp
Connection ~ 5900 4250
Wire Wire Line
	5900 4250 5950 4250
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 618637A6
P 6050 4100
F 0 "H4" V 6004 4250 50  0000 L CNN
F 1 "MountingHole_Pad" V 6095 4250 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_2.0x2.0mm_Drill1.0mm" H 6050 4100 50  0001 C CNN
F 3 "~" H 6050 4100 50  0001 C CNN
	1    6050 4100
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 61863CAF
P 5250 4100
F 0 "H1" V 5487 4103 50  0000 C CNN
F 1 "MountingHole_Pad" V 5396 4103 50  0000 C CNN
F 2 "TestPoint:TestPoint_THTPad_2.0x2.0mm_Drill1.0mm" H 5250 4100 50  0001 C CNN
F 3 "~" H 5250 4100 50  0001 C CNN
	1    5250 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5350 4100 5350 4250
$EndSCHEMATC
