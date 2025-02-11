#!/bin/bash

# Obtener la IP pública
IP=$(curl -s ifconfig.me)

# Editar el README.md y actualizar la IP
sed -i "s/🌎 IP Pública: .*/🌎 IP Pública: $IP/" README.md
