#!/bin/bash

#SSH key copy
for i in $(cat inventory); do ssh-copy-id root@$i; done

#run ansible for open-mpi
ansible-playbook ansible-openmpi.yml;

#run ansible for mpi_hosts
ansible-playbook ansible-mpi_hosts.yml;
