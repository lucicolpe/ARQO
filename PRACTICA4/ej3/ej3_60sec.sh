#!/bin/bash

TAM=2500

make -s

rm -f time60.tab acc60.tab
touch time60.tab
touch acc60.tab

echo "Ejecutando prod_serie"
SERIE=$(./prod_serie $TAM | grep 'time' | awk '{print $3}')
for i in $(seq 1 1 4); do
	echo "Ejecutando prod_par1 con $i hilos"
	PAR1[$i]=$(./prod_par1 $TAM $i | grep 'time' | awk '{print $3}')
	echo "Ejecutando prod_par2 con $i hilos"
	PAR2[$i]=$(./prod_par2 $TAM $i | grep 'time' | awk '{print $3}')
	echo "Ejecutando prod_par3 con $i hilos"
	PAR3[$i]=$(./prod_par3 $TAM $i | grep 'time' | awk '{print $3}')

	ACC1[$i]=$(echo "scale=6 ; $SERIE/${PAR1[$i]}" | bc -l)
	ACC2[$i]=$(echo "scale=6 ; $SERIE/${PAR2[$i]}" | bc -l)
	ACC3[$i]=$(echo "scale=6 ; $SERIE/${PAR3[$i]}" | bc -l)
done

echo $SERIE >> time60.tab
echo ${PAR1[1]}"	"${PAR1[2]}"	"${PAR1[3]}"	"${PAR1[4]} >> time60.tab
echo ${PAR2[1]}"	"${PAR2[2]}"	"${PAR2[3]}"	"${PAR2[4]} >> time60.tab
echo ${PAR3[1]}"	"${PAR3[2]}"	"${PAR3[3]}"	"${PAR3[4]} >> time60.tab

echo
echo "Tiempos:"
cat time60.tab

echo 1 >> acc60.tab
echo ${ACC1[1]}"	"${ACC1[2]}"	"${ACC1[3]}"	"${ACC1[4]} >> acc60.tab
echo ${ACC2[1]}"	"${ACC2[2]}"	"${ACC2[3]}"	"${ACC2[4]} >> acc60.tab
echo ${ACC3[1]}"	"${ACC3[2]}"	"${ACC3[3]}"	"${ACC3[4]} >> acc60.tab

echo
echo "Aceleraciones:"
cat acc60.tab