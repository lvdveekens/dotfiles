#!/bin/sh
# shell script containing my PS1 variable

if ps $PPID | grep mc; then
    PS1='[mc] \u@\h:\w $ '
elif [ "$color_prompt" = yes ]; then
    PS1='\[\033[01;32m\]\u\[\033[00m\] $(if [ -n "$($HOME/code/config/svn_branch.sh)" ]; then echo "\[\033[38;5;039m\]$($HOME/code/config/svn_branch.sh)"; else echo "\[\033[01;34m\]\w"; fi)\n \[\033[38;5;202m\]↪ \[\033[00m\] '
else 
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w $ '
fi