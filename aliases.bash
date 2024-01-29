shopt -s
alias chrome="open -a 'Google Chrome'"
alias ni="npm install"
alias cit="python $HOME/code/python/cit/cit.py"
alias byword='open -a Byword'
alias l="ls -G"
alias ls="ls -G"
alias mkpdir="mkdir `date +%Y%m%d-%H%M`"
alias vlc="~/Applications/VLC.app/Contents/MacOS/VLC"
alias pshttp="python -m SimpleHTTPServer"

alias g="git"
alias gc="git commit"
alias gs="git status"
alias gp="git push"
alias ggh="git push ; git push heroku master"
alias glo="git log --graph --decorate --oneline"
alias gbc="git_branch | pbcopy"

alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias love='/Applications/love.app/Contents/MacOS/love'

#tomato alias'
alias tsst='ssh -L 8008:tomato.yolk.cc:80 dde'

#django
alias va='source ./venv/bin/activate'
alias vc='virtualenv venv --distribute'
alias sdj='python manage.py runserver 0.0.0.0:8080'

#redis
alias sredis='redis-server /usr/local/etc/redis.conf'

#Mou
alias mou='open -a Mou'

#alias rtorrent
alias rcp='scp *.torrent torr:watch && rm *.torrent'
alias rcpw='scp *.torrent torr:watch_warez && rm *.torrent'

#npm / node
alias ns='npm start'
alias nose="node server"
alias noce="node server & chrome 'http://localhost:3000'"


## AWS
#elasticbeanstalk
function ebz
{
  zip -r $(git rev-parse "HEAD").zip . -x "node_modules/*" -x ".git/*" -x ".sass-cache/*"
  echo \n\ncreated $(git rev-parse "HEAD").zip
}

#stacknames
function stacknames
{
  aws cloudformation describe-stacks | jq ".Stacks[].StackName"
}

# ssh alias'

alias sshk='ssh -o "UserKnownHostsFile /dev/null" $@'

# tree alias
alias tt='tree -L 2'

# brew alias'
alias bbu='brew update -v && brew upgrade -v'
alias bbuc='bbu && brew cleanup -v'

# ssh dev
function sshpel
{
  ssh -i ~/.ssh/pelican_deploy.pem ec2-user@$1
}

#alias j=autojump



# tomato tunnel
alias ttdde='ssh -L 8008:tomato.yolk.cc:80 dde'


# boot2docker
# alias b2d=boot2docker
# alias b2dsi='boot2docker shellinit'

# docker-machine
alias dm=docker-machine
alias dmd='docker-machine env default'

# log commands
#alias llast='echo $(history -p !!) >>cmd.log'
function llast
{
 echo $(history -p !!) >>cmd.log
 cat cmd.log
}


# ask politely
alias please='sudo $(history -p !!)'

# date shortys
# 20151007-0350PM
alias tdate='date +"%Y%m%d-%I%M%p"'
alias ttd=tdate
alias ttdpbc='ttd | pbcopy'
# 20151007
alias ddate='date +"%Y%m%d"'
alias ddd=ddate

alias bcc='brew update -v && brew upgrade -v --all'
alias bccu'bcc && brew -v cleanup'

alias wtth='curl http://wttr.in/60607'

#jira
alias jss=jsprint

#gitignore.io api
git_ignore_api()
{
    curl -L "https://gitignore.io/api/$@"
}
alias gitignore=git_ignore_api

disassociate_idea_modules()
{
  cd .idea/modules
  for i in *-build.iml ; do sed -e s/\\/Users\\/`whoami`/\$USER_HOME\$/g -i "" $i ; done
}
alias fix_disassociate_idea_modules=disassociate_idea_modules 


## bofh
alias bofh="telnet towel.blinkenlights.nl 666"


## castnow `screen -S cast_session`
#this can be better
alias castnow_screen="screen -d -m -S cast_session castnow"
alias castnow_playpause="screen -S cast_session -X stuff ' '"
alias castnow_back="screen -S cast_session -X stuff $'\e[D'"
alias castnow_forward="screen -S cast_session -X stuff $'\e[C'"
alias castnow_volumeup="screen -S cast_session -X stuff $'\e[A'"
alias castnow_volumedown="screen -S cast_session -X stuff $'\e[B'"
alias castnow_mute="screen -S cast_session -X stuff 'm'"
alias castnow_stop="screen -S cast_session -X stuff 's'"
alias castnow_quit="screen -S cast_session -X stuff 'q'"


## ls-go
alias ll='ls-go -alkSi'


## zookeeper-kafka in-process
alias zkbg="zookeeper-server-start /usr/local/etc/kafka/zookeeper.properties & kafka-server-start /usr/local/etc/kafka/server.properties"

## for bash loops

fakeit()
{
  if [ -z "$FAKE_IT" ]; then 
    echo "$@"
  else 
    $@
  fi 
}
