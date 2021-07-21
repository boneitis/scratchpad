#!/bin/bash
# curl https://raw.githubusercontent.com/boneitis/scratchpad/master/hitme.sh |bash
cd ~
wget https://github.com/boneitis/scratchpad/raw/master/.vimrc
wget https://github.com/boneitis/scratchpad/raw/master/.tmux.conf
mkdir .vim
cd .vim
mkdir colors
cd colors
wget https://github.com/boneitis/oceanic-material/raw/master/colors/oceanic_material.vim
