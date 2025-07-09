#!/bin/bash

LOG_FILE="/var/log/suricata/eve.json"

tail -Fn0 "$LOG_FILE" | while read -r line; do
    echo "$line" | jq -e 'select(.event_type=="alert" and .alert.severity <= 1)' >/dev/null 2>&1
    if [ $? -eq 0 ]; then
        # Parse details for the alert
        src=$(echo "$line" | jq -r '.src_ip // "?"')
        dest=$(echo "$line" | jq -r '.dest_ip // "?"')
        sig=$(echo "$line" | jq -r '.alert.signature')
        sev=$(echo "$line" | jq -r '.alert.severity')

        # Notify with mako
        notify-send -u critical "🚨 Suricata Alert (Severity $sev)" "$sig\n$src → $dest"
    fi
done



