#!/bin/bash


#install build essential
for i in $(cat inventory); do ssh root@$i 'sudo apt-get install build-essential';  cat ~/.ssh/id_rsa.pub | ssh root@$i "rm ~/.ssh/authorized_keys; cat >> ~/.ssh/authorized_keys"; done
#SSH key copy 
ansible-playbook ansible-ssh-keygen.yml;
#run ansible for open-mpi
ansible-playbook ansible-openmpi.yml;

#run ansible for mpi_hosts
ansible-playbook ansible-mpi_hosts.yml;
