#!/bin/bash
for i in $(cat inventory); do ssh-keygen -t rsa; ssh-copy-id root@$i; done
ansible-playbook ansible-openmpi.yml;
