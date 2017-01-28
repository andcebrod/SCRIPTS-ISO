#!/bin/bash
zenity --forms --title="Registrate" --text="Datos basicos" --separator="," --add-entry="Nombre" --add-entry="Apellidos" --add-entry="Correi" --add-calendar="nacimiento" >> dir.csv
case $? in
	0) echo "Registrado";;
	0) echo "No se ha registrado";;
 	0) echo "Error inesperado";;
esac
