#!/usr/bin/bash

{ #try
    echo '1. Move .bashrc, .profile, .vimrc to *.old';
    mv ~/.bashrc ~/.bashrc.old
    mv ~/.profile ~/.profile.old
    mv ~/.vimrc ~/.vimrc.old
} || { #catch
    echo 'ERROR: See the messgae above.'
}

{ #try
    echo '2. Make symlinks';
    ln -S ~/.bashrc ~/dotfiles/.bashrc
    ln -S ~/.profile ~/dotfiles/.profile
    ln -S ~/.vimrc ~/dotfiles/.vimrc
    
    echo 'DONE'
} || { #catch
    echo 'ERROR: See the messgae above.'
}

