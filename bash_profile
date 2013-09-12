if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

#[[ -f `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
source ~/.bashrc

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh


# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}
