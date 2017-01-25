#!/bin/bash
dialog --title "Fichero 1" --inputbox "Introduce fichero 1: " 0 0 2>/tmp/aux1.txt
fich1=$(cat /tmp/aux1.txt)
dialog --title "Fichero 1" --textbox "$fich1" 0 0
dialog --title "Fichero 2" --inputbox "Introduce fichero 2: " 0 0 2>/tmp/aux2.txt
fich2=$(cat /tmp/aux2.txt)
dialog --title "Fichero 2" --textbox "$fich2" 0 0
dialog --title "Fichero 3" --inputbox "Introduce nombre al fichero 3: " 0 0 2>/tmp/aux3.txt
fich3=$(cat /tmp/aux3.txt)
exec 3<$fich1
exec 4<$fich2
read -u 3 linea1
read -u 4 linea2
while [ "$linea1" -o "$linea2" ]
do
	if [ "$linea1" ]
	then
		echo "$linea1">>$fich3
	fi
	if [ "$linea2" ]	
	then
		echo "$linea2">>$fich3
	fi
read -u 3 linea1
read -u 4 linea2
done
exec 3<&-
exec 4<&-
dialog --title "El Fichero 3 es: " --textbox "$fich3" 0 0
