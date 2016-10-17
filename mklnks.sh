#!/bin/sh

RC_DIR=~/rc

linkme ()
{
    if [ ! -e $HOME/."$1" ] ; then
	    echo "Linking $RC_DIR/$1..."
	    ln -s $RC_DIR/"$1" $HOME/."$1"
	    echo 'Linked $1 to $HOME/.'"$1"
    else
            echo "Skipped linking $1, $HOME/.$1 already exists"
    fi
}

linkme bashrc
linkme bash_profile
linkme bash_logout
linkme tmux.conf

echo "Done"
