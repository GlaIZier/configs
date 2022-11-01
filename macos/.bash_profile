# NO NEED ANYMORE? Use .bashrc
# Login shell config
# The .bash_profile file contains commands for setting environment variables. 
# Consequently, future shells inherit these variables.
# On every interactive login, the Bash shell executes .bash_profile. 
# If .bash_profile is not found in the home directory, 
# Bash executes the first readable file found from .bash_login and .profile.

# Path var and env settings should be here e.g.
# export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-9.0.4.jdk/Contents/Home"
# export PATH="/usr/bin:/bin:/usr/sbin:/sbin"

# Also, execute all existing files surving the same purpose
if [ -f ~/.bash_login ]; then
#    echo ".bash_profile executing " ~/.bash_login
    source ~/.bash_login
fi
if [ -f ~/.profile ]; then
#    echo ".bash_profile executing " ~/.profile
    source ~/.profile
fi
# and non-login config
if [ -f ~/.bashrc ]; then
#    echo ".bash_profile executing " ~/.bashrc
    source ~/.bashrc
fi
