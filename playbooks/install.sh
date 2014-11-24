#!/bin/bash
for i in $(cat inventory); do ssh -t root@$i rm ~/.ssh/authorized_keys; ssh-keygen -t rsa; for j in $(cat inventory); do ssh -t root@$i cat ~/.ssh/id_rsa.pub >> ssh -t root@$j ~/.ssh/authorized_keys; done done
ansible-playbook ansible-openmpi.yml;
