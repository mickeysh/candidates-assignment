#!/bin/bash
#add fix to exercise2 here

# remove host file record that points www.ascii-art.de to local host
sed -i.bck '/www.ascii-art.de/d' /etc/hosts

