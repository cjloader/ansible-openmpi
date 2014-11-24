#!/bin/bash
for i in $(cat inventory); do ssh-id-copy root@$i; done
ansible-playbook ansible-openmpi.yml;
