v 20130925 2
C 60400 39200 1 0 0 ATMega32U4-AU.sym
{
T 64300 50200 5 10 1 1 0 6 1
refdes=AVR
T 60800 50400 5 10 0 0 0 0 1
device=ATMEGA32U4-AU
T 60800 50600 5 10 0 0 0 0 1
footprint=TQFP44_10
T 60400 39200 5 10 0 0 0 0 1
value=-
T 60400 39200 5 10 0 0 0 0 1
description=$6.04 MOUSER 556-ATMEGA32U4-AU
}
C 60500 49500 1 90 0 vcc-1.sym
C 59600 48700 1 90 0 vcc-1.sym
C 59500 48500 1 270 0 resistor-1.sym
{
T 59900 48200 5 10 0 0 270 0 1
device=RESISTOR
T 59600 48300 5 10 1 1 270 0 1
refdes=Rm1
T 59400 48400 5 10 1 1 270 0 1
value=1M
T 59500 48500 5 10 0 0 180 0 1
footprint=0402
T 59500 48500 5 10 0 0 180 0 1
description=$0.14 MOUSER 594-MCS04020C1004FE0
}
C 58900 48500 1 270 0 crystal-1.sym
{
T 59400 48300 5 10 0 0 270 0 1
device=CRYSTAL
T 59200 48300 5 10 1 1 270 0 1
refdes=Um1
T 59600 48300 5 10 0 0 270 0 1
symversion=0.1
T 58800 48600 5 10 1 1 270 0 1
value=16MHz
T 58900 48500 5 10 0 1 180 0 1
description=$0.39 MOUSER ABL-16.000MHZ-B2
T 58900 48500 5 10 0 0 180 0 1
footprint=ACY200
}
N 59000 48500 60500 48500 4
N 59000 47600 59900 47600 4
N 59000 47600 59000 47800 4
N 60500 48100 59900 48100 4
N 59900 48100 59900 47600 4
C 58400 47000 1 270 0 gnd-1.sym
N 59600 46900 59600 46700 4
N 59600 46700 61400 46700 4
N 61400 46700 61400 49300 4
N 61400 49300 60500 49300 4
N 62000 44200 62000 44900 4
N 62000 44900 60500 44900 4
C 60500 42700 1 90 0 vcc-1.sym
N 60500 46100 60500 45300 4
N 61500 44500 61500 49700 4
N 61500 49700 60500 49700 4
N 60500 47700 60500 47300 4
N 61500 46500 60500 46500 4
N 61500 44500 60500 44500 4
N 60500 47300 57000 47300 4
C 56100 47100 1 90 0 vcc-1.sym
C 60500 43100 1 90 0 vee-1.sym
C 60200 45400 1 270 0 gnd-1.sym
C 57200 46400 1 90 0 capacitor-1.sym
{
T 56500 46600 5 10 0 0 90 0 1
device=CAPACITOR
T 56900 46600 5 10 1 1 90 0 1
refdes=Ca4
T 56300 46600 5 10 0 0 90 0 1
symversion=0.1
T 57000 46600 5 10 1 1 0 0 1
value=4.7u
T 57200 46400 5 10 0 0 0 0 1
description=$0.13 MOUSER 80-C0603C475K9P
T 57200 46400 5 10 0 0 0 0 1
footprint=0603
}
C 56900 46100 1 0 0 gnd-1.sym
N 62000 43300 60500 43300 4
C 59600 44000 1 0 0 resistor-1.sym
{
T 59900 44400 5 10 0 0 0 0 1
device=RESISTOR
T 59800 44100 5 10 1 1 0 0 1
refdes=Ru2
T 59600 44000 5 10 1 1 0 0 1
value=22
T 59600 44000 5 10 0 0 0 0 1
description=$0.52 MOUSER 71-TNPW080522R1BEEA
T 59600 44000 5 10 0 0 0 0 1
footprint=0805
}
C 59600 43600 1 0 0 resistor-1.sym
{
T 59900 44000 5 10 0 0 0 0 1
device=RESISTOR
T 59800 43700 5 10 1 1 0 0 1
refdes=Ru1
T 59600 43600 5 10 1 1 0 0 1
value=22
T 59600 43600 5 10 0 0 0 0 1
footprint=0805
T 59600 43600 5 10 0 0 0 0 1
description=$0.52 MOUSER 71-TNPW080522R1BEEA
}
C 59400 43200 1 90 0 resistor-2.sym
{
T 59050 43600 5 10 0 0 90 0 1
device=ESD_Suppressor
T 59300 43400 5 10 1 1 90 0 1
refdes=Uu2
T 59400 43200 5 10 0 0 0 0 1
description=$0.13 MOUSER 652-CG0603MLC-05E
T 59400 43200 5 10 0 0 0 0 1
footprint=0603
T 59400 43200 5 10 0 0 0 0 1
value=-
}
C 59700 42800 1 90 0 resistor-2.sym
{
T 59350 43200 5 10 0 0 90 0 1
device=ESD_Suppressor
T 59600 43000 5 10 1 1 90 0 1
refdes=Uu1
T 59700 42800 5 10 0 0 0 0 1
description=$0.13 MOUSER 652-CG0603MLC-05E
T 59700 42800 5 10 0 0 0 0 1
footprint=0603
T 59700 42800 5 10 0 0 0 0 1
value=-
}
N 58500 44100 59600 44100 4
C 59500 42500 1 0 0 gnd-1.sym
N 59300 43200 59300 42800 4
N 59300 42800 59600 42800 4
C 52000 41300 1 270 0 vee-1.sym
N 59600 43700 59000 43700 4
N 59000 43700 59000 41400 4
N 59000 41400 51500 41400 4
N 51500 41700 58500 41700 4
N 58500 41700 58500 44100 4
C 62200 43300 1 90 0 capacitor-1.sym
{
T 61500 43500 5 10 0 0 90 0 1
device=CAPACITOR
T 61900 43500 5 10 1 1 90 0 1
refdes=Cu1
T 61300 43500 5 10 0 0 90 0 1
symversion=0.1
T 62000 43500 5 10 1 1 0 0 1
value=4.7u
T 62200 43300 5 10 0 0 0 0 1
description=$0.13 MOUSER 80-C0603C475K9P
T 62200 43300 5 10 0 0 0 0 1
footprint=0603
}
C 59600 46700 1 0 0 capacitor-1.sym
{
T 59800 47400 5 10 0 0 0 0 1
device=CAPACITOR
T 59700 46900 5 10 1 1 0 0 1
refdes=Ca2
T 59800 47600 5 10 0 0 0 0 1
symversion=0.1
T 59600 46700 5 10 1 1 0 0 1
value=0.1u
T 59600 46700 5 10 0 0 270 0 1
description=$0.10 MOUSER 80-C0402C104K8R
T 59600 46700 5 10 0 0 270 0 1
footprint=0402
}
C 64600 39600 1 0 0 led-2.sym
{
T 64800 39800 5 10 1 1 0 0 1
refdes=LED
T 64700 40200 5 10 0 0 0 0 1
device=LED
T 64600 39600 5 10 0 0 0 0 1
footprint=0402
T 64600 39600 5 10 0 0 0 0 1
value=-
T 64600 39600 5 10 0 0 0 0 1
description=$0.09 MOUSER 78-VLMG1500-GS08
}
C 66400 39900 1 270 0 vee-1.sym
C 58100 48300 1 90 0 vee-1.sym
C 58100 47600 1 90 0 vee-1.sym
C 58200 46400 1 90 0 capacitor-1.sym
{
T 57500 46600 5 10 0 0 90 0 1
device=CAPACITOR
T 58000 46500 5 10 1 1 90 0 1
refdes=Ca3
T 57300 46600 5 10 0 0 90 0 1
symversion=0.1
T 58200 46400 5 10 1 1 90 0 1
value=0.1u
T 58200 46400 5 10 0 0 0 0 1
description=$0.10 MOUSER 80-C0402C104K8R
T 58200 46400 5 10 0 0 0 0 1
footprint=0402
}
C 57900 46100 1 0 0 gnd-1.sym
C 58100 48300 1 0 0 capacitor-1.sym
{
T 58300 49000 5 10 0 0 0 0 1
device=CAPACITOR
T 58300 48600 5 10 1 1 0 0 1
refdes=Cm2
T 58300 49200 5 10 0 0 0 0 1
symversion=0.1
T 58100 48300 5 10 1 1 0 0 1
value=22p
T 58100 48300 5 10 0 0 0 0 1
footprint=0402
T 58100 48300 5 10 0 0 0 0 1
description=$0.10 MOUSER 80-C0402C220J5G
}
C 58100 47600 1 0 0 capacitor-1.sym
{
T 58300 48300 5 10 0 0 0 0 1
device=CAPACITOR
T 58300 47900 5 10 1 1 0 0 1
refdes=Cm1
T 58300 48500 5 10 0 0 0 0 1
symversion=0.1
T 58100 47600 5 10 1 1 0 0 1
value=22p
T 58100 47600 5 10 0 0 0 0 1
footprint=0402
T 58100 47600 5 10 0 0 0 0 1
description=$0.10 MOUSER 80-C0402C220J5G
}
C 51900 41100 1 270 0 inductor-1.sym
{
T 52400 40900 5 10 0 0 270 0 1
device=INDUCTOR
T 52100 40900 5 10 1 1 270 0 1
refdes=La1
T 52600 40900 5 10 0 0 270 0 1
symversion=0.1
T 51900 41100 5 10 1 1 270 0 1
value=4.7uH
T 51900 41100 5 10 0 0 270 0 1
description=$0.12 MOUSER 70-ILSB0603ER4R7K
T 51900 41100 5 10 0 0 270 0 1
footprint=0603
}
C 56100 47200 1 0 0 inductor-1.sym
{
T 56300 47700 5 10 0 0 0 0 1
device=INDUCTOR
T 56300 47400 5 10 1 1 0 0 1
refdes=La4
T 56300 47900 5 10 0 0 0 0 1
symversion=0.1
T 56100 47200 5 10 1 1 0 0 1
value=4.7uH
T 56100 47200 5 10 0 0 0 0 1
description=$0.12 MOUSER 70-ILSB0603ER4R7K
T 56100 47200 5 10 0 0 0 0 1
footprint=0603
}
C 58700 46800 1 0 0 inductor-1.sym
{
T 58900 47300 5 10 0 0 0 0 1
device=INDUCTOR
T 58900 47000 5 10 1 1 0 0 1
refdes=La3
T 58900 47500 5 10 0 0 0 0 1
symversion=0.1
T 58700 46800 5 10 1 1 0 0 1
value=4.7uH
T 58700 46800 5 10 0 0 0 0 1
description=$0.12 MOUSER 70-ILSB0603ER4R7K
T 58700 46800 5 10 0 0 0 0 1
footprint=0603
}
C 49800 40600 1 0 0 connector5-1.sym
{
T 49900 42300 5 10 1 1 0 0 1
refdes=USB
T 51600 42100 5 10 0 0 0 0 1
device=CONNECTOR_5
T 49800 40600 5 10 0 0 0 0 1
description=$0.00 PCB-INTEGRAL Trace based connector.
T 49800 40600 5 10 0 0 0 0 1
footprint=USB_TypeA_PCB
T 49800 40600 5 10 0 0 0 0 1
value=-
}
T 50400 41100 9 10 1 0 0 0 1
VUSB-
T 50400 42000 9 10 1 0 0 0 1
VUSB+
T 50400 40800 9 10 1 0 0 0 1
SHIELD
T 50400 41700 9 10 1 0 0 0 1
D-
T 50400 41400 9 10 1 0 0 0 1
D+
C 52900 42900 1 0 0 mcp170x-regulator.sym
{
T 54300 43900 5 10 1 1 0 6 1
refdes=3.3V
T 53209 44871 5 10 0 0 0 0 1
device=Microchip MCP170x regulator TO92
T 52900 42900 5 10 0 0 180 0 1
footprint=SOT89
T 52900 42900 5 10 0 0 180 0 1
description=$0.60 MOUSER 579-MCP1703AT3302EMB
T 52900 42900 5 10 0 0 180 0 1
value=-
}
C 52000 43400 1 0 0 inductor-1.sym
{
T 52200 43900 5 10 0 0 0 0 1
device=INDUCTOR
T 52200 43600 5 10 1 1 0 0 1
refdes=Lp1
T 52200 44100 5 10 0 0 0 0 1
symversion=0.1
T 52000 43400 5 10 1 1 0 0 1
value=4.7uH
T 52000 43400 5 10 0 0 0 0 1
description=$0.12 MOUSER 70-ILSB0603ER4R7K
T 52000 43400 5 10 0 0 0 0 1
footprint=0603
}
C 53900 42900 1 180 0 vee-1.sym
N 51500 40200 51500 40800 4
C 54800 48100 1 0 0 connector6-2.sym
{
T 55100 50950 5 10 0 0 0 0 1
device=CONNECTOR_6
T 55100 51150 5 10 0 0 0 0 1
footprint=HEADER6_2
T 54800 48100 5 10 0 0 0 0 1
description=$0.25 MOUSER 649-77313-818-06LF
T 54800 48100 5 10 0 0 0 0 1
value=-
T 55500 51000 5 10 1 1 0 6 1
refdes=ISP
}
C 54800 49900 1 90 0 vcc-1.sym
C 54800 48300 1 90 0 vee-1.sym
T 55600 50500 9 10 1 0 0 0 1
MISO
T 55600 49300 9 10 1 0 0 0 1
MOSI
T 55600 50100 9 10 1 0 0 0 1
Vcc
T 55600 49700 9 10 1 0 0 0 1
SCLK
T 55600 48900 9 10 1 0 0 0 1
RESET
T 55600 48500 9 10 1 0 0 0 1
Vee
N 60500 48900 60500 49000 4
N 60500 49000 54800 49000 4
N 54800 49000 54800 48900 4
C 50500 44400 1 180 0 connector2-2.sym
{
T 49800 43100 5 10 1 1 180 6 1
refdes=BAT
T 50200 43150 5 10 0 0 180 0 1
device=CONNECTOR_2
T 50200 42950 5 10 0 0 180 0 1
footprint=HEADER2_1
T 50500 44400 5 10 0 0 180 6 1
value=-
T 50500 44400 5 10 0 0 180 6 1
description=-
}
C 50500 43800 1 270 0 vee-1.sym
T 47000 40900 9 10 1 0 0 0 7
Subsystems

