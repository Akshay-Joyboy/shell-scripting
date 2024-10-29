#!/bin/bash
#
###################################################
#Author: Akshay
#Date: 28-10-2024
#Version: v1
#Purpose: this script outputs node health
###################################################
echo
set -x #debug mode
set -e #exit the script when there is an error
set -o pipefail





#sgfhsgfsfnjfgngfnd | echo


df -h

df -Th

free -g

free -h

nproc

ps -ef | grep amazon | awk -F" " '{print$2}'


