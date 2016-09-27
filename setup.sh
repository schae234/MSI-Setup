#!/bin/bash
# Script to set up MSI so that everyone plays along.
# Written by Jack Stanek and Rob Schaefer.

# 
CONDA_BASE="/home/mccuem/shared/.local/conda"
SHARED_BASE='/home/mccuem/shared/.local'



cat << EOF > $HOME/.mccuem_profile
# McCuelab Shared directives
# Installed $(date)
export PATH=$CONDA_BASE/bin:\$PATH
export PATH=$SHARED_BASE/bin:\$PATH
export LD_LIBRARY_PATH=/home/mccuem/shared/.local/lib:\$LD_LIBRARY_PATH

umask 0027

function fix-permissions {
    echo "Fixing permissions...."
    find /home/mccuem/ ! -readable -prune -o -user $(whoami) -type f -exec chmod g+r {} \; -o -user $(whoami) -type d -exec chmod g+rx {} \;
    echo ".ssh folder cannot be group readable"
    chmod -R g-rw ~/.ssh
    echo "DONE!"
}


EOF

if [[ $(grep "source \$HOME/.mccuem_profile" $HOME/.bashrc | wc -l ) != 1 ]]; then
    echo "source \$HOME/.mccuem_profile" >> $HOME/.bashrc
fi

source $HOME/.mccuem_profile

cat <<EOF
INSTALLATION COMPLETE
EOF

