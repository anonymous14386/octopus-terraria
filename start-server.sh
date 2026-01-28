#!/bin/bash

WORLD_PATH="/root/.local/share/Terraria/Worlds"
WORLD_FILE="$WORLD_PATH/Octopus.wld"

# Check if world already exists
if [ -f "$WORLD_FILE" ]; then
    echo "World file found, starting server..."
    ./TerrariaServer.bin.x86_64 -world "$WORLD_FILE" -autocreate 0
else
    echo "No world found, creating new drunk world with both evils..."
    ./TerrariaServer.bin.x86_64 -world "$WORLD_FILE" -autocreate 2 -worldname "Octopus World" -difficulty 0 -maxplayers 16 -port 7777 -seed 05162020
fi
