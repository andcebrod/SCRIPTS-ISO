#!/bin/bash
read -p "Introduce una opción: " opcion
case $opcion in
1) 
	xcalc
	;;
2)
	gedit
	;;
3)
	firefox
	;;
esac
