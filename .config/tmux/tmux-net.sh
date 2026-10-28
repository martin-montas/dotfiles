#!/bin/bash

IFACE="wlp0s20f3"

data=$(vnstat -i "$IFACE" --oneline)

if [[ -z "$data" ]]; then
    echo "↓ N/A ↑ N/A"
    exit 1
fi

echo "$data" | awk -F';' '{printf "↓%s ↑%s\n", $4, $5}'
