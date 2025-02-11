#!/bin/bash

# Obtener información del sistema
IP_PUBLICA=$(curl -s ifconfig.me)
SISTEMA=$(uname -s)
KERNEL=$(uname -r)
CPU=$(lscpu | grep "Model name" | awk -F ': ' '{print $2}')
RAM_TOTAL=$(free -m | awk '/^Mem:/{print $2}')
RAM_USADA=$(free -m | awk '/^Mem:/{print $3}')

# Actualizar el README.md
sed -i "/<!-- SISTEMA -->/c\🌐 **IP Pública:** $IP_PUBLICA  |  🖥️ **Sistema:** $SISTEMA  |  🧠 **CPU:** $CPU  |  💾 **RAM:** $RAM_USADA MB / $RAM_TOTAL MB" README.md

