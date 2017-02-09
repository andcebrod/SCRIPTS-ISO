#!/bin/bash
cat /etc/passwd|cut -f1 -d:>/tmp/usuarios.txt
fija1="zenity --list --radiolist --column Elige --column Usuario "
var=""
exec</tmp/usuarios.txt
read linea
while [ "$linea" ]
do
	var="$var $linea "
	read linea
done
exec<&-
m="$fija1 $var "
elegido=$($m)
if [ "$elegido" ]
then
	mysql -u root -p <<EOF
	create database manuel3;
	use manuel3;
	create table usuarios (usuario varchar(20));
EOF
fi
