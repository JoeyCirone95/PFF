EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
EELAYER 25 0
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
L LM741 U1
U 1 1 58BB3184
P 5900 4150
F 0 "U1" H 5900 4400 50  0000 L CNN
F 1 "LM741" H 5900 4300 50  0000 L CNN
F 2 "" H 5950 4200 50  0000 C CNN
F 3 "" H 6050 4300 50  0000 C CNN
	1    5900 4150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR01
U 1 1 58BB32E8
P 5800 3850
F 0 "#PWR01" H 5800 3700 50  0001 C CNN
F 1 "VCC" H 5800 4000 50  0000 C CNN
F 2 "" H 5800 3850 50  0000 C CNN
F 3 "" H 5800 3850 50  0000 C CNN
	1    5800 3850
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 58BB3339
P 5800 4450
F 0 "#PWR02" H 5800 4300 50  0001 C CNN
F 1 "VCC" H 5800 4600 50  0000 C CNN
F 2 "" H 5800 4450 50  0000 C CNN
F 3 "" H 5800 4450 50  0000 C CNN
	1    5800 4450
	-1   0    0    1   
$EndComp
Text Label 5700 4750 0    60   ~ 0
-5V
Text Label 5700 3650 0    60   ~ 0
+5V
$Comp
L R_Variable R1
U 1 1 58BB33D4
P 4900 4050
F 0 "R1" V 5000 3950 50  0000 L CNN
F 1 "0 - 10k" V 4800 4000 50  0000 L CNN
F 2 "" V 4830 4050 50  0000 C CNN
F 3 "" H 4900 4050 50  0000 C CNN
	1    4900 4050
	0    1    1    0   
$EndComp
$Comp
L C C1
U 1 1 58BB3425
P 5050 4400
F 0 "C1" H 5075 4500 50  0000 L CNN
F 1 ".15uF" H 5075 4300 50  0000 L CNN
F 2 "" H 5088 4250 50  0000 C CNN
F 3 "" H 5050 4400 50  0000 C CNN
	1    5050 4400
	1    0    0    -1  
$EndComp
Text GLabel 4450 3950 0    60   Input ~ 0
Input(0-2.0V)
Text GLabel 6600 4150 2    60   Input ~ 0
Output(0-5.0V)
$Comp
L Earth #PWR03
U 1 1 58BB34D1
P 5050 4550
F 0 "#PWR03" H 5050 4300 50  0001 C CNN
F 1 "Earth" H 5050 4400 50  0001 C CNN
F 2 "" H 5050 4550 50  0000 C CNN
F 3 "" H 5050 4550 50  0000 C CNN
	1    5050 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4050 5050 4250
Wire Wire Line
	4450 3950 4600 3950
Wire Wire Line
	4600 3950 4600 4050
Wire Wire Line
	4600 4050 4750 4050
Wire Wire Line
	6200 4150 6600 4150
Wire Wire Line
	5050 4050 5600 4050
Wire Wire Line
	5600 4800 6100 4800
Wire Wire Line
	5850 4800 5850 4900
Wire Wire Line
	5600 4800 5600 4250
Connection ~ 5850 4800
Wire Wire Line
	6400 4800 6400 4150
Wire Wire Line
	6400 4150 6450 4150
Connection ~ 6450 4150
$Comp
L Earth #PWR04
U 1 1 58BB393C
P 5850 5200
F 0 "#PWR04" H 5850 4950 50  0001 C CNN
F 1 "Earth" H 5850 5050 50  0001 C CNN
F 2 "" H 5850 5200 50  0000 C CNN
F 3 "" H 5850 5200 50  0000 C CNN
	1    5850 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4550 5400 4550
Wire Wire Line
	5400 4550 5400 5200
Wire Wire Line
	5400 5200 5850 5200
Text GLabel 6000 4450 3    60   Input ~ 0
NC
Text GLabel 5900 4450 3    60   Input ~ 0
NC
Text Notes 4350 4850 0    39   ~ 0
Common Ground (No Ground Loop)
Text Notes 6200 5050 0    39   ~ 0
Gain = (1 + R3/R2)
Text Notes 4750 3800 0    39   ~ 0
Fc = 1/(2piR1C)
$Comp
L R R2
U 1 1 58BB3530
P 5850 5050
F 0 "R2" V 5930 5050 50  0000 C CNN
F 1 "2.5k" V 5850 5050 50  0000 C CNN
F 2 "" V 5780 5050 50  0000 C CNN
F 3 "" H 5850 5050 50  0000 C CNN
	1    5850 5050
	1    0    0    -1  
$EndComp
$Comp
L R_Variable R3
U 1 1 58BB34F5
P 6250 4800
F 0 "R3" V 6350 4700 50  0000 L CNN
F 1 "0 - 10k" V 6150 4750 50  0000 L CNN
F 2 "" V 6180 4800 50  0000 C CNN
F 3 "" H 6250 4800 50  0000 C CNN
	1    6250 4800
	0    1    1    0   
$EndComp
Text Notes 3700 3850 0    39   ~ 0
Assume Average Input is 1V
Text Notes 4400 3700 0    39   ~ 0
Assume cutoff range from 100Hz to 1kHz
$EndSCHEMATC
