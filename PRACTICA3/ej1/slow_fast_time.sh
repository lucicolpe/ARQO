#!/bin/bash

# inicializar variables
# P=$(((1302+38)%10))
P=0
Npruebas=10
Ninicio=$((10000 + 1024 * P))
Npaso=64
Nfinal=$((Ninicio + 1024))
fDAT=slow_fast_time.dat
fPNG=slow_fast_time.png

# borrar el fichero DAT y el fichero PNG
rm -f $fDAT $fPNG

# generar el fichero DAT vacío
touch $fDAT
touch $temporal.txt

# compilar slow.c y fast.c
make

echo "Running slow and fast..."
# bucle para repetir pruebas $Npruebas veces
for i in $(seq 1 1 $Npruebas); do
	echo
	echo "Prueba $i / $Npruebas:"

	# bucle para N desde P hasta Q
	#for N in $(seq $Ninicio $Npaso $Nfinal);
	for ((N = Ninicio ; N <= Nfinal ; N += Npaso)); do
		echo "N: $N / $Nfinal..."

		# ejecutar los programas slow y fast consecutivamente con tamaño de matriz N
		# para cada uno, filtrar la línea que contiene el tiempo y seleccionar la
		# tercera columna (el valor del tiempo). Dejar los valores en variables
		# para poder imprimirlos en la misma línea del fichero de datos
		slowTime=$(./slow $N | grep 'time' | awk '{print $3}')
		fastTime=$(./fast $N | grep 'time' | awk '{print $3}')

		echo "$N	$slowTime	$fastTime" >> temporal.txt
	done
done
# hacer la media de los valores repetidos
awk -v N=$Npruebas '{mediaSlow[$1] = mediaSlow[$1] + $2; mediaFast[$1] = mediaFast[$1] + $3} END{for (valor in mediaSlow){print valor"	"mediaSlow[valor]/N"	"mediaFast[valor]/N}}' temporal.txt | sort -n -k 1 > $fDAT
rm -f temporal.txt

echo "Generating plot..."
# llamar a gnuplot para generar el gráfico y pasarle directamente por la entrada
# estándar el script que está entre "<< END_GNUPLOT" y "END_GNUPLOT"
gnuplot << END_GNUPLOT
set title "Slow-Fast Execution Time"
set ylabel "Execution time (s)"
set xlabel "Matrix Size"
set key right bottom
set grid
set term png
set output "$fPNG"
plot "$fDAT" using 1:2 with lines lw 2 title "slow", \
     "$fDAT" using 1:3 with lines lw 2 title "fast"
replot
quit
END_GNUPLOT
