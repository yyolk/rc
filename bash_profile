#rbenv
#export RBENV_ROOT=/usr/local/var/rbenv

#if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

#[[ -f `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# if [ -f $(brew --prefix)/etc/bash_completion ]; then
#   . $(brew --prefix)/etc/bash_completion
# fi

[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh



# i don't know but this is fine for now
is_a_mac()
{
  grep Darwin <<< $(uname -a) > /dev/null
}
is_a_mac && . ~/.bashrc

## Completions
. $HOME/rc/completions
#eval $(/usr/libexec/path_helper -s)
