v 20130925 2
C 49400 47800 1 270 0 battery-3.sym
{
T 50100 47500 5 10 0 0 270 0 1
device=BATTERY
T 49900 47400 5 10 1 1 0 0 1
refdes=B1
T 50350 47500 5 10 0 0 270 0 1
symversion=0.1
T 49900 47100 5 10 1 1 0 0 1
value=3.0V
}
C 47600 51000 1 0 0 header6-2.sym
{
T 47600 52600 5 10 0 1 0 0 1
device=HEADER8
T 47900 52700 5 10 1 1 0 0 1
refdes=J1
T 47900 51200 5 10 1 1 0 0 1
value=ISP
}
C 48900 52500 1 0 0 vcc-1.sym
C 49000 51300 1 0 0 gnd-1.sym
N 49100 52500 49100 52400 4
N 49100 52400 49000 52400 4
N 49100 51600 49000 51600 4
N 47600 51600 46400 51600 4
{
T 46600 51600 5 10 1 1 0 0 1
netname=PC6_RST
}
N 47000 47700 48900 47700 4
{
T 48000 47700 5 10 1 1 0 0 1
netname=BATTSNS
}
C 54100 47200 1 90 0 crystal-2.sym
{
T 53400 47300 5 10 0 0 90 0 1
device=CRYSTAL
T 53274 47456 5 10 1 1 0 0 1
refdes=XTL1
T 53600 47900 5 10 1 1 0 0 1
value=32.768K
}
C 49500 46400 1 0 0 gnd-1.sym
N 59100 55800 60300 55800 4
{
T 59300 55800 5 10 1 1 0 0 1
netname=PB4_MISO
}
C 53600 50000 1 0 0 switch-pb.sym
{
T 54100 50250 5 10 1 1 0 0 1
refdes=S1
}
C 53600 49400 1 0 0 switch-pb.sym
{
T 54100 49650 5 10 1 1 0 0 1
refdes=S2
}
C 53600 48900 1 0 0 switch-pb.sym
{
T 54100 49150 5 10 1 1 0 0 1
refdes=S3
}
C 55000 48600 1 0 0 gnd-1.sym
N 59100 55500 60300 55500 4
{
T 59300 55500 5 10 1 1 0 0 1
netname=PB5_SCK
}
N 54300 47700 55300 47700 4
N 54300 47200 54300 47400 4
C 52600 47600 1 0 0 capacitor-1.sym
{
T 52800 48300 5 10 0 0 0 0 1
device=CAPACITOR
T 52700 47900 5 10 1 1 0 0 1
refdes=C1
T 52800 48500 5 10 0 0 0 0 1
symversion=0.1
T 52900 48100 5 10 1 1 0 0 1
value=22pf
}
C 52600 47000 1 0 0 capacitor-1.sym
{
T 52800 47700 5 10 0 0 0 0 1
device=CAPACITOR
T 52700 47000 5 10 1 1 0 0 1
refdes=C2
T 52800 47900 5 10 0 0 0 0 1
symversion=0.1
}
N 53500 47800 54300 47800 4
N 53500 47200 54300 47200 4
C 52300 47600 1 270 0 gnd-1.sym
N 52600 47800 52600 47200 4
C 51000 48100 1 0 0 vcc-1.sym
C 50000 47700 1 0 0 zener-1.sym
{
T 50400 48300 5 10 0 0 0 0 1
device=ZENER_DIODE
T 50300 48200 5 10 1 1 0 0 1
refdes=Z1
T 50200 47500 5 10 1 1 0 0 1
value=1N5817
}
N 50000 47900 49600 47900 4
N 49600 47900 49600 47800 4
N 51200 48100 51200 47900 4
N 51200 47900 50900 47900 4
T 49500 48700 9 10 1 0 0 0 1
3V Battery Backup
B 49300 46300 2200 2700 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
N 59100 56100 60300 56100 4
{
T 59300 56100 5 10 1 1 0 0 1
netname=PB3_MOSI
}
C 47400 47700 1 270 0 resistor-1.sym
{
T 47800 47400 5 10 0 0 270 0 1
device=RESISTOR
T 47700 47300 5 10 1 1 0 0 1
refdes=R12
T 47700 47100 5 10 1 1 0 0 1
value=100k
}
C 47400 48600 1 270 0 resistor-1.sym
{
T 47800 48300 5 10 0 0 270 0 1
device=RESISTOR
T 47700 48200 5 10 1 1 0 0 1
refdes=R13
T 47700 48000 5 10 1 1 0 0 1
value=270k
}
C 47400 46500 1 0 0 gnd-1.sym
C 47300 48600 1 0 0 vcc-1.sym
C 46800 47700 1 270 0 capacitor-1.sym
{
T 47500 47500 5 10 0 0 270 0 1
device=CAPACITOR
T 46700 47400 5 10 1 1 0 0 1
refdes=C3
T 47700 47500 5 10 0 0 270 0 1
symversion=0.1
T 46700 46900 5 10 1 1 0 0 1
value=0.1uF
}
N 47000 46800 47500 46800 4
N 54300 47400 55300 47400 4
N 54300 47700 54300 47800 4
N 53600 50000 52600 50000 4
{
T 52700 50000 5 10 1 1 0 0 1
netname=SWITCH1
}
N 53600 49400 52600 49400 4
{
T 52700 49400 5 10 1 1 0 0 1
netname=SWITCH2
}
N 53600 48900 52600 48900 4
{
T 52700 48900 5 10 1 1 0 0 1
netname=SWITCH3
}
N 54800 50000 55100 50000 4
N 55100 50000 55100 48900 4
N 54800 49400 55100 49400 4
N 54800 48900 55100 48900 4
C 53300 50600 1 0 0 beeper-1.sym
{
T 53600 51500 5 10 0 0 0 0 1
device=BEEPER
T 53700 51300 5 10 1 1 0 0 1
refdes=U4
T 53600 51700 5 10 0 0 0 0 1
symversion=0.1
}
N 54300 50900 55100 50900 4
{
T 54400 50900 5 10 1 1 0 0 1
netname=SPKR2
}
N 53300 50900 52600 50900 4
{
T 52700 50900 5 10 1 1 0 0 1
netname=SPKR1
}
T 52600 46400 9 10 1 0 0 0 1
Window Clock
C 62800 50800 1 0 0 gnd-1.sym
N 62900 51100 62500 51100 4
C 59000 55200 1 270 0 resonator-1.sym
{
T 59000 55100 5 10 1 1 0 2 1
refdes=U6
T 59750 54900 5 10 0 0 270 0 1
device=resonator
T 59950 54900 5 10 0 0 270 0 1
footprint=none
T 58700 53900 5 10 1 1 90 0 1
value=AWSCR-20.00CV-T
}
N 60300 55200 59500 55200 4
N 60300 54900 59900 54900 4
N 59900 54900 59900 54200 4
N 59900 54200 59500 54200 4
C 58800 54800 1 270 0 gnd-1.sym
C 65400 56000 1 90 0 gnd-1.sym
C 65100 56600 1 270 0 vcc-1.sym
N 65100 51900 66200 51900 4
{
T 65300 51900 5 10 1 1 0 0 1
netname=PC6_RST
}
C 62300 57800 1 0 0 vcc-1.sym
N 62900 57800 62500 57800 4
C 53800 69800 1 270 0 gnd-1.sym
C 54100 69500 1 0 0 capacitor-1.sym
{
T 54300 70200 5 10 0 0 0 0 1
device=CAPACITOR
T 54600 69700 5 10 1 1 0 0 1
refdes=C4
T 54300 70400 5 10 0 0 0 0 1
symversion=0.1
T 54600 69500 5 10 1 1 0 0 1
value=100nF
}
C 55000 68700 1 0 0 WS2812B.sym
{
T 57400 69800 5 10 0 0 0 0 1
footprint=WS2812B
T 57400 70000 5 10 0 0 0 0 1
device=RGB LED with built-in controller
T 55500 69900 5 10 1 1 0 3 1
refdes=LED1
T 56205 69275 5 6 1 1 0 0 1
pinlabel=R
T 55830 69275 5 6 1 1 0 0 1
pinlabel=B
T 56000 69275 5 6 1 1 0 0 1
pinlabel=G
}
C 57500 67300 1 0 0 WS2812B.sym
{
T 59900 68400 5 10 0 0 0 0 1
footprint=WS2812B
T 59900 68600 5 10 0 0 0 0 1
device=RGB LED with built-in controller
T 58000 68500 5 10 1 1 0 3 1
refdes=LED2
T 58705 67875 5 6 1 1 0 0 1
pinlabel=R
T 58330 67875 5 6 1 1 0 0 1
pinlabel=B
T 58500 67875 5 6 1 1 0 0 1
pinlabel=G
}
C 59100 65700 1 0 0 WS2812B.sym
{
T 61500 66800 5 10 0 0 0 0 1
footprint=WS2812B
T 61500 67000 5 10 0 0 0 0 1
device=RGB LED with built-in controller
T 59600 66900 5 10 1 1 0 3 1
refdes=LED3
T 60305 66275 5 6 1 1 0 0 1
pinlabel=R
T 59930 66275 5 6 1 1 0 0 1
pinlabel=B
T 60100 66275 5 6 1 1 0 0 1
pinlabel=G
}
C 60000 63700 1 0 0 WS2812B.sym
{
T 62400 64800 5 10 0 0 0 0 1
footprint=WS2812B
T 62400 65000 5 10 0 0 0 0 1
device=RGB LED with built-in controller
T 60500 64900 5 10 1 1 0 3 1
refdes=LED4
T 61205 64275 5 6 1 1 0 0 1
pinlabel=R
T 60830 64275 5 6 1 1 0 0 1
pinlabel=B
T 61000 64275 5 6 1 1 0 0 1
pinlabel=G
}
C 59100 61800 1 0 0 WS2812B.sym
{
T 61500 62900 5 10 0 0 0 0 1
footprint=WS2812B
T 61500 63100 5 10 0 0 0 0 1
device=RGB LED with built-in controller
T 59600 63000 5 10 1 1 0 3 1
refdes=LED5
T 60305 62375 5 6 1 1 0 0 1
pinlabel=R
T 59930 62375 5 6 1 1 0 0 1
pinlabel=B
T 60100 62375 5 6 1 1 0 0 1
pinlabel=G
}
C 57700 59900 1 0 0 WS2812B.sym
{
T 60100 61000 5 10 0 0 0 0 1
footprint=WS2812B
T 60100 61200 5 10 0 0 0 0 1
device=RGB LED with built-in controller
T 58200 61100 5 10 1 1 0 3 1
refdes=LED6
T 58905 60475 5 6 1 1 0 0 1
pinlabel=R
T 58530 60475 5 6 1 1 0 0 1
pinlabel=B
T 58700 60475 5 6 1 1 0 0 1
pinlabel=G
}
C 55000 58900 1 0 0 WS2812B.sym
{
T 57400 60000 5 10 0 0 0 0 1
footprint=WS2812B
T 57400 60200 5 10 0 0 0 0 1
device=RGB LED with built-in controller
T 55500 60100 5 10 1 1 0 3 1
refdes=LED7
T 56205 59475 5 6 1 1 0 0 1
pinlabel=R
T 55830 59475 5 6 1 1 0 0 1
pinlabel=B
T 56000 59475 5 6 1 1 0 0 1
pinlabel=G
}
C 52300 60300 1 0 0 WS2812B.sym
{
T 54700 61400 5 10 0 0 0 0 1
footprint=WS2812B
T 54700 61600 5 10 0 0 0 0 1
device=RGB LED with built-in controller
T 52800 61500 5 10 1 1 0 3 1
refdes=LED8
T 53505 60875 5 6 1 1 0 0 1
pinlabel=R
T 53130 60875 5 6 1 1 0 0 1
pinlabel=B
T 53300 60875 5 6 1 1 0 0 1
pinlabel=G
}
C 51300 62000 1 0 0 WS2812B.sym
{
T 53700 63100 5 10 0 0 0 0 1
footprint=WS2812B
T 53700 63300 5 10 0 0 0 0 1
device=RGB LED with built-in controller
T 51800 63200 5 10 1 1 0 3 1
refdes=LED9
T 52505 62575 5 6 1 1 0 0 1
pinlabel=R
T 52130 62575 5 6 1 1 0 0 1
pinlabel=B
T 52300 62575 5 6 1 1 0 0 1
pinlabel=G
}
C 50400 63900 1 0 0 WS2812B.sym
{
T 52800 65000 5 10 0 0 0 0 1
footprint=WS2812B
T 52800 65200 5 10 0 0 0 0 1
device=RGB LED with built-in controller
T 50900 65100 5 10 1 1 0 3 1
refdes=LED10
T 51605 64475 5 6 1 1 0 0 1
pinlabel=R
T 51230 64475 5 6 1 1 0 0 1
pinlabel=B
T 51400 64475 5 6 1 1 0 0 1
pinlabel=G
}
C 51300 66000 1 0 0 WS2812B.sym
{
T 53700 67100 5 10 0 0 0 0 1
footprint=WS2812B
T 53700 67300 5 10 0 0 0 0 1
device=RGB LED with built-in controller
T 51800 67200 5 10 1 1 0 3 1
refdes=LED11
T 52505 66575 5 6 1 1 0 0 1
pinlabel=R
T 52130 66575 5 6 1 1 0 0 1
pinlabel=B
T 52300 66575 5 6 1 1 0 0 1
pinlabel=G
}
C 52500 67600 1 0 0 WS2812B.sym
{
T 54900 68700 5 10 0 0 0 0 1
footprint=WS2812B
T 54900 68900 5 10 0 0 0 0 1
device=RGB LED with built-in controller
T 53000 68800 5 10 1 1 0 3 1
refdes=LED12
T 53705 68175 5 6 1 1 0 0 1
pinlabel=R
T 53330 68175 5 6 1 1 0 0 1
pinlabel=B
T 53500 68175 5 6 1 1 0 0 1
pinlabel=G
}
C 54800 69700 1 0 0 vcc-1.sym
C 57200 69000 1 90 0 gnd-1.sym
C 59700 67600 1 90 0 gnd-1.sym
C 61300 66000 1 90 0 gnd-1.sym
C 62200 64000 1 90 0 gnd-1.sym
C 61300 62100 1 90 0 gnd-1.sym
C 59900 60200 1 90 0 gnd-1.sym
C 57200 59200 1 90 0 gnd-1.sym
C 54100 60400 1 0 0 gnd-1.sym
C 53100 62100 1 0 0 gnd-1.sym
C 52200 64000 1 0 0 gnd-1.sym
C 53100 66100 1 0 0 gnd-1.sym
C 54300 67700 1 0 0 gnd-1.sym
C 51300 68700 1 270 0 gnd-1.sym
C 51600 68400 1 0 0 capacitor-1.sym
{
T 51800 69100 5 10 0 0 0 0 1
device=CAPACITOR
T 51800 69300 5 10 0 0 0 0 1
symversion=0.1
T 52100 68600 5 10 1 1 0 0 1
refdes=C5
T 52100 68400 5 10 1 1 0 0 1
value=100nF
}
C 52300 68600 1 0 0 vcc-1.sym
C 50300 66700 1 0 0 gnd-1.sym
C 50400 66800 1 0 0 capacitor-1.sym
{
T 50600 67500 5 10 0 0 0 0 1
device=CAPACITOR
T 50600 67700 5 10 0 0 0 0 1
symversion=0.1
T 50900 67000 5 10 1 1 0 0 1
refdes=C6
T 50900 66800 5 10 1 1 0 0 1
value=100nF
}
C 51100 67000 1 0 0 vcc-1.sym
C 49400 64600 1 0 0 gnd-1.sym
C 49500 64700 1 0 0 capacitor-1.sym
{
T 49700 65400 5 10 0 0 0 0 1
device=CAPACITOR
T 49700 65600 5 10 0 0 0 0 1
symversion=0.1
T 50000 64900 5 10 1 1 0 0 1
refdes=C7
T 50000 64700 5 10 1 1 0 0 1
value=100nF
}
C 50200 64900 1 0 0 vcc-1.sym
C 50300 62700 1 0 0 gnd-1.sym
C 50400 62800 1 0 0 capacitor-1.sym
{
T 50600 63500 5 10 0 0 0 0 1
device=CAPACITOR
T 50600 63700 5 10 0 0 0 0 1
symversion=0.1
T 50900 63000 5 10 1 1 0 0 1
refdes=C8
T 50900 62800 5 10 1 1 0 0 1
value=100nF
}
C 51100 63000 1 0 0 vcc-1.sym
C 51300 61000 1 0 0 gnd-1.sym
C 51400 61100 1 0 0 capacitor-1.sym
{
T 51600 61800 5 10 0 0 0 0 1
device=CAPACITOR
T 51600 62000 5 10 0 0 0 0 1
symversion=0.1
T 51900 61300 5 10 1 1 0 0 1
refdes=C9
T 51900 61100 5 10 1 1 0 0 1
value=100nF
}
C 52100 61300 1 0 0 vcc-1.sym
C 54000 59600 1 0 0 gnd-1.sym
C 54100 59700 1 0 0 capacitor-1.sym
{
T 54300 60400 5 10 0 0 0 0 1
device=CAPACITOR
T 54300 60600 5 10 0 0 0 0 1
symversion=0.1
T 54600 59900 5 10 1 1 0 0 1
refdes=C10
T 54600 59700 5 10 1 1 0 0 1
value=100nF
}
C 54800 59900 1 0 0 vcc-1.sym
C 56500 61000 1 270 0 gnd-1.sym
C 56800 60700 1 0 0 capacitor-1.sym
{
T 57000 61400 5 10 0 0 0 0 1
device=CAPACITOR
T 57000 61600 5 10 0 0 0 0 1
symversion=0.1
T 57300 60900 5 10 1 1 0 0 1
refdes=C11
T 57300 60700 5 10 1 1 0 0 1
value=100nF
}
C 57500 60900 1 0 0 vcc-1.sym
C 57900 62900 1 270 0 gnd-1.sym
C 58200 62600 1 0 0 capacitor-1.sym
{
T 58400 63300 5 10 0 0 0 0 1
device=CAPACITOR
T 58400 63500 5 10 0 0 0 0 1
symversion=0.1
T 58700 62800 5 10 1 1 0 0 1
refdes=C12
T 58700 62600 5 10 1 1 0 0 1
value=100nF
}
C 58900 62800 1 0 0 vcc-1.sym
C 58800 64800 1 270 0 gnd-1.sym
C 59100 64500 1 0 0 capacitor-1.sym
{
T 59300 65200 5 10 0 0 0 0 1
device=CAPACITOR
T 59300 65400 5 10 0 0 0 0 1
symversion=0.1
T 59600 64700 5 10 1 1 0 0 1
refdes=C13
T 59600 64500 5 10 1 1 0 0 1
value=100nF
}
C 59800 64700 1 0 0 vcc-1.sym
C 57900 66800 1 270 0 gnd-1.sym
C 58200 66500 1 0 0 capacitor-1.sym
{
T 58400 67200 5 10 0 0 0 0 1
device=CAPACITOR
T 58400 67400 5 10 0 0 0 0 1
symversion=0.1
T 58700 66700 5 10 1 1 0 0 1
refdes=C14
T 58700 66500 5 10 1 1 0 0 1
value=100nF
}
C 58900 66700 1 0 0 vcc-1.sym
C 56300 68400 1 270 0 gnd-1.sym
C 56600 68100 1 0 0 capacitor-1.sym
{
T 56800 68800 5 10 0 0 0 0 1
device=CAPACITOR
T 56800 69000 5 10 0 0 0 0 1
symversion=0.1
T 57100 68300 5 10 1 1 0 0 1
refdes=C15
T 57100 68100 5 10 1 1 0 0 1
value=100nF
}
C 57300 68300 1 0 0 vcc-1.sym
N 56900 69700 57700 69700 4
{
T 57100 69700 5 10 1 1 0 0 1
netname=PC0
}
T 52600 46600 9 10 1 0 0 0 1
SZDIY Hackersapce
N 55000 69100 55000 68700 4
N 55000 68700 59400 68700 4
N 59400 68700 59400 68300 4
N 57500 67700 57500 67200 4
N 57500 67200 61000 67200 4
N 61000 67200 61000 66700 4
N 59100 66100 59100 65400 4
N 59100 65400 61900 65400 4
N 61900 65400 61900 64700 4
N 60000 64100 60000 63400 4
N 60000 63400 61000 63400 4
N 61000 63400 61000 62800 4
N 59100 62200 59100 61500 4
N 59100 61500 59600 61500 4
N 59600 61500 59600 60900 4
N 57700 60300 57300 60300 4
N 57300 60300 57300 59900 4
N 57300 59900 56900 59900 4
N 55000 59300 53800 59300 4
N 53800 59300 53800 60200 4
N 53800 60200 54500 60200 4
N 54500 60200 54500 61300 4
N 54500 61300 54200 61300 4
N 52300 60700 51200 60700 4
N 51200 60700 51200 61900 4
N 51200 61900 53500 61900 4
N 53500 61900 53500 63000 4
N 53500 63000 53200 63000 4
N 51300 62400 50200 62400 4
N 50200 62400 50200 63700 4
N 50200 63700 52500 63700 4
N 52500 63700 52500 64900 4
N 52500 64900 52300 64900 4
N 50400 64300 49300 64300 4
N 49300 64300 49300 65800 4
N 49300 65800 53400 65800 4
N 53400 65800 53400 67000 4
N 53400 67000 53200 67000 4
N 51300 66400 50200 66400 4
N 50200 66400 50200 67500 4
N 50200 67500 54600 67500 4
N 54600 67500 54600 68600 4
N 54600 68600 54400 68600 4
C 51200 53000 1 0 0 ft232rl.sym
{
T 53800 61800 5 10 0 0 0 0 1
footprint=SSOP28
T 53800 62000 5 10 0 0 0 0 1
device=USB to Serial converter
T 51600 57800 5 10 1 1 0 3 1
refdes=U7
}
N 51200 56800 51200 57400 4
C 50600 57400 1 0 0 vcc-1.sym
N 51200 57400 50400 57400 4
C 51100 54500 1 0 0 gnd-1.sym
C 49500 57300 1 0 0 inductor-1.sym
{
T 49700 57800 5 10 0 0 0 0 1
device=INDUCTOR
T 49700 57600 5 10 1 1 0 0 1
refdes=L1
T 49700 58000 5 10 0 0 0 0 1
symversion=0.1
T 49300 57200 5 10 1 1 0 0 1
value=MI0805K400R-10
}
N 54100 54400 54100 53600 4
C 54000 53300 1 0 0 gnd-1.sym
C 55100 56600 1 270 0 led-2.sym
{
T 55300 55800 5 10 1 1 0 0 1
refdes=D1
T 55700 56500 5 10 0 0 270 0 1
device=LED
}
C 55600 56600 1 270 0 led-2.sym
{
T 55800 55800 5 10 1 1 0 0 1
refdes=D2
T 56200 56500 5 10 0 0 270 0 1
device=LED
}
N 55200 55700 55200 55600 4
N 55200 55600 54100 55600 4
N 54100 55400 55700 55400 4
N 55700 55400 55700 55700 4
C 55300 56600 1 90 0 resistor-1.sym
{
T 54900 56900 5 10 0 0 90 0 1
device=RESISTOR
T 55300 57100 5 10 1 1 0 0 1
refdes=R14
}
C 55800 56600 1 90 0 resistor-1.sym
{
T 55400 56900 5 10 0 0 90 0 1
device=RESISTOR
T 55800 57100 5 10 1 1 0 0 1
refdes=R15
}
N 55200 57500 55700 57500 4
C 55200 57500 1 0 0 vcc-1.sym
N 54100 57400 54700 57400 4
{
T 54200 57400 5 10 1 1 0 0 1
netname=PD0
}
N 54100 57200 54700 57200 4
{
T 54200 57200 5 10 1 1 0 0 1
netname=PD1
}
N 60300 54000 59400 54000 4
{
T 59700 54000 5 10 1 1 0 0 1
netname=PD0
}
N 60300 53700 59400 53700 4
{
T 59700 53700 5 10 1 1 0 0 1
netname=PD1
}
N 51200 55400 50300 55400 4
N 50300 55400 50300 56800 4
N 50300 56800 48300 56800 4
N 51200 55200 50100 55200 4
N 50100 55200 50100 57100 4
N 50100 57100 48300 57100 4
T 49400 57800 9 10 1 0 0 0 1
Ferrite Bead
C 48600 54500 1 0 0 vcc-1.sym
C 48700 53300 1 0 0 gnd-1.sym
C 48200 54500 1 270 0 capacitor-1.sym
{
T 48900 54300 5 10 0 0 270 0 1
device=CAPACITOR
T 48500 54200 5 10 1 1 0 0 1
refdes=C16
T 49100 54300 5 10 0 0 270 0 1
symversion=0.1
T 48500 53800 5 10 1 1 0 0 1
value=100nF
}
C 49000 54500 1 270 0 capacitor-1.sym
{
T 49700 54300 5 10 0 0 270 0 1
device=CAPACITOR
T 49300 54200 5 10 1 1 0 0 1
refdes=C17
T 49900 54300 5 10 0 0 270 0 1
symversion=0.1
T 49300 53800 5 10 1 1 0 0 1
value=4.7uF
}
N 48400 54500 49200 54500 4
N 48400 53600 49200 53600 4
C 62900 57600 1 0 0 capacitor-1.sym
{
T 63100 58300 5 10 0 0 0 0 1
device=CAPACITOR
T 62900 57900 5 10 1 1 0 0 1
refdes=C18
T 63100 58500 5 10 0 0 0 0 1
symversion=0.1
T 63500 57900 5 10 1 1 0 0 1
value=100nF
}
C 64100 57700 1 90 0 gnd-1.sym
N 59000 54700 59100 54700 4
C 46100 55400 1 0 0 usb-minib.sym
{
T 46200 57700 5 10 1 1 0 0 1
refdes=CONN1
}
N 48300 57400 49500 57400 4
C 48200 55400 1 0 0 gnd-1.sym
C 48800 56600 1 270 0 capacitor-1.sym
{
T 49500 56400 5 10 0 0 270 0 1
device=CAPACITOR
T 49100 56300 5 10 1 1 0 0 1
refdes=C19
T 49700 56400 5 10 0 0 270 0 1
symversion=0.1
T 49100 55900 5 10 1 1 0 0 1
value=10nF
}
N 49000 56600 49000 57400 4
N 48300 55700 48300 56200 4
N 49000 55700 48300 55700 4
T 46200 58000 9 10 1 0 0 0 1
Micro USB B
T 47000 50600 9 10 1 0 0 0 2
On the pcb's ISP header(see the silkscreen marking):
Pin 6 is Pin 1
C 58000 50900 1 180 1 connector15-1.sym
{
T 59800 46400 5 10 0 0 180 6 1
device=CONNECTOR_15
T 58000 46200 5 10 1 1 180 6 1
refdes=SV1
}
C 66000 46400 1 0 1 connector15-1.sym
{
T 64200 50900 5 10 0 0 0 6 1
device=CONNECTOR_15
T 66000 46100 5 10 1 1 0 6 1
refdes=SV2
}
N 59700 50700 59700 49200 4
C 60000 50600 1 90 0 gnd-1.sym
N 59700 48900 60600 48900 4
{
T 60000 48900 5 10 1 1 0 0 1
netname=PD5
}
N 59700 48600 60600 48600 4
{
T 60000 48600 5 10 1 1 0 0 1
netname=PD6
}
N 59700 48300 60600 48300 4
{
T 60000 48300 5 10 1 1 0 0 1
netname=PD7
}
N 59700 48000 60600 48000 4
{
T 60000 48000 5 10 1 1 0 0 1
netname=PB0
}
N 59700 47700 60600 47700 4
{
T 60000 47700 5 10 1 1 0 0 1
netname=PB1
}
N 59700 47400 60600 47400 4
{
T 60000 47400 5 10 1 1 0 0 1
netname=PB2
}
N 59400 52500 60300 52500 4
{
T 59700 52500 5 10 1 1 0 0 1
netname=PD5
}
N 59400 52200 60300 52200 4
{
T 59700 52200 5 10 1 1 0 0 1
netname=PD6
}
N 59400 51900 60300 51900 4
{
T 59700 51900 5 10 1 1 0 0 1
netname=PD7
}
N 59400 57000 60300 57000 4
{
T 59700 57000 5 10 1 1 0 0 1
netname=PB0
}
N 59400 56700 60300 56700 4
{
T 59700 56700 5 10 1 1 0 0 1
netname=PB1
}
N 59400 56400 60300 56400 4
{
T 59700 56400 5 10 1 1 0 0 1
netname=PB2
}
N 59700 46800 60900 46800 4
{
T 59900 46800 5 10 1 1 0 0 1
netname=PB4_MISO
}
N 59700 46500 60900 46500 4
{
T 59900 46500 5 10 1 1 0 0 1
netname=PB5_SCK
}
N 59700 47100 60900 47100 4
{
T 59900 47100 5 10 1 1 0 0 1
netname=PB3_MOSI
}
N 46400 52400 47600 52400 4
{
T 46600 52400 5 10 1 1 0 0 1
netname=PB4_MISO
}
N 46400 52000 47600 52000 4
{
T 46600 52000 5 10 1 1 0 0 1
netname=PB5_SCK
}
N 49000 52000 50200 52000 4
{
T 49200 52000 5 10 1 1 0 0 1
netname=PB3_MOSI
}
C 64300 50600 1 90 0 vcc-1.sym
N 63400 50500 64300 50500 4
{
T 63700 50500 5 10 1 1 0 0 1
netname=PD4
}
N 63400 50200 64300 50200 4
{
T 63700 50200 5 10 1 1 0 0 1
netname=PD3
}
N 63400 49900 64300 49900 4
{
T 63700 49900 5 10 1 1 0 0 1
netname=PD2
}
N 63400 49600 64300 49600 4
{
T 63700 49600 5 10 1 1 0 0 1
netname=PD1
}
N 63400 49300 64300 49300 4
{
T 63700 49300 5 10 1 1 0 0 1
netname=PD0
}
N 59400 52800 60300 52800 4
{
T 59700 52800 5 10 1 1 0 0 1
netname=PD4
}
N 59400 53100 60300 53100 4
{
T 59700 53100 5 10 1 1 0 0 1
netname=PD3
}
N 59400 53400 60300 53400 4
{
T 59700 53400 5 10 1 1 0 0 1
netname=PD2
}
T 58900 53800 9 10 1 0 0 0 1
UART
N 63400 49000 64300 49000 4
{
T 63700 49000 5 10 1 1 0 0 1
netname=PC6_RST
}
N 63400 48700 64300 48700 4
{
T 63700 48700 5 10 1 1 0 0 1
netname=PC5
}
N 63400 48400 64300 48400 4
{
T 63700 48400 5 10 1 1 0 0 1
netname=PC4
}
N 63400 48100 64300 48100 4
{
T 63700 48100 5 10 1 1 0 0 1
netname=PC3
}
N 63400 47800 64300 47800 4
{
T 63700 47800 5 10 1 1 0 0 1
netname=PC2
}
N 63400 47500 64300 47500 4
{
T 63700 47500 5 10 1 1 0 0 1
netname=PC1
}
N 63400 47200 64300 47200 4
{
T 63700 47200 5 10 1 1 0 0 1
netname=PC0
}
N 63400 46900 64300 46900 4
{
T 63700 46900 5 10 1 1 0 0 1
netname=ADC7
}
N 63400 46600 64300 46600 4
{
T 63700 46600 5 10 1 1 0 0 1
netname=ADC6
}
N 65100 52200 66000 52200 4
{
T 65300 52200 5 10 1 1 0 0 1
netname=PC5
}
N 65100 52500 66000 52500 4
{
T 65300 52500 5 10 1 1 0 0 1
netname=PC4
}
N 65100 52800 66000 52800 4
{
T 65300 52800 5 10 1 1 0 0 1
netname=PC3
}
N 65100 53100 66000 53100 4
{
T 65300 53100 5 10 1 1 0 0 1
netname=PC2
}
N 65100 53400 66000 53400 4
{
T 65300 53400 5 10 1 1 0 0 1
netname=PC1
}
N 65100 53700 66000 53700 4
{
T 65300 53700 5 10 1 1 0 0 1
netname=PC0
}
N 65100 54900 66000 54900 4
{
T 65400 54900 5 10 1 1 0 0 1
netname=ADC7
}
N 65100 55200 66000 55200 4
{
T 65400 55200 5 10 1 1 0 0 1
netname=ADC6
}
C 60300 51100 1 0 0 ATmega328p-tqfp-2.sym
{
T 64800 57600 5 10 1 1 0 6 1
refdes=U5
T 60600 57900 5 10 0 0 0 0 1
device=ATMega328p-TQFP32
T 60600 58100 5 10 0 0 0 0 1
footprint=TQFP32_7
}