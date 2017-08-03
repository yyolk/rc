#rbenv
export RBENV_ROOT=/usr/local/var/rbenv

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

#[[ -f `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

if which pyenv > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

export PYENV_ROOT=/usr/local/opt/pyenv
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"



. ~/.bashrc

## Completions
. $HOME/rc/completions
eval $(/usr/libexec/path_helper -s)
