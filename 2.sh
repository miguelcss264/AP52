#!/bin/bash

contadorlinux=0
contadorwindows=0
sumaLinux=0
sumaWindows=0

while read linea
do
    sistema=`echo $linea | awk '{print $2}'`
    if [ $sistema = "Linux" ]; then
        procesos=$(awk '{print $3}' <<< "$linea")
        contadorlinux=$((contadorlinux + 1))
        sumaLinux=$((sumaLinux+procesos))

    else
        contadorwindows=$((contadorwindows + 1))
        procesos=$(awk '{print $3}' <<< "$linea")
        sumaWindows=$((sumaWindows+procesos))

    fi
done < listado.txt
echo "Linux -> $contadorlinux $sumaLinux"
echo "Windows -> $contadorwindows $sumaWindows"
