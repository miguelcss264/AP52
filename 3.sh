#!/bin/bash

media=$(awk '{
  suma += $2;     # suma de litros (columna 2)
  count++         # número de días
} END {
  if (count > 0) print int(suma / count); else print 0
}' precipitaciones.txt)

echo "La media de precipitaciones es $media"