#!/bin/bash
#
# executed first if it is a login shell (ex. login from tty or ssh) and --noprofile is not specified
# run both profile and bashrc from here

source ~/.profile # get my PATH setup
source ~/.bashrc  # get my Bash aliases