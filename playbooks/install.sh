#!/bin/bash

#SSH key copy
for i in $(cat inventory); do cat ~/.ssh/id_rsa.pub | ssh root@$i "rm ~/.ssh/authorized_keys; cat >> ~/.ssh/authorized_keys"; done
#run ansible for open-mpi
ansible-playbook ansible-openmpi.yml;

ansible-playbook ansible-ssh-keygen.yml;

#run ansible for mpi_hosts
ansible-playbook ansible-mpi_hosts.yml;
