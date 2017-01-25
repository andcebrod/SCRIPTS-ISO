#!/bin/bash
read -p "Introduzca fichero:" fichero
if [ -N $fichero ]
then
	echo "Si fue modificado "
else
	echo "No fue modificado "
fi
