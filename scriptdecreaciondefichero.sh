#Con este script logramos que uniendo dos ficheros se crea un fichero nuevo con los dos ficheros antiguos juntos
#!/bin/bash
dialog --title "Fichero Origen 1 " --inputbox "Introduce nombre fichero " 0 0 2>/tmp/aux.txt
fich1=$(cat /tmp/aux.txt)
dialog --title "Fichero 1" --textbox "$fich1" 0 0
dialog --title "Fichero origen 2 " --inputbox "Introduce nombre fichero " 0 0 2>/tmp/aux.txt
fich2=$(cat /tmp/aux.txt)
dialog --title "Fichero 1" --textbox "$fich2" 0 0
dialog -- title "Fichero Destino " --inputbox "Introduce nombre fichero " 0 0 2>/tmp/aux.txt
fich3=$(cat /tmp/aux.txt)
exec 3<$fich1
exec 4<$fich2
read -u3 linea1
read -u4 linea2
while [ "$linea1" -o "$linea2" ]
do
	if [ "$linea1" ]
	then
	echo "$linea1">>fich3
	fi
	if [ "$linea2" ]
	then
	echo "$linea2">>fich3
	fi
