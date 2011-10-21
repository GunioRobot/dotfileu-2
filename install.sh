#!/bin/bash

find -s . \
  -depth 1 \
  -not -name ".git" \
  -not -name "install.sh" \
  -not -name "README.mkd" \
  -execdir ln -fsv $(pwd)/{} ~/{} \;
