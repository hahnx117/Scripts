#!/bin/bash
# File: keyscan.sh
for server in $(cut -d, -f1 linux.csv); do
  ssh-keyscan $server;
done > known_hosts
fi
