#!/bin/bash

#SSH key copy 
ansible-playbook ansible-ssh-keygen.yml ansible-openmpi.yml ansible-mpi_hosts.yml --ask-pass;
#run ansible for mpi_hosts
#ansible-playbook ansible-mpi_hosts.yml --ask-pass;
