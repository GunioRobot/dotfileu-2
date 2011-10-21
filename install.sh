#!/bin/bash

find -s . \
  -depth 1 \
  -not -name ".git" \
  -not -name "install.sh" \
  -execdir ln -fsv $(pwd)/{} ~/{} \;
