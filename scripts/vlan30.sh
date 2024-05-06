#!/bin/bash

nmcli con down management homelab guest notag testlab general 'Wired connection 1'

nmcli con up iot
