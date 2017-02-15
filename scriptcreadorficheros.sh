#Con este script logramos que uniendo dos ficheros se crea un fichero nuevo con los dos ficheros antiguos juntos
#!/bin/bash
dialog --title "Fichero Origen 1 " --inputbox "Introduce nombre fichero " 0 0 2>/tmp/aux.txt
fich1=$(cat /tmp/aux.txt)
dialog --title "Fichero 1" --textbox "$fich1" 0 0
dialog --title "Fichero origen 2 " --inputbox "Introduce nombre fichero " 0 0 2>/tmp/aux.txt
fich2=$(cat /tmp/aux.txt)
dialog --title "Fichero 2" --textbox "$fich2" 0 0
dialog --title "Fichero Destino " --inputbox "Introduce nombre fichero " 0 0 2>/tmp/aux.txt
fich3=$(cat /tmp/aux.txt)
exec 3<$fich1
exec 4<$fich2
read -u3 linea1
read -u4 linea2
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
read -u3 linea1
read -u4 linea2
done
exec 3<&-
exec 4<&-
#resultado=$(cat $fich3)

#dialog --title "Resultado" --infobox "$resultado" 0 0
#Un programa accede mediante un programa identificandose a traves de un numero
#Todo fichero abierto en un Sist. Operat. usa un número
#Cuando pones un exec <$fich1 significa que es una entrada estandar cuando en realidad estas leyendo un fichero; 
# el read lee del fichero abierto con el descriptor 0
#Pero en este caso queremos leer de los ficheros abiertos, de ahi que le demos el numero 3 y 4
