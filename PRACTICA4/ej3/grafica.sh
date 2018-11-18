#!/bin/bash

TAM0=519 #512+P
TAMF=1543	#1024+519
INCR=64
REP=5

rm -f *.dat *.png
touch comp_time.dat
touch comp_acc.dat

for tam in $(seq $TAM0 $INCR $TAMF); do
	echo "Ejecutando tamaño $tam/$TAMF"
	SERIE=0
	PAR=0
	for rep in $(seq 1 1 $REP); do
		SERIE=$(./prod_serie $tam | grep 'time' | awk -v t=$SERIE '{print t+$3}')
		PAR=$(./prod_par3 $tam 4 | grep 'time' | awk -v t=$PAR '{print t+$3}')
	done

	SERIE=$(echo "scale=6 ; $SERIE/$REP" | bc -l)
	PAR=$(echo "scale=6 ; $PAR/$REP" | bc -l)
	ACC=$(echo "scale=6 ; $SERIE/$PAR" | bc -l)

	echo $tam"	"$SERIE"	"$PAR >> comp_time.dat
	echo $tam"	"$ACC >> comp_acc.dat
done

echo "Generating plot..."
gnuplot << END_GNUPLOT
set title "Matrix Product Comparison"
set ylabel "Time (s)"
set xlabel "Matrix Size"
set key right bottom
set grid
set term png
set output "comp_time.png"
plot "comp_time.dat" using 1:2 with lines lw 2 title "serie", \
     "comp_time.dat" using 1:3 with lines lw 2 title "paralelo"
	 
replot
set title "Acceleration of Paralelization"
set ylabel "Acceleration"
set output "comp_acc.png"
plot "comp_acc.dat" using 1:2 with lines lw 2
replot
quit
END_GNUPLOT
