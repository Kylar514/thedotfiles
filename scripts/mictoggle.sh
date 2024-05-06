#!/bin/bash

output=$(wpctl status -n)

#to modify, run wpctl status -n and copy the name into the below lines.  make sure to use "\" to escape your "."
fifine_id=$(echo "$output" | grep -Po '\b(\d+)\.(?=.*alsa_input\.usb-FIFINE_Microphones_fifine_Microphone_REV1\.0-00\.iec958-stereo)' | sed -n 's/\([0-9]*\).*/\1/p' | sed 's/\.0$//')
headphones_id=$(echo "$output" | grep -Po '\b(\d+)\.(?=.*alsa_input\.usb-SteelSeries_Arctis_Nova_Pro_Wireless-00\.mono-fallback)' | sed -n 's/\([0-9]*\).*/\1/p' | sed 's/\.0$//')

if echo "$output" | grep -q "^\s*\*\s*$fifine_id\."; then
    current_default=$fifine_id
elif echo "$output" | grep -q "^\s*\*\s*$headphones_id\."; then
    current_default=$headphones_id
fi

# echo "fifine=${fifine_id}"
# echo "headphones=${headphones_id}"
# echo "current_default=${current_default}"

if [ "$current_default" == "$headphones_id" ]; then
    wpctl set-default $fifine_id
else
    wpctl set-default $headphones_id
fi
