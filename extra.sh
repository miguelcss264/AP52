#!/bin/bash

AsigMatric=0
SuspendAsig=0

while read linea
do
    alumno=`echo $linea | awk '{print $1}'`
    nota=`echo $linea | awk '{print $3}'`
    if [ "$alumno" = "Ana" ]; then
        AsigMatric=$((AsigMatric + 1))
        if [ "$nota" -lt "5" ]; then
            SuspendAsig=$((SuspendAsig + 1))
        fi
    fi
done < notas.txt

if [ $AsigMatric -eq $SuspendAsig ]; then
    echo "$alumno esta suspendida"
fi