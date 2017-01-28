#!/bin/bash
entry=$(zenity --password)
case $? in
0) echo "Contraseña:$(echo $entry)";;
1) echo "No iniciar sesion";;
esac
