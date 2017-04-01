#!/bin/sh

RC_DIR=~/rc

linkme ()
{
    if [ ! -e $HOME/."$1" ] ; then
        echo "Linking $RC_DIR/$1..."
        ln -s $RC_DIR/"$1" $HOME/."$1"
        echo "Linked $1 to $HOME/.$1"
    else
        echo "Skipped linking $1, $HOME/.$1 already exists, won't overwrite."
    fi
}

linkme bashrc
linkme bash_profile
linkme bash_logout
linkme tmux.conf

# vim
# it will already check if it exists
linkme vim

# neovim
echo 'linking vimrc for neovim, if vimrc exists'
if [ -e $HOME/.vim/vimrc ] ; then
	echo 'vimrc exists'
    if [ ! -e $HOME/.config/nvim/init.vim ] ; then
        ln -s $HOME/.vim $HOME/.config/nvim
        echo "Linked $HOME/.vim to $HOME/.config/nvim"
        ln -s $HOME/.vimrc $HOME/.config/nvim/init.vim
        echo "Linked $HOME/.vimrc $HOME/.config/nvim/init.vim"
    else
        echo "$HOME/.config/nvim/init.vim already exists, won't overwrite."
    fi
else
    echo "Skpped linking $HOME/.config/nvim , $HOME/.vim/vimrc doesn't exist"
fi



echo "Done"
