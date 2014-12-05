#!/bin/bash

#SSH key copy
for i in $(cat inventory); do ssh-copy-id root@$i; done

#run ansible
ansible-playbook ansible-openmpi.yml;
