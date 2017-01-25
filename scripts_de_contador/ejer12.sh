
#!/bin/bash
let suma=0
let num=5
let resto=0
while [ $num -lt 10001 ]
do
	
	let resto=$num%5
	if [ $resto -eq 0 ]
	then
	 let suma=$suma+$num
	fi
	let num=$num+1
done
	echo "La suma es $suma"
