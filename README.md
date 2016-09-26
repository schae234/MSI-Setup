# MSI-Setup
This is the setup script to edit bashrc to enable the shared 
environment the McCue lab agreed to use.


## Shared Directives
There are several shared directives that we agreed to follow as a group
to maximize efficiency of MSI computing space.

### Shared space
We currently have a shared directory for group programs and collaborative
projects. It is located at `/home/mccuem/shared`. All things in the shared
space will be enforced group readable and directories will be enforced to be
group writable. 

### Shared programs
There are shared binaries/programs/libraries installed at `/home/mccuem/shared/.local`
These programs will be put at the front of your PATH variable.

### Project specific environments
Sometimes sharing is not enough. e.g. you might need a different program or version
of program installed than what is in the system folder. To do this we will use virtual
[Anaconda environments](http://conda.pydata.org/docs/using/envs.html#managing-environments).


## Setup
To set this up, sign into MSI and execute the following commands:
```
mkdir -p ~/Codes
cd ~/Codes
git clone git@github.com:UMNPonyClub/MSI-Setup.git
cd MSI-Setup/
source ./setup.sh
```
