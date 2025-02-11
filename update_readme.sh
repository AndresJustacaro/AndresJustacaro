#!/bin/bash

# Obtener IP pública
IP=$(curl -s ifconfig.me)

# Obtener nombre del sistema
OS=$(uname -o)

# Obtener tiempo de actividad del sistema
UPTIME=$(uptime -p)

# Obtener fecha y hora actual
DATE=$(date +"%Y-%m-%d %H:%M:%S")

# Mensaje que se mostrará en el README
INFO="> **💻 Estado del Sistema**  
🔹 **IP Pública:** \`$IP\`  
🔹 **Sistema Operativo:** \`$OS\`  
🔹 **Tiempo de Actividad:** \`$UPTIME\`  
🔹 **Última actualización:** \`$DATE\`  
"

# Reemplazar la sección dentro del README.md
sed -i "/<!-- SYSTEM INFO START -->/,/<!-- SYSTEM INFO END -->/c\<!-- SYSTEM INFO START -->\n$INFO\n<!-- SYSTEM INFO END -->" README.md
