source $HOME/rc/aliases
source $HOME/rc/docker_boot


D=$'\e[37;40m'
PINK=$'\e[35;40m'
GREEN=$'\e[32;40m'
ORANGE=$'\e[33;40m'
# http://henrik.nyh.se/2008/12/git-dirty-prompt
# http://www.simplisticcomplexity.com/2008/03/13/show-your-git-branch-name-in-your-prompt/
#   username@Machine ~/dev/dir[master]$   # clean working directory
#   username@Machine ~/dev/dir[master*]$  # dirty working directory


function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1/"
}
function format_git_branch {
 [[ $(parse_git_branch | tail -n1) != "" ]] && echo "[$(parse_git_branch)$(parse_git_dirty)]" 
}

alias git_branch=parse_git_branch

export PS1='\n${PINK}\u ${D}at ${ORANGE}\h ${D}in ${D}\w\n$(format_git_branch) ☯ '

#export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
#export PATH=$HOME/Applications/bin:/usr/local/bin:/usr/local/sbin:$HOME/bin:/Volumes/underfabric/.rbenv/shims:/usr/local/share/python:/usr/local/share/npm/bin:$PATH
export PATH=$HOME/Applications/bin:/usr/local/bin:/usr/local/sbin:$HOME/bin:/usr/local/share/npm/bin:$PATH
#npm
export PATH=$PATH:./node_modules/.bin

#go
export PATH=$PATH:/usr/local/opt/go/libexec/bin:$HOME/go/bin
export GOPATH=$HOME/go

#export ANDROID_SDK_ROOT=/usr/local/opt/android-sdk


export EDITOR='subl -w'
#source $HOME/.githubcreds

PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'


#sh ~/.bash_login
