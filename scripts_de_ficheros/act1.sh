#!/bin/bash
read -p "Introduzca un fichero:" fichero
if [ -O $fichero ]
then 
	xcalc
else 
	gedit 
fi