-p- Power
-u- USB
-a- Analog
-i- ISP
-n- iNdicator
C 66400 39800 1 180 0 resistor-1.sym
{
T 66100 39400 5 10 0 0 180 0 1
device=RESISTOR
T 66400 39800 5 10 0 0 90 0 1
footprint=0402
T 66400 39800 5 10 0 0 90 0 1
description=$0.14 MOUSER 594-MCS0402MC1001FE0
T 66000 39800 5 10 1 1 180 0 1
value=1k
T 65800 39900 5 10 1 1 180 0 1
refdes=Rn1
}
C 53100 42600 1 180 0 vee-1.sym
N 51500 42000 52000 42000 4
N 52000 42000 52000 43500 4
N 50500 44000 52900 44000 4
N 52900 44000 52900 43500 4
C 59600 48800 1 0 0 resistor-1.sym
{
T 59900 49200 5 10 0 0 0 0 1
device=RESISTOR
T 59900 48900 5 10 1 1 0 0 1
refdes=Ri1
T 59600 48800 5 10 1 1 0 0 1
value=10k
T 59600 48800 5 10 0 0 0 0 1
description=$0.13 MOUSER 71-TNPW040210K0DETD
T 59600 48800 5 10 0 0 0 0 1
footprint=0402
}
C 54700 42600 1 90 0 capacitor-1.sym
{
T 54700 42700 5 10 1 1 90 0 1
value=4.7u
T 54000 42800 5 10 0 0 90 0 1
device=CAPACITOR
T 54500 42700 5 10 1 1 90 0 1
refdes=Cp2
T 53800 42800 5 10 0 0 90 0 1
symversion=0.1
T 54700 42600 5 10 0 0 0 0 1
description=$0.13 MOUSER 80-C0603C475K9P
T 54700 42600 5 10 0 0 0 0 1
footprint=0603
}
C 54700 42600 1 180 0 vee-1.sym
C 60300 50600 1 270 0 capacitor-1.sym
{
T 61000 50400 5 10 0 0 270 0 1
device=CAPACITOR
T 61200 50400 5 10 0 0 270 0 1
symversion=0.1
T 60300 50600 5 10 0 0 180 0 1
description=$0.10 MOUSER 80-C0402C104K8R
T 60300 50600 5 10 0 0 180 0 1
footprint=0402
T 60500 50500 5 10 1 1 270 0 1
refdes=Cm3
T 60300 50600 5 10 1 1 270 0 1
value=0.1u
}
C 60300 50600 1 0 0 vee-1.sym
N 51500 41100 52000 41100 4
N 51500 40200 52000 40200 4
C 51900 39900 1 0 0 gnd-1.sym
C 56100 43800 1 90 0 connector2-2.sym
{
T 54800 44500 5 10 1 1 90 6 1
refdes=PWR
T 54850 44100 5 10 0 0 90 0 1
device=CONNECTOR_2
T 54650 44100 5 10 0 0 90 0 1
footprint=HEADER2_1
T 56100 43800 5 10 0 0 0 0 1
value=-
T 56100 43800 5 10 0 0 0 0 1
description=-
}
C 55900 43800 1 180 0 vcc-1.sym
N 54500 43500 55300 43500 4
N 55300 43500 55300 43800 4
C 74000 48300 1 0 0 ENC28J60-sys.sym
{
T 74900 50000 5 10 1 1 0 0 1
refdes=eth0
T 75300 49800 5 10 1 1 270 0 1
device=ENC28J60-sys
}
C 74000 49600 1 90 0 vee-1.sym
C 74000 49900 1 90 0 vcc-1.sym
C 66000 48000 1 0 1 input-2.sym
{
T 66000 48200 5 10 1 0 0 6 1
net=MISO:1
T 65400 48700 5 10 0 0 0 6 1
device=none
T 65500 48100 5 10 1 1 0 1 1
value=INPUT
}
C 64600 47600 1 0 0 output-2.sym
{
T 65500 47800 5 10 1 0 0 0 1
net=MOSI:1
T 64800 48300 5 10 0 0 0 0 1
device=none
T 65500 47700 5 10 1 1 0 1 1
value=OUTPUT
}
C 64600 47200 1 0 0 output-2.sym
{
T 65500 47400 5 10 1 0 0 0 1
net=SCLK:1
T 64800 47900 5 10 0 0 0 0 1
device=none
T 65500 47300 5 10 1 1 0 1 1
value=OUTPUT
}
C 54800 50400 1 0 1 output-2.sym
{
T 53900 50600 5 10 1 0 0 6 1
net=MISO:1
T 54600 51100 5 10 0 0 0 6 1
device=none
T 53900 50500 5 10 1 1 0 7 1
value=OUTPUT
}
C 53400 49200 1 0 0 input-2.sym
{
T 53400 49400 5 10 1 0 0 0 1
net=MOSI:1
T 54000 49900 5 10 0 0 0 0 1
device=none
T 53900 49300 5 10 1 1 0 7 1
value=INPUT
}
C 53400 49600 1 0 0 input-2.sym
{
T 53400 49800 5 10 1 0 0 0 1
net=SCLK:1
T 54000 50300 5 10 0 0 0 0 1
device=none
T 53900 49700 5 10 1 1 0 7 1
value=INPUT
}
C 74000 48300 1 0 1 output-2.sym
{
T 73100 48500 5 10 1 0 0 6 1
net=MISO:1
T 73800 49000 5 10 0 0 0 6 1
device=none
T 73100 48400 5 10 1 1 0 7 1
value=OUTPUT
}
C 72600 48600 1 0 0 input-2.sym
{
T 72600 48800 5 10 1 0 0 0 1
net=SCLK:1
T 73200 49300 5 10 0 0 0 0 1
device=none
T 73100 48700 5 10 1 1 0 7 1
value=INPUT
}
C 72600 49200 1 0 0 input-2.sym
{
T 72600 49400 5 10 1 0 0 0 1
net=MOSI:1
T 73200 49900 5 10 0 0 0 0 1
device=none
T 73100 49300 5 10 1 1 0 7 1
value=INPUT
}
C 70700 39500 1 0 0 RJ45-PrecisionAnalog-sys.sym
{
T 71400 42100 5 10 1 1 0 0 1
refdes=Ex2
T 71600 41900 5 10 1 1 270 0 1
device=Precision Analog Extension
}
C 66500 42100 1 0 0 RJ45-GeneralPurpose-sys.sym
{
T 67200 44700 5 10 1 1 0 0 1
refdes=Ex1
T 67400 44500 5 10 1 1 270 0 1
device=General Purpose Extension
}
C 68500 38700 1 0 0 RJ45-PrecisionAnalog-sys.sym
{
T 69200 41300 5 10 1 1 0 0 1
refdes=Ex3
T 69400 41100 5 10 1 1 270 0 1
device=Precision Analog Extension
}
C 68500 40500 1 90 0 vcc-1.sym
C 70700 41300 1 90 0 vcc-1.sym
C 66500 43900 1 90 0 vcc-1.sym
C 66500 42900 1 90 0 vee-1.sym
N 64600 44500 65700 44500 4
N 64900 48500 64600 48500 4
C 70900 44400 1 0 0 RN171-sys.sym
{
T 72000 46100 5 10 1 1 0 0 1
device=RN171
T 72000 46400 5 10 1 1 0 0 1
refdes=wi
}
C 70900 46300 1 90 0 vcc-1.sym
C 70900 46000 1 90 0 vee-1.sym
N 74000 49000 70100 49000 4
N 70100 45700 70100 49000 4
N 70100 45700 64600 45700 4
N 68500 40100 65000 40100 4
N 65000 40100 65000 40500 4
N 65000 40500 64600 40500 4
N 64600 40100 64600 40300 4
N 64600 40300 68500 40300 4
N 70700 40900 65000 40900 4
N 65000 40900 65000 41300 4
N 65000 41300 64600 41300 4
N 70700 41100 64600 41100 4
N 64600 41100 64600 40900 4
N 66500 44600 64900 44600 4
N 64900 44600 64900 48500 4
N 66500 43700 65000 43700 4
N 65000 43700 65000 44900 4
N 65000 44900 64600 44900 4
N 66500 43500 65700 43500 4
N 65700 43500 65700 44500 4
N 64600 43700 64900 43700 4
N 64900 42600 64900 43700 4
N 64900 42600 66500 42600 4
C 68200 39800 1 270 0 gnd-1.sym
C 70400 40600 1 270 0 gnd-1.sym
C 53100 42600 1 90 0 capacitor-1.sym
{
T 52400 42800 5 10 0 0 90 0 1
device=CAPACITOR
T 52900 42700 5 10 1 1 90 0 1
refdes=Cp1
T 52200 42800 5 10 0 0 90 0 1
symversion=0.1
T 53100 42700 5 10 1 1 90 0 1
value=4.7u
T 53100 42600 5 10 0 0 0 0 1
description=$0.06 MOUSER 77-VJ0805V475ZXQTBC
T 53100 42600 5 10 0 0 0 0 1
footprint=0805
}
