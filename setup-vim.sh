#!/usr/bin/bash

echo '1. Install Vundle\n';

{ #try
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && echo 'DONE: exec command "PluginInstall" on vi command line before using Vim.\n';
} || { #catch
    echo 'ERROR: Check the message above.';
}

