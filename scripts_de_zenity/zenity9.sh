dialog --menu "Equipo" 0 0 0 1 "Betis" 2 "Sevilla" 3 "RM" 2>/tmp/dialog5.txt
Equipo=$(cat /tmp/dialog5.txt)
echo "$Equipo"
