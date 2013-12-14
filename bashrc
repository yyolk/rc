alias chrome="open -a 'Google Chrome'"
alias nose="node server*"
alias noce="node server & chrome 'http://localhost:3000'"
alias ni="npm install"
alias cit="python $HOME/code/python/cit/cit.py"
alias byword='open -a Byword'
alias l="ls -G"
alias ls="ls -G"
alias mkpdir="mkdir `date +%Y%m%d-%H%M`"
alias vlc="/Applications/VLC.app/Contents/MacOS/VLC"
alias pshttp="python -m SimpleHTTPServer"

alias g="git"
alias gc="git commit"
alias gs="git status"
alias ggh="git push ; git push heroku master"

alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias love='/Applications/love.app/Contents/MacOS/love'

#django
alias va='source ./venv/bin/activate'
alias vc='virtualenv venv --distribute'

#redis
alias sredis='redis-server /usr/local/etc/redis.conf'

#Mou
alias mou='open -a Mou'

#alias rtorrent
alias rcp='scp *.torrent torr:watch && rm *.torrent'
alias rcpw='scp *.torrent torr:watch_warez && rm *.torrent'

#alias j=autojump
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
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}

export PS1='\n${PINK}\u ${D}at ${ORANGE}\h ${D}in ${D}\w\n$(parse_git_branch) ☯ '

#export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
#export PATH=$HOME/Applications/bin:/usr/local/bin:/usr/local/sbin:$HOME/bin:/Volumes/underfabric/.rbenv/shims:/usr/local/share/python:/usr/local/share/npm/bin:$PATH
export PATH=$HOME/Applications/bin:/usr/local/bin:/usr/local/sbin:$HOME/bin:/usr/local/share/npm/bin:$PATH
#export ANDROID_SDK_ROOT=/usr/local/opt/android-sdk

export EDITOR='subl -w'
source $HOME/.githubcreds
