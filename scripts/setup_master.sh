#!/bin/bash


sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible

ssh-keygen -t rsa -f /home/vagrant/.ssh/id_rsa -N ""
sudo chmod 644 /home/vagrant/.ssh/id_rsa