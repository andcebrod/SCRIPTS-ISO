#!/bin/bash
read -p "Introduce una cadena: " cadena1
if [ -n "$cadena1" ]
then
	echo "Cadena No vacia"
else
	echo "Cadena vacía"
fi

