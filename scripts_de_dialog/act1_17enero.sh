#!/bin/bash
dialog --menu "equipo" 0 0 0 1 "Betis" 2 "Sevilla" 3 "Cadiz" 2>/tmp/aux.txt
equipo=$(cat /tmp/aux.txt)
dialog --infobox "equipo$equipo" 0 0
