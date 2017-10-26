#!/bin/bash
#add fix to exercise5-server1 here

# Disable password authentication and strict host key checking
sed  -i  's/#   StrictHostKeyChecking ask/   StrictHostKeyChecking no/i'  /etc/ssh/ssh_config

# restart ssh service
service ssh restart

# generate client RSA key
su - vagrant -c "ssh-keygen -t rsa -N '""' -f /home/vagrant/.ssh/id_rsa" 

cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys

# copy the key to vagrant shared directory
mkdir /vagrant/.ssh
cp /home/vagrant/.ssh/id_rsa* /vagrant/.ssh/   
