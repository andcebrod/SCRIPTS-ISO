#!/bin/bash
fichero=$(zenity --file-selection --title="Selecciona un archivo")
case $? in
	0) echo "Se ha seleccionado el archivo $fichero";;

	1) echo "No se ha seleccionado el fichero";;
esac	
