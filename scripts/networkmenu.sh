#!/bin/bash

selection=$(echo -e "Management\nGuest\nIoT\nHomeLab\nTestNetwork\nGeneral" | wofi --dmenu --width=300 --height=200)

case "$selection" in
  "Management")
    ~/thedotfiles/scripts/vlan10.sh
    ;;
  "Guest")
    ~/thedotfiles/scripts/vlan20.sh
    ;;
  "IoT")
    ~/thedotfiles/scripts/vlan30.sh
    ;;
  "HomeLab")
    ~/thedotfiles/scripts/vlan40.sh
    ;;
  "TestNetwork")
    ~/thedotfiles/scripts/vlan50.sh
    ;;
  "General")
    ~/thedotfiles/scripts/vlan60.sh
    ;;
  *)
    exit 0
    ;;
esac
