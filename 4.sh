#!/bin/bash
dias=(Lunes Martes Miércoles Jueves Viernes Sábado Domingo)

awk -v dias_semana="${dias[*]}" '
BEGIN {
  # Pasamos el array de Bash a awk
  n = split(dias_semana, dnames, " ")
}
{
  dia = $1          # número de día (1, 2, 3, ...)
  litros = $2       # litros caídos ese día
  if (litros == 0) {
    # Calcular el índice de día de semana (1->lunes, 2->martes, ...)
    idx = ( (dia - 1) % n ) + 1
    print "Día " dia " (" dnames[idx] "): no llovió"
  }
}
' precipitaciones.txt