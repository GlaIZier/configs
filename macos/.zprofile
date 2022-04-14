# .zlogin and .zprofile are basically the same thing - they set the environment for login shells
# .zshenv → .zprofile → .zshrc → .zlogin → .zlogout

emulate sh
if [ -f ~/.bash_profile ]; then
#    echo ".zprofile executing " ~/.bash_profile
    source ~/.bash_profile
fi
emulate zsh
