#!/bin/bash

mv_old_and_link() {
    if [[ -f $2 ]]; then
        mv $2 $2.old
    fi
    ln -s ${PWD}/$1 $2
}

DOTFILES="~/dotfiles"
mkdir $DOTFILES
git submodule update --init --recursive
cd $DOTFILES

mv_old_and_link dotbash/bashrc ~/.bashrc
mv_old_and_link dotbash/bash_profile ~/.bash_profile
mv_old_and_link dotbash/bash_logout ~/.bash_logout
mv_old_and_link rss-feeds/urls ~/.newsbeuter/urls
mv_old_and_link dotpentadactyl/pentadactylrc ~/.pentadactylrc
mv_old_and_link dotvim/vimrc ~/.vimrc
mv_old_and_link dotvim/vim/ ~/.vim
mv_old_and_link dotweechat/ ~/.weechat
mv_old_and_link dotx/xbindkeysrc ~/.xbindkeysrc
mv_old_and_link dotx/xinitrc ~/.xinitrc
mv_old_and_link dotx/Xresources ~/.Xresources
mv_old_and_link dotx/xscreensaver ~/.xscreensaver
mv_old_and_link dotxmonad/xmonad.hs ~/.xmonad/xmonad.hs
mv_old_and_link dotxmobar/xmobarrc ~/.xmobarrc
mv_old_and_link dotidea/ ~/.IntellijIdea14/config
mv_old_and_link dotalsa/asoundrc ~/.asoundrc
