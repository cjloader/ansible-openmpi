#!/bin/bash
for i in $(cat inventory); do ssh -t $i rm ~/.ssh/authorized_keys; ssh-keygen -t rsa; for j in $(cat inventory); do ssh -t $i cat ~/.ssh/id_rsa.pub >> ssh -t $j ~/.ssh/authorized_keys; done done
ansible-playbook ansible-openmpi.yml;
