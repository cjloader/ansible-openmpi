!#/bin/bash

for i in $(cat inventory); do ssh-copy-id root@$i; done
ansible-playbook ansible-openmpi.yml
