# This sets the environment for interactive shells. This gets loaded after .zprofile. 

[[ -e ~/.bashrc ]] && emulate sh -c 'source ~/.bashrc'

function secenv(){
  # https://medium.com/@johnjjung/how-to-store-sensitive-environment-variables-on-macos-76bd5ba464f6
  # security add-generic-password -a "$USER" -s 'name_of_your_key' -w 'passphrase'
  export name_of_your_key=$(security find-generic-password -a "$USER" -s "name_of_your_key" -w)
}