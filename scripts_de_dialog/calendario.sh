#!/bin/bash
dialog --title "dia" --inputbox "Entra dia" 0 0 2>/tmp/aux.txt
dia=$(cat /tmp/aux.txt)
dialog --title "mes" --inputbox "Entra mes" 0 0 2>/tmp/aux.txt
mes=$(cat /tmp/aux.txt)
dialog --title "year" --inputbox "Entra year" 0 0 2>/tmp/aux.txt
year=$(cat /tmp/aux.txt)
dialog --title "Calendario" --calendar "Elige una fecha" 0 0 $dia $mes $year 
