#!/bin/bash
# Script to set up MSI so that everyone plays along.
# Written by Jack Stanek and Rob Schaefer.

# 
CONDA_BASE="/home/mccuem/shared/.local/conda"
SHARED_BASE='/home/mccuem/shared/.local'



cat << EOF > $HOME/.mccuem_profile
# McCuelab Shared directives
export PATH=$CONDA_BASE/bin:\$PATH
export PATH=$SHARED_BASE/bin:\$PATH
umask 0027
EOF

if [[ $(grep "source \$HOME/.mccuem_profile" $HOME/.bashrc | wc -l ) != 1 ]]; then
    echo "source \$HOME/.mccuem_profile" >> $HOME/.bashrc
fi

source $HOME/.mccuem_profile

cat <<EOF
INSTALLATION COMPLETE
EOF

return 0
