#!/bin/bash
#Radiolist zenity con todos los modulos cargados en memoria y desactivarlos
lsmod|cut -f1 -d' '>/tmp/modulos.txt
fija1="zenity --list --radiolist --column "Elige" --column "Modulos" "
var=""
exec</tmp/modulos.txt
read linea
while [ "$linea" ]
do
	var="$var $linea "
	read linea
done
exec<&-
m="$fija1 $var "
elegido=$($m)
if [ "$elegido" ]
then
	rmmod $elegido
fi
echo "Se ha eliminado $elegido"
