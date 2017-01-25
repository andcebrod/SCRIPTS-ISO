read -p "Introduzca nombre de fichero:" fichero
if [ -b $fichero ]
then
	echo "$fichero es tipo bloque"
fi
if [ -c $fichero ]
then
	echo "$fichero es tipo caracter"
fi
