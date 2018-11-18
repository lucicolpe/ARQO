#!/bin/bash

# inicializar variables
# P=$(((1302+38)%10))
P=0
Npruebas=1
Ninicio=$((2000 + 1024 * P))
Npaso=64
Nfinal=$((Ninicio + 1024))
I1D1_first_size=1024
Nsizes=4
# 8 MB = 2^23 B = 8388608 B
LL_size=8388608
Assoc=1
Line_size=64

make
rm -f *.tmp *.dat *.png

echo "Running slow and fast..."
# bucle para repetir pruebas $Npruebas veces
for s in $(seq 1 1 $Nsizes); do
		I1D1_size=$(($I1D1_first_size*2**($s-1)))
		CACHEGRIND="valgrind -q --tool=cachegrind --I1="$I1D1_size","$Assoc","$Line_size" --D1="$I1D1_size","$Assoc","$Line_size" --LL="$LL_size","$Assoc","$Line_size
		fSlow=slow_$I1D1_size.dat
		fFast=fast_$I1D1_size.dat
		echo
		echo "Running with $I1D1_size B cache"
	for i in $(seq 1 1 $Npruebas); do
		echo
		echo "Test $i / $Npruebas"
		for N in $(seq $Ninicio $Npaso $Nfinal); do
			echo
			echo
			echo "N: $N / $Nfinal"
			echo
			echo
			# Simular ejecución de slow y fast
			$CACHEGRIND --cachegrind-out-file=$fSlow ./slow $N
			$CACHEGRIND --cachegrind-out-file=$fFast ./fast $N

			D1mr_slow=$(cg_annotate $fSlow | grep 'PROGRAM TOTALS' | awk '{print $5}' | tr -d ',')
			D1mw_slow=$(cg_annotate $fSlow | grep 'PROGRAM TOTALS' | awk '{print $8}' | tr -d ',')
			D1mr_fast=$(cg_annotate $fFast | grep 'PROGRAM TOTALS' | awk '{print $5}' | tr -d ',')
			D1mw_fast=$(cg_annotate $fFast | grep 'PROGRAM TOTALS' | awk '{print $8}' | tr -d ',')

			echo "$N	$D1mr_slow	$D1mw_slow	$D1mr_fast	$D1mw_fast" >> $I1D1_size.tmp
		done
	done
	awk -v Np=$Npruebas '{D1mr_slow[$1] = D1mr_slow[$1] + $2/Np; D1mw_slow[$1] = D1mw_slow[$1] + $3/Np; D1mr_fast[$1] = D1mr_fast[$1] + $4/Np; D1mw_fast[$1] = D1mw_fast[$1] + $5/Np} END{for (valor in D1mw_fast){print valor"	"D1mr_slow[valor]"	"D1mw_slow[valor]"	"D1mr_fast[valor]"	"D1mw_fast[valor]}}' $I1D1_size.tmp > cache_$I1D1_size.dat

done

echo "Generating plot..."
# llamar a gnuplot para generar el gráfico y pasarle directamente por la entrada
# estándar el script que está entre "<< END_GNUPLOT" y "END_GNUPLOT"
gnuplot << END_GNUPLOT
set title "Data Cache Read Misses"
set ylabel "Misses"
set xlabel "Matrix Size"
set key right bottom
set grid
set term png
set output "cache_lectura.png"
plot "cache_1024.dat" using 1:2 with lines lw 2 title "slow 1024", \
     "cache_1024.dat" using 1:4 with lines lw 2 title "fast 1024", \
     "cache_2048.dat" using 1:2 with lines lw 2 title "slow 2048", \
     "cache_2048.dat" using 1:4 with lines lw 2 title "fast 2048", \
     "cache_4096.dat" using 1:2 with lines lw 2 title "slow 4096", \
     "cache_4096.dat" using 1:4 with lines lw 2 title "fast 4096", \
     "cache_8192.dat" using 1:2 with lines lw 2 title "slow 8192", \
     "cache_8192.dat" using 1:4 with lines lw 2 title "fast 8192"
replot
set title "Data Cache Write Misses"
set output "cache_escritura.png"
plot "cache_1024.dat" using 1:3 with lines lw 2 title "slow 1024", \
     "cache_1024.dat" using 1:5 with lines lw 2 title "fast 1024", \
     "cache_2048.dat" using 1:3 with lines lw 2 title "slow 2048", \
     "cache_2048.dat" using 1:5 with lines lw 2 title "fast 2048", \
     "cache_4096.dat" using 1:3 with lines lw 2 title "slow 4096", \
     "cache_4096.dat" using 1:5 with lines lw 2 title "fast 4096", \
     "cache_8192.dat" using 1:3 with lines lw 2 title "slow 8192", \
     "cache_8192.dat" using 1:5 with lines lw 2 title "fast 8192"
replot
quit
END_GNUPLOT
