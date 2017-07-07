#!/bin/bash
# File: server_check.sh
for machine in $(cut -d, -f1 ~/Documents/linux.csv); do
  if [[ -z $(grep $machine ~/Desktop/known_host) ]]; then
    echo $machine
  else
    :
  fi
done > non-known_host
