#!/bin/bash
let nlin=1
exec</etc/passwd
read linea
while [ "$linea" ]
do
	echo "$nlin $linea"
	let nlin=$nlin+1
	read linea
done
exec<&-

