#!/bin/bash

output=$(bluetoothctl info)
battery_line=$(echo "$output" | grep "Battery Percentage" | tail -n 1)
battery_percentage=$(echo "$battery_line" | grep -oP '\(\K[^)]*')
if [ -n "$battery_percentage" ]; then
    battery_value=$(echo "$battery_percentage" | tr -d '%')
    if [ "$battery_value" -ge 75 ]; then
        icon="battery-full"
    elif [ "$battery_value" -ge 50 ]; then
        icon="battery-good"
    elif [ "$battery_value" -ge 25 ]; then
        icon="battery-medium"
    else
        icon="battery-low"
    fi
    notify-send -i "$icon" -t 5000 "Battery Percentage: $battery_percentage"
else
    notify-send -i "battery-missing" "Battery Percentage not found"
fi
