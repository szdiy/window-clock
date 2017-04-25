PCB=pcb
FILEBASE=window-clock
BOMFILE=${FILEBASE}.bom.txt
XYFILE=${FILEBASE}.xy.txt

default: gerber

gerber:
	${PCB} -x gerber --gerberfile ${FILEBASE} ${FILEBASE}.pcb
	mv *.gbr *.cnc ./window-clock-gerber

bom:
	gnetlist -g partslist3 -o window-clock.bom window-clock.sch

pcb:
	gsch2pcb --use-files --elements-dir ~/footprints window-clock.sch

pdf: window-clock.pdf

%.pdf: %.ps
	ps2pdf $< $@

%.ps: %.sch
	gschem -p -o $@ -s /usr/local/share/gEDA/scheme/print.scm $<

# use the following command to generate ps file
# gschem -p -o window-clock.ps -s /usr/share/gEDA/scheme/print.scm window-clock.sch

# from ps to png workflow
# ps --(ps2epsi)--> epsi --(eps2png)--> png
#
png: window-clock.epsi
	./eps2png -width 1800 window-clock.epsi

clean:
	rm -f *.gbr *.bom *.cnc *.pdf ${BOMFILE} ${XYFILE}

