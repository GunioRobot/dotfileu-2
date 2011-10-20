#!/bin/bash

# if not running interactively, don't do anything
[[ -z "${PS}1" ]] && return


########################################################################
# PATH VARIABLE                                                        #
########################################################################

# clear existing values
export PATH=

user_paths="
  ~/.rbenv/bin
  ~/bin
"

system_paths="
  /usr/local/bin
  /usr/local/sbin
  /opt/bin
  /opt/sbin
  /usr/bin
  /usr/sbin
  /bin
  /sbin
"

for i in ${user_paths} ${system_paths}; do
  if [[ -d ${i} ]]; then
    export PATH=${PATH}${i}:
  fi
done


########################################################################
# GENERAL SETTINGS                                                     #
########################################################################

# set prompt format
export PS1="\u@\h:\W \$ "

# don't put duplicate lines in the history
# and ignore same sucessive entries
export HISTCONTROL="ignoreboth"

# enable extended pattern matching features
shopt -s extglob

# disable incoming mail warnings
shopt -u mailwarn
unset MAILCHECK


########################################################################
# INCLUDES                                                             #
########################################################################

if [[ -f ~/.bash_functions ]]; then
  source ~/.bash_functions
fi

if [[ -f ~/.bash_aliases ]]; then
  source ~/.bash_aliases
fi


########################################################################
# KEYCHAIN                                                             #
########################################################################

if [[ ! -z $(which keychain) ]]; then
  eval $(keychain --eval --agents ssh --inherit any id_rsa)
fi


########################################################################
# RBENV                                                                #
########################################################################

# load rbenv into a shell session
if [[ ! -z $(which rbenv) ]]; then
  eval "$(rbenv init -)"
fi
