#!/bin/bash
for i in $(cat inventory); do ssh -t $i rm ~/.ssh/authorized_keys; ssh-keygen -t rsa;
ansible host -m fetch src=~/.ssh/authorized_keys dest=~/.ssh/authorized_keys; 
ansible-playbook ansible-openmpi.yml;
