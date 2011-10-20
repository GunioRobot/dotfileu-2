#!/bin/bash

# create a new directory and enter it
function md() {
  mkdir -p "$@" && cd "$@"
}

# all dig info
function digga() {
  dig +nocmd "$1" any +multiline +noall +answer
}
