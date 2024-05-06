#!/bin/bash

nmcli con down management homelab iot notag testlab general 'Wired connection 1'

nmcli con up guest
