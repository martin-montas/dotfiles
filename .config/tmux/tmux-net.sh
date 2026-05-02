#!/bin/bash

IFACE="wlp2s0"

data=$(vnstat -i "$IFACE" --oneline 2>/dev/null)

iface=$(echo "$data" | awk -F';' '{print $2}')
rx=$(echo "$data" | awk -F';' '{print $4}')
tx=$(echo "$data" | awk -F';' '{print $5}')

echo "NET:$iface ↓$rx ↑$tx"
