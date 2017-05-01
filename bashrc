source $HOME/rc/aliases
source $HOME/rc/docker_boot
source $HOME/rc/prompt

# ruby
. $HOME/rc/bashrc.d/ruby

# node
. $HOME/rc/bashrc.d/node

# go
. $HOME/rc/bashrc.d/golang

# android
. $HOME/rc/bashrc.d/android

# python
. $HOME/rc/bashrc.d/python

# less-highlighting
. $HOME/rc/bashrc.d/less-highlighting

export EDITOR='subl -w'
#source $HOME/.githubcreds


#sh ~/.bash_login

source $HOME/rc/helpers.sh

# added by travis gem
[ -f /Users/yolk/.travis/travis.sh ] && source /Users/yolk/.travis/travis.sh

# added by fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
