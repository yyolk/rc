# TRAPEXIT() {
#   # always want to run .zlogout:
#   if [[ ! -o login ]]; then
#     # don't do this in a login shell because it happens anyway
#     . ~/.zlogout
#   fi
# }

source ~/.shfunctions.d/gitignore
source ~/.shfunctions.d/editorconfig
source ~/.aliases

export EDITOR=vim

# # Created by `pipx` on 2024-01-09 21:46:25
# export PATH="$PATH:/Users/yolk/.local/bin"

source ~/.shfunctions.d/nvm

# autojump
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

