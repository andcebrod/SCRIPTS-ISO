#!/bin/bash
#Radiolist zenity con todos los modulos cargados en memoria y desactivarlos
zenity --list --radiolist --text "selecciona" --column "Elige" --column "Motor" False "honda" False "vespa" False "Arduina" False "suzuki"

 #En este script necesitaremos usar dos columnas y como es fijo pues tendremos que ir uno a uno con los elementos que queremos en la lista
