#!/bin/bash
fija1="dialog --menu \"Equipo\" 0 0 0"
fija2="2>/tmp/eleccion.txt"
variable=""
read linea
let i=0
exec<Partidos.txt
while [ "$linea" ]
do
	variable="$variable $i\"$linea\""
	read linea
let i=$i+1
done
exec<&-
maqueda="$fija1 $variable $fija2"
echo $maqueda>/tmp/menu.sh
chmod +x /tmp/menu.sh
/tmp/menu.sh
