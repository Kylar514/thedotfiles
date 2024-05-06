#!/bin/bash

nmcli con down guest homelab iot notag testlab general 'Wired connection 1'

nmcli con up management
