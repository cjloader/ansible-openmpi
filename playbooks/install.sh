#!/bin/bash
for i in $(cat inventory); do ssh-copy-id root@$i; done
ansible-playbook ansible-openmpi.yml;
for i in $(cat inventory); do cp inventory root@$i; mv inventory mpi_hosts; sed '/[host]/d'; sed '/[servers]/d'; done

