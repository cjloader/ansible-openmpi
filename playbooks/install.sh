#!/bin/bash
for i in $(cat inventory); 
    do ssh -t $i rm ~/.ssh/authorized_keys; ssh-keygen -t rsa; 
        for j in $(cat inventory);
            do ssh-copy-id root@$j; 
        done 
done
ansible-playbook ansible-openmpi.yml;
