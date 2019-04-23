# https://superuser.com/questions/187639/zsh-not-hitting-profile?newreg=2250a46be07d4f3891fd8e47f3fc968f
# Is used by login shells
# ~/.profile is not loaded by zsh at login.
# zsh loads ~/.zprofile at login.
# zsh loads ~/.zshrc when starting a new terminal session or at login.
# execute .profile from here

emulate sh
. ~/.profile
emulate zsh