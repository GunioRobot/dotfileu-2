#!/bin/bash

alias ll="ls -AFGhl"
alias ls="ls -ACFG"

alias ..="cd .."
alias ...="cd .. ; cd .."
alias ....="cd .. ; cd .. ; cd .."

if [[ ! -z $(which hub) ]]; then
  alias git="hub"
fi

if [[ ! -z $(which apt-get) ]]; then
  alias install="sudo apt-get install"
  alias remove="sudo apt-get remove"
  alias search="apt-cache search"
  alias show="apt-cache show"
  alias update="sudo apt-get update"
  alias upgrade="sudo apt-get upgrade"
elif [[ ! -z $(which brew) ]]; then
  alias install="brew install"
  alias remove="brew remove"
  alias search="brew search"
  alias show="brew info"
  alias update="brew update"
  alias upgrade="brew upgrade"
fi

if [[ ! -z $(which free) ]]; then
  alias free="free -m"
fi

# changing directory to code project
function proj { cd ~/github/$1; }

# lists folders and files sizes in the current folder
alias ducks="du -cksh * | sort -rn | head -11"

alias df="df -h"
alias f="find . -iname"
alias systail="tail -f /var/log/system.log"
alias top="top -o cpu"
