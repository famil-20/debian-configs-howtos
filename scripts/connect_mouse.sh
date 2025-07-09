#!/bin/bash

declare -A DEVICES
DEVICES["1"]="Microsoft Bluetooth Mouse"
DEVICES["2"]="MX Anywhere 3S"
echo "Select a device to connect:"
for i in "${!DEVICES[@]}"; do
    echo "$i) ${DEVICES[$i]}"
done
echo "0) Enter device name manually"

read -p "Enter your choice: " choice

if [[ "$choice" == "0" ]]; then
    read -p "Enter the Bluetooth device name: " device_name
else
    device_name="${DEVICES[$choice]}"
fi

if [[ -z "$device_name" ]]; then
    echo "Invalid selection. Exiting."
    exit 1
fi

echo "Attempting to connect to: $device_name"

bt-adapter -d & sleep 3 && kill $!

bt-device -c "$device_name" && bt-device --set "$device_name" Trusted true

