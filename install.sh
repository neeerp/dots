#!/bin/sh
INIT_VIM=$HOME/.config/nvim/init.vim

# Check if init.vim already exists and back it up
if [ -f "$INIT_VIM" ] 
then
    mv $INIT_VIM "${INIT_VIM}.old"
fi

ln -s $HOME/dots/nvim/init.vim $HOME/.config/nvim/init.vim
