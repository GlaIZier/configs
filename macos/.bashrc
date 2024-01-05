# Non-login shell config
# Every interactive non-login shell reads .bashrc first. 
# Normally .bashrc is the best place to add aliases and Bash related functions.
# For simplicity put PATH and other env vars here and avoid using .profile and .bash_profile as it is read every time a new shell is created, e.g.

# export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-9.0.4.jdk/Contents/Home"
# export PATH="/usr/bin:/bin:/usr/sbin:/sbin"


# aliases
alias ll='ls -lah'
alias calc='wcalc -c'

#docker
alias dim="docker images"
alias dima="docker images -a"
alias dimu="docker images -a | grep '^<none>'"
alias dps="docker ps"
alias drm="docker rm"
alias drmf="docker rm -f"
alias dcpf="docker container prune -f"
alias drmi="docker rmi"
alias drmia="docker rmi \$(docker images -a -q)"
alias dst="docker stop"
alias dsta="docker stop \$(docker ps -a -q)"
alias dk="docker kill"
alias dka="docker kill \$(docker ps -a -q)"
alias dsdf="docker system df"
alias dspa="docker system prune -a -f"

#git
alias gst='git status'
alias ga='git add'
alias gc='git commit'
alias gull='git pull'
alias gush='git push'
alias gb='git branch --color'
alias gco='git checkout'
alias gd='git diff --color'
alias gdn='git diff --name-only'
alias gr='git rebase'
alias gl='git log --graph --all --full-history --color --branches --decorate --name-status'
alias gls='git log --graph --all --full-history --color --pretty=format:"%C(yellow) %h %C(cyan) %ad %Creset %s %b %C(red) %d %Creset" --date=short'
alias gash='git stash'
alias gashl='git stash list'
alias gasha='git stash apply'
alias gashd='git stash drop'

function secenv(){
  # https://medium.com/@johnjjung/how-to-store-sensitive-environment-variables-on-macos-76bd5ba464f6
  # security add-generic-password -a "$USER" -s 'name_of_your_key' -w 'passphrase'
  export some_key=$(security find-generic-password -a "$USER" -s "some_key" -w)
}
