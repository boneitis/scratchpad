#!/bin/bash
# curl https://raw.githubusercontent.com/boneitis/scratchpad/master/hitme.sh |sh
# curl -fsSL https://get.docker.com -o get-docker.sh
cd ~
wget https://github.com/boneitis/scratchpad/raw/master/.vimrc
wget https://github.com/boneitis/scratchpad/raw/master/.tmux.conf
mkdir .vim
cd .vim
mkdir colors
cd colors
wget https://github.com/boneitis/oceanic-material/raw/master/colors/oceanic_material.vim

## .bashrc ##
# alias pyg='pygmentize -g'
# alias sshgoo='ssh -A -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o ConnectTimeout=10'
# alias scpgoo='scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o ConnectTimeout=10'
# alias sshfsgoo='sshfs -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o ConnectTimeout=10'
