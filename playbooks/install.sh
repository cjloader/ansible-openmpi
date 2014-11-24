#!/bin/bash
for i in $(cat inventory); do ssh -t $i rm ~/.ssh/authorized_keys; for j in $(cat inventory); do ssh-keygen -t rsa; ssh-copy-id root@$j;done done
ansible-playbook ansible-openmpi.yml;
