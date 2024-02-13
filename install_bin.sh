#!/usr/bin/env bash

set -xe

BIN_PATH=$HOME/.local/bin

OS=$(uname -o | tr '[:upper:]' '[:lower:]')
MARCH=$(uname -m)

# ls-go v1.0.1
LS_GO_VERSION=v1.0.1
curl -L https://github.com/acarl005/ls-go/releases/download/$LS_GO_VERSION/ls-go-$OS-$MARCH -o $BIN_PATH/ls-go
chmod +x $BIN_PATH/ls-go

# vimv - vim mv
curl -L https://raw.githubusercontent.com/thameera/vimv/master/vimv > ~/.local/bin/vimv 
chmod +x ~/.local/bin/vimv

# case $(uname -m) in
#   arm64)
#     # ls-go v1.0.1
#     LS_GO_VERSION=v1.0.1
#     curl -L https://github.com/acarl005/ls-go/releases/download/$LS_GO_VERSION/ls-go-darwin-arm64 -o $BIN_PATH/ls-go
#     chmod +x $BIN_PATH/ls-go
#     ;;
#   *)
#     echo "No matching arch binary distributions."
#     ;;
# esac
