#!/bin/bash

# Obtener la fecha actual
CURRENT_DATE=$(date +"%Y-%m-%d %H:%M:%S")

# Obtener IP Pública (Usa un servicio externo como ifconfig.me)
PUBLIC_IP=$(curl -s ifconfig.me)

# Crear el contenido del README con datos dinámicos
cat <<EOF > README.md
# 🔥 Perfil Hacker 🔥

| 🌍 **SYSTEM STATUS** | **VALUE** |
|----------------|----------------|
| 🔋 **Uptime** | $(uptime -p) |
| 📡 **Last Update** | $CURRENT_DATE |
| 🛰 **IP Address** | $PUBLIC_IP |
| 🛠 **Current Task** | `Pentesting...` |

> ⚠️ **Este perfil se actualiza automáticamente cada 24 horas.**
EOF
