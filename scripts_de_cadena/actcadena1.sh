#!/bin/bash
read -p "Introduce una cadena: " cadena1
read -p "Introduce otra cadena: " cadena2
if [ "$cadena1" == "$cadena2" ]
then
	echo "$cadena1 es igual a $cadena2"
else
	echo "$cadena1 es distinta de $cadena2"
fi
