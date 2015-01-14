#!/bin/bash

#Create SSH key on ansible machine
ssh-keygen -t rsa;
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
#SSH key copy 
ansible-playbook ansible-ssh-keygen.yml;
#run ansible for open-mpi
ansible-playbook ansible-openmpi.yml;

#run ansible for mpi_hosts
ansible-playbook ansible-mpi_hosts.yml;
