#!/bin/bash

#SSH key copy 
ansible-playbook ansible-ssh-keygen.yml --ask-pass;
#run ansible for open-mpi
ansible-playbook ansible-openmpi.yml --ask-pass;

#run ansible for mpi_hosts
ansible-playbook ansible-mpi_hosts.yml --ask-pass;
