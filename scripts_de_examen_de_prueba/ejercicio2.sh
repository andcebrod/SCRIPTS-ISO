#!/bin/bash
dialog --title "Usuarios" --inputbox "Introduzca nombre de usuario" 0 0 2>/tmp/aux.txt
usuario=$(cat /tmp/aux.txt)
usuariolinea=$(cat /etc/passwd|grep "$usuario")
dialog --title "Usuario" --msgbox "$usuariolinea" 0 0


