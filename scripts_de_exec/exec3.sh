#!/bin/bash
read -p "Introduce fichero 1: " fich1
read -p "Introduce fichero 1: " fich2
read -p "Introduce el nombre de fichero 3: " fich3

exec 7<$fich1
exec 8<$fich2
echo "">$fich3

read -u 7 linea
while [ "$linea" ]
do
	echo "$linea">>$fich3
	read -u 7 linea
done
read -u 8 linea
while [ "$linea" ]
do
	echo "$linea">>$fich3
	read -u 8 linea
done
exec 7<&-
exec 8<&-
cat $fich3
