#!/bin/bash

#ESTE ES COMO EL DEL DIALOG PERO LA DIFERENCIA ESQUE NO NECESITAS DOS PARES DE PALABRAS, ES DECIR NO NECESITAS UN NUMERO Y LA PALABRA QUE QUERIAS EN EL MENU 
#TAMPOCO TENEMOS UNA SALIDA DE ERROR

cat /etc/passwd|cut -f1 -d:>/tmp/usuarios.txt
fija1="zenity --list --column Usuarios "
var=""
exec</tmp/usuarios.txt
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
	esta=$(who|grep -w $elegido)
	if [ "$esta" ]
	then
	echo "$elegido esta logueado"
	else
	echo "$elegido no esta logueado"
	fi
	else
	echo "No has elegido ningun usuario"
fi
