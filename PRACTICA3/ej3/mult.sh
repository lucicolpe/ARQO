#!/bin/bash

# inicializar variables
# P=$(((1302+38)%10))
P=0
Npruebas=20
Ninicio=$((256 + 256 * P))
Npaso=16
Nfinal=$((Ninicio + 256))

make
rm -f *.tmp *.dat *.png
touch times.tmp
touch mult.dat

echo "Testing times"

for i in $(seq 1 1 $Npruebas); do
	echo
	echo "Test $i / $Npruebas"
	for N in $(seq $Ninicio $Npaso $Nfinal); do
		echo "N: $N / $Nfinal"

		time_prod=$(./prod $N | grep 'time' | awk '{print $3}')
		time_trans=$(./prodTrans $N | grep 'time' | awk '{print $3}')

		echo "$N	$time_prod	$time_trans" >> times.tmp
	done
done

echo
echo "Testing cache misses"

for N in $(seq $Ninicio $Npaso $Nfinal); do
	echo "N: $N / $Nfinal"

	valgrind -q --tool=cachegrind --cachegrind-out-file=prod.tmp ./prod $N > valgrind.tmp # Para que no salga por pantalla toda la matriz
	valgrind -q --tool=cachegrind --cachegrind-out-file=trans.tmp ./prodTrans $N > valgrind.tmp

	D1mr_prod=$(cg_annotate prod.tmp | grep 'PROGRAM TOTALS' | awk '{print $5}' | tr -d ',')
	D1mw_prod=$(cg_annotate prod.tmp | grep 'PROGRAM TOTALS' | awk '{print $8}' | tr -d ',')
	D1mr_trans=$(cg_annotate trans.tmp | grep 'PROGRAM TOTALS' | awk '{print $5}' | tr -d ',')
	D1mw_trans=$(cg_annotate trans.tmp | grep 'PROGRAM TOTALS' | awk '{print $8}' | tr -d ',')

	grep "^$N" times.tmp | awk -v nP=$Npruebas -v n=$N -v D1mr=$D1mr_prod -v D1mw=$D1mw_prod -v D1mr_t=$D1mr_trans -v D1mw_t=$D1mw_trans '{timep_sum = timep_sum + $2; timet_sum = timet_sum + $3} END{print n"	"timep_sum/nP"	"D1mr"	"D1mw"	"timet_sum/nP"	"D1mr_t"	"D1mw_t}' >> mult.dat
done

rm -f *.tmp

echo "Generating plot..."
# llamar a gnuplot para generar el gráfico y pasarle directamente por la entrada
# estándar el script que está entre "<< END_GNUPLOT" y "END_GNUPLOT"
gnuplot << END_GNUPLOT
set title "Data Cache Misses"
set ylabel "Misses"
set xlabel "Matrix Size"
set key right bottom
set grid
set term png
set output "mult_cache.png"
plot "mult.dat" using 1:3 with lines lw 2 title "read normal", \
     "mult.dat" using 1:6 with lines lw 2 title "read trans", \
     "mult.dat" using 1:4 with lines lw 2 title "write normal", \
     "mult.dat" using 1:7 with lines lw 2 title "write trans"
replot
set title "Matrix Product Times"
set ylabel "Time (s)"
set output "mult_times.png"
plot "mult.dat" using 1:2 with lines lw 2 title "normal", \
     "mult.dat" using 1:5 with lines lw 2 title "trans"
replot
quit
END_GNUPLOT
