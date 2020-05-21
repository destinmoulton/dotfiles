#!/bin/bash
# Run a set of startup scripts

# Make sure the .profile is loaded no matter what
source /home/destin/.profile & 

# Load the keychain manager for ssh
#source /home/destin/.config/i3/scripts/ssh_keychain.sh &

eval $(keychain --eval --quiet id_rsa)