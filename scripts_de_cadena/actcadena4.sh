#!/bin/bash
read -p "Introduce una cadena: " cadena1
if [[ "$cadena1" =~ [a-zA-Z][0-9] ]]
then
	echo "Cadena con numero y letra"
else
	echo "No es cadena con numero y letra"
fi
