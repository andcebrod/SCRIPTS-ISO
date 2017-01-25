#!/bin/bash
read -p "Introduce fichero 1: " fich1
read -p "Introduce fichero 2: " fich2
read -p "Introduce el nombre del fichero 3: " fich3
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
cat $fich3

