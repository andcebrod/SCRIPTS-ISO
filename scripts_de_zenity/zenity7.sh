#!/bin/bash
(
echo "10" ; sleep 1
echo "# Actualizando los registros de los correos" ; sleep 1
echo "20" ; sleep 1
echo "# Reiniciando las tareas de cron" ; sleep 1
echo "50" ; sleep 1
echo "Esta linea se ignorará" ; sleep 1
echo "75" ; sleep 1
echo "# Reiniciando el sistema" ; sleep 1
echo "100" ; sleep 1
) |
zenity --progress \
  title="Actualizando los registros del sistema" \
  text="Rastreando los registros de los correos..." \
  percentage=0

