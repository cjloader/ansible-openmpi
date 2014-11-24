#!/bin/bash
for i in $(cat inventory); do ssh -t root@$i rm ~/.ssh/authorized_keys; ssh -t  root@$i ssh-keygen -t rsa; ssh -t root@$i cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys; done
ansible servers -m copy src=~/.ssh/authorized_keys dest=~/.ssh/authorized_keys;
ansible-playbook ansible-openmpi.yml;
