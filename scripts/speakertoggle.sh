#!/bin/bash

# output=$(wpctl status -n)
#
# #to modify, run wpctl status -n and copy the name into the below lines.  make sure to use "\" to escape your "."
# loudspeaker_id=$(echo "$output" | grep -Po '\b(\d+)\.(?=.*alsa_output\.pci-0000_00_1f\.3\.3\.analog-stereo)' | sed -n 's/\([0-9]*\).*/\1/p' | sed 's/\.0$//')
# headphones_id=$(echo "$output" | grep -Po '\b(\d+)\.(?=.*alsa_output\.usb-SteelSeries_Arctis_Nova_Pro_Wireless-00\.analog-stereo)' | sed -n 's/\([0-9]*\).*/\1/p' | sed 's/\.0$//')
#
# if echo "$output" | grep -q "^\s*\*\s*$loudspeaker_id\."; then
#     current_default=$loudspeaker_id
# elif echo "$output" | grep -q "^\s*\*\s*$headphones_id\."; then
#     current_default=$headphones_id
# fi
#
# echo "loudspeaker=${loudspeaker_id}"
# echo "headphones=${headphones_id}"
# echo "current_default=${current_default}"
#
# if [ "$current_default" == "$headphones_id" ]; then
#     wpctl set-default $loudspeaker_id
# else
#     wpctl set-default $headphones_id
# fi

#!/bin/bash

output=$(wpctl status -n)

# Extract loudspeaker and headphones IDs using awk
loudspeaker_id=$(echo "$output" | awk '/alsa_output\.pci-0000_00_1f\.3\.3\.analog-stereo/ {print $1}' | head -n 1 | awk -F '.' '{print $1}')
headphones_id=$(echo "$output" | awk '/alsa_output\.usb-SteelSeries_Arctis_Nova_Pro_Wireless-00\.analog-stereo/ {print $1}' | head -n 1 | awk -F '.' '{print $1}')

# Check if either loudspeaker or headphones is the current default
if [ -n "$loudspeaker_id" ] && echo "$output" | grep -q "^\s*\*\s*$loudspeaker_id\."; then
    current_default=$loudspeaker_id
elif [ -n "$headphones_id" ] && echo "$output" | grep -q "^\s*\*\s*$headphones_id\."; then
    current_default=$headphones_id
fi

echo "loudspeaker=${loudspeaker_id}"
echo "headphones=${headphones_id}"
echo "current_default=${current_default}"

# Toggle default based on current default
if [ "$current_default" == "$headphones_id" ]; then
    wpctl set-default $loudspeaker_id
else
    wpctl set-default $headphones_id
fi
