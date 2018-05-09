export LANG=ja_JP.UTF-8
setopt print_eight_bit
setopt no_beep

#enable color
autoload -Uz colors
colors

#completion
autoload -Uz compinit
compinit

#enable tab and cursor key
zstyle ':completion:*' menu select

#uppercase hit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

#history
setopt share_history
setopt hist_ignore_all_dups
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

#no need "cd"
setopt auto_cd

#no beep
setopt no_beep

#autopushd
setopt auto_pushd
setopt pushd_ignore_dups

setopt correct

#prompt
PROMPT="%(?.%{${fg[green]}%}.%{${fg[red]}%})%n${reset_color}@${fg[blue]}%m${reset_color} %~
%# "

#vcs
autoload -Uz vcs_info
autoload -Uz add-zsh-hook
zstyle ':vcs_info:*' formats '%F{green}(%s)-[%b]%f'
zstyle ':vcs_info:*' actionformats '%F{red}(%s)-[%b|%a]%f'

function _update_vcs_info_msg() {
    LANG=en_US.UTF-8 vcs_info
    RPROMPT="${vcs_info_msg_0_}"
}
add-zsh-hook precmd _update_vcs_info_msg

#alias
alias ll='ls -al --color=auto'
alias gp11='g++ -std=c++11 -O3'
alias shutdown='shutdown -h now'

