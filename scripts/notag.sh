#!/bin/bash

nmcli con down management guest iot homelab testlab general 'Wired connection 1'

nmcli con up notag
