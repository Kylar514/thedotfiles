#!/bin/bash

nmcli con down management guest iot notag testlab testlab 'Wired connection 1'

nmcli con up general 
