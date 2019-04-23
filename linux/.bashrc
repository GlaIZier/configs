#!/bin/bash
#   ~/.bashrc
#
# Non-login shells (shells that are created by the user) execute only execute ~/.bashrc, not /.profile or ~/.bash_profile. Here everything that only applies to bash is defined (functions, aliases, bash-only variables like HISTSIZE (this is not an environment variable, don't export it!), shell options with set and shopt).

# aliases
alias ll='ls -lah'
alias calc='wcalc -c'

#docker
alias dim="docker images"
alias dimu="docker images -a | grep '^<none>'"
alias dps="docker ps"
alias drm="docker rm"
alias drmi="docker rmi"

#git
alias gst='git status'
alias ga='git add'
alias gc='git commit'
alias gull='git pull'
alias gush='git push'
alias gb='git branch --color'
alias gco='git checkout'
alias gd='git diff --color'
alias gr='git rebase'
alias gl='git log --graph --all --full-history --color --branches --decorate --name-status'
alias gls='git log --graph --all --full-history --color --pretty=format:"%C(yellow) %h %C(cyan) %ad %Creset %s %b %C(red) %d %Creset" --date=short'
