eval "$(/opt/homebrew/bin/brew shellenv)"

# Sign git commits with user GPG key
export GPG_TTY=$(tty)

# TODO
# . ~/.shfunctions.d/pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# TODO
# Created by `pipx` on 2024-01-09 21:46:25
export PATH="$PATH:/Users/yolk/.local/bin"
