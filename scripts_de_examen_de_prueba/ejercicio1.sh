#!/bin/bash
let a=0
let suma=0
let num=1
while [ $a -lt 10000 ]
do
	let a=$num*5
	let suma=$suma+$a
	let num=$num+1
	echo $num
done
	echo "La suma es $suma"
