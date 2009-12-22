#!/bin/bash

# .bashrc
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# set 256 color for emacs
eval `tset -sQ xterm-256color`

set -o vi
set X_PATH=/usr/X11R6

export locale=C

export DISPLAY=192.168.0.25:0.0
#export LANG=ja_JP.UTF-8
export LANG=en_US.UTF-8
# export SUPPORTED=$SUPPORTED:ja_JP.UTF-8
export LD_LIBRARY_PATH=$X_PATH/lib
export PKG_CONFIG_PATH=$X_PATH/lib/pkgconfig

# stty erase '^?'
export PATH=/usr/local/m4-1.4.13/bin:/usr/local/emacs-23.1/bin:/usr/local/python-2.5.1/bin:/usr/local/git-1.6.5.3/bin:/usr/local/mysql5/bin:~/.:.:/usr/local/ruby-1.8.7/bin:/usr/local/vim7.2_ruby/bin:$PATH
alias gcc='/usr/bin/gcc296'
alias ls='ls -F --color=tty'
alias xterm='xterm -ls'
export PS1="[\u@\h \w]\$ "
alias kterm='kterm -km euc'
alias vim='/usr/local/vim7.2_ruby/bin/vim --servername VIM'
alias rsvr='~/rails/client/script/server -p 3001'
alias screen='/usr/local/screen-4.0.3/bin/screen'
alias xemacs='/usr/local/emacs-23.1-x/bin/emacs'
