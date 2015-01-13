#!/bin/bash


#install build essential
for i in $(cat inventory); do ssh root@$i 'sudo apt-get install build-essential'; done
#SSH key copy 
ansible-playbook ansible-ssh-keygen.yml;
#run ansible for open-mpi
ansible-playbook ansible-openmpi.yml;

#run ansible for mpi_hosts
ansible-playbook ansible-mpi_hosts.yml;
