#!/bin/bash
PASSWORD=$(cat ../key.txt)
WORKING_TARGET='lockm002@csc351-vm1.eng.franciscan.edu'
USERNAME='lockm002'

sshpass -p "$PASSWORD" ssh $WORKING_TARGET "cd /srv/csc351web/$USERNAME && git pull && bash -l"
