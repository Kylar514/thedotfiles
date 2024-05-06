#!/bin/bash

# nmcli connection delete notag
# nmcli connection delete management
# nmcli connection delete guest
# nmcli connection delete iot
# nmcli connection delete homelab
# nmcli connection delete testlab

nmcli connection add type ethernet con-name notag ifname enp0s31f6
nmcli connection add type vlan con-name management dev enp0s31f6 id 10
nmcli connection add type vlan con-name guest dev enp0s31f6 id 20
nmcli connection add type vlan con-name iot dev enp0s31f6 id 30
nmcli connection add type vlan con-name homelab dev enp0s31f6 id 40
nmcli connection add type vlan con-name testlab dev enp0s31f6 id 50
nmcli connection add type vlan con-name general dev enp0s31f6 id 60
