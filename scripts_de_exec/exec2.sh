#!/bin/bash
read -p "Introduce un fichero: " fichero
let nlin=1
exec<$fichero
read linea
while [ "$linea" ]
do
	echo "$nlin $linea"
	let nlin=$nlin+1
	read linea
done
exec<&-

