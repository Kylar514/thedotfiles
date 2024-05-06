#!/bin/bash

nmcli con down management guest iot notag homelabe general 'Wired connection 1'

nmcli con up testlab
