#rbenv
export RBENV_ROOT=/usr/local/var/rbenv

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

#[[ -f `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi


export PYENV_ROOT=/usr/local/opt/pyenv

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"




[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh


# {{{
# Node Completion - Auto-generated, do not touch.
#shopt -s progcomp
#for f in $(command ls ~/.node-completion); do
#  f="$HOME/.node-completion/$f"
#  test -f "$f" && . "$f"
#done
# }}}


source ~/.bashrc
