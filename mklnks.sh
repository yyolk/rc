#!/bin/sh

RC_DIR=~/rc

ln -s $(RC_DIR)/bashrc $HOME/.bashrc
ln -s $(RC_DIR)/bash_profile $HOME/.bash_profile
ln -s $(RC_DIR)/bash_logout $HOME/.bash_logout
echo "Done"
