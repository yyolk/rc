#source $HOME/rc/docker_boot
source $HOME/rc/prompt
source $HOME/rc/aliases
source $HOME/rc/aliases.d/*
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
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash
