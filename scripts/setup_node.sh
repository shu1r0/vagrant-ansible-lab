#!/bin/bash


sudo apt-get install -y sshpass
sshpass -p "vagrant" scp -o StrictHostKeyChecking=no vagrant@10.20.30.11:/home/vagrant/.ssh/id_rsa.pub .
cat id_rsa.pub | tee -a .ssh/authorized_keys 