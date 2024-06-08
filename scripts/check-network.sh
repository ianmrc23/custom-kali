#!/usr/bin/env bash

connected="󰒢 Online"
disconnected="󰞃 Offline"

check_connection() {
    if ping -c 1 google.com >/dev/null || \
        ping -c 1 github.com >/dev/null; then
        echo "$connected"
    else
        echo "$disconnected"
    fi
}

while true; do
    ID="$(ip link | awk '/state UP/ {print $2}')"
    if [[ "$ID" == e* ]]; then
        check_connection ; sleep 25
    else
        check_connection ; sleep 5
    fi
done
