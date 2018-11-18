#!/bin/bash

TAM0=100000000
TAMF=1000000000
SALTOS=10
REP=5

make pescalar_serie
make pescalar_par2
rm -f *.dat *.png
touch times.dat
touch acc.dat

t_serie=0

for tam in $(seq $TAM0 $((($TAMF-$TAM0+1)/($SALTOS-1))) $TAMF); do
	echo "Testing size $tam/$TAMF"
	for rep in $(seq 1 1 $REP); do
		t_serie=$(./pescalar_serie $tam | grep 'Tiempo' | awk -v t=$t_serie '{print t+$2}')
	done
	t_serie=$(awk -v t=$t_serie -v r=$REP 'BEGIN{print t/r}')
	for thr in $(seq 1 1 4); do
		t_par[$thr]=0
		for rep in $(seq 1 1 $REP); do
			t_par[$thr]=$(./pescalar_par2 $tam $thr | grep 'Tiempo' | awk -v t=${t_par[$thr]} '{print t+$2}')
		done
		t_par[$thr]=$(awk -v t=${t_par[$thr]} -v r=$REP 'BEGIN{print t/r}')
	done

	echo $tam" "$t_serie" "${t_par[1]}" "${t_par[2]}" "${t_par[3]}" "${t_par[4]} >> times.dat
	awk -v size=$tam -v t=$t_serie -v t1=${t_par[1]} -v t2=${t_par[2]} -v t3=${t_par[3]} -v t4=${t_par[4]} 'BEGIN{print size"	"t/t1-1"	"t/t2-1"	"t/t3-1"	"t/t4-1}' >> acc.dat
done

echo "Generating plot..."
gnuplot << END_GNUPLOT
set title "Time of Vector Product"
set ylabel "Time (s)"
set xlabel "Vector Size"
set key right bottom
set grid
set term png
set output "prod_time.png"
plot "times.dat" using 1:3 with lines lw 2 title "1 thread", \
     "times.dat" using 1:4 with lines lw 2 title "2 threads", \
     "times.dat" using 1:5 with lines lw 2 title "3 threads", \
     "times.dat" using 1:6 with lines lw 2 title "4 threads", \
     "times.dat" using 1:2 with lines lw 2 title "serie"
	 
replot
set title "Vector Product Acceleration"
set ylabel "Acceleration"
set output "acceleration.png"
plot "acc.dat" using 1:2 with lines lw 2 title "1 thread", \
     "acc.dat" using 1:3 with lines lw 2 title "2 threads", \
     "acc.dat" using 1:4 with lines lw 2 title "3 threads", \
     "acc.dat" using 1:5 with lines lw 2 title "4 threads"
replot
quit
END_GNUPLOT