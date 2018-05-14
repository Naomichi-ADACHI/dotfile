#
# ~/.bashrc
#

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return
#(which zsh 1>/dev/null 2>&1 && zsh || ~/local/bin/zsh) && exit
alias ls='ls --color=auto'
alias ll='ls -al'
alias google-chrome='google-chrome --no-sandbox'
HISTSIZE=1000
HISTFILESIZE=2000
PS1='[\u@\h \W]\$ '
