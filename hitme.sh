#!/bin/bash
# curl https://raw.githubusercontent.com/boneitis/scratchpad/master/hitme.sh |sh

#### DOCKER
# curl -fsSL https://get.docker.com -o get-docker.sh

#### nvm
# https://github.com/nvm-sh/nvm#install--update-script

cd ~
wget https://github.com/boneitis/scratchpad/raw/master/.vimrc
wget https://github.com/boneitis/scratchpad/raw/master/.tmux.conf
wget https://github.com/boneitis/scratchpad/raw/master/.gitconfig
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
