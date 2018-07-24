load_if_exists()
{
  if [ -f "$1" ] ; then
    echo "Loading $1"
    . "$1"
  else
    echo "Skipping $1, since it's not local"
  fi
}

#source $HOME/rc/docker_boot
load_if_exists $HOME/rc/prompt
load_if_exists $HOME/rc/aliases
load_if_exists $HOME/rc/aliases.d/docker-commands
load_if_exists $HOME/rc/aliases.d/terraform
load_if_exists $HOME/rc/aliases.d/todoist

# less-highlighting
load_if_exists $HOME/rc/bashrc.d/less-highlighting

# ruby
load_if_exists $HOME/rc/bashrc.d/ruby

# node
load_if_exists $HOME/rc/bashrc.d/node

# go
load_if_exists $HOME/rc/bashrc.d/golang

# android
load_if_exists $HOME/rc/bashrc.d/android

# python
load_if_exists $HOME/rc/bashrc.d/python

# google-cloud-sdk
load_if_exists $HOME/rc/bashrc.d/google-cloud-sdk

# rust - cargo
load_if_exists $HOME/rc/bashrc.d/rust

sleep 0.1 && clear
#export EDITOR='subl -w'
export EDITOR='vim'
#source $HOME/.githubcreds


#sh ~/.bash_login

source $HOME/rc/helpers.sh

# added by travis gem
[ -f /Users/yolk/.travis/travis.sh ] && source /Users/yolk/.travis/travis.sh

# added by fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
#[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
## tabtab source for sls package
## uninstall by removing these lines or running `tabtab uninstall sls`
#[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash
