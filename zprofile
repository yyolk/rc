eval "$(/opt/homebrew/bin/brew shellenv)"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export GPG_TTY=$(tty)

# Created by `pipx` on 2024-01-09 21:46:25
export PATH="$PATH:/Users/yolk/.local/bin"
