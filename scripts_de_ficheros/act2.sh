#!/bin/bash
read -p "Introduzca fichero:" fichero
if [ -f $fichero ]
then
	cat $fichero
fi
