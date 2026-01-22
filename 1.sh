#!/bin/bash
totalpar=0
totalimpar=0
contadorimp=0
contadorpar=0
while read num
do
    div=$((num % 2))
    if [ $div -eq 0 ]; 
    then
        contadorpar=$((contadorpar + 1))
        totalpar=$((totalpar + $num))
        echo " $contadorpar "-" $num"
    fi
done < numeros.txt
echo "----------------------"
while read num
do
    div=$((num % 2))
    if [ $div -ne 0 ];
    then
        contadorimp=$((contadorimp + 1))
        totalimpar=$((totalimpar + $num))
        echo " $contadorimp "-" $num"
    fi
done < numeros.txt

echo "Total numeros pares: $totalpar"
echo "Total numeros impares: $totalimpar"