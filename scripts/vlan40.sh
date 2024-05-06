#!/bin/bash

nmcli con down management guest iot notag testlab general 'Wired connection 1'

nmcli con up homelab
