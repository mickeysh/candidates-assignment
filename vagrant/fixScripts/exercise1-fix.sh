#!/bin/bash
#add fix to exercise1 here
# install curl
apt-get install -y curl

# delete route 
ip route del 208.86.224.90/32   dev eth0 src 192.168.100.10
