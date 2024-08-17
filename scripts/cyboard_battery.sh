#!/bin/bash
device_address="E1:5E:CE:2F:7A:4F"
while true; do
    battery_percentage=$(bluetoothctl info "$device_address" | grep "Battery Percentage" | awk '{print $3}')
    battery_decimal=$(( 16#$battery_percentage ))
    if [ "$battery_decimal" -eq 30 ] || [ "$battery_decimal" -eq 10 ]; then
        notify-send "Keyboard Battery Status" "Warning: Battery Percentage is at $battery_decimal%"
    fi
    sleep 600
done
