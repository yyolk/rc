#!/usr/bin/env bash

# A line per package, for easier maintainability.
VIM_LSP_PKGS=$(cat <<EOF
emmet-language-server
bash-language-server
dockerfile-language-server-nodejs
pyright
typescript-language-server
typescript
vim-language-server
vscode-langservers-extracted
yaml-language-server
EOF
)
. ./shfunctions.d/nvm
nvm use node
# don't quote $VIM_LSP_PKGS so they'll appear on one line
for package in $VIM_LSP_PKGS; do
  # Install package if it is not already installed
  npm list -g $package || npm i -g $package
done
