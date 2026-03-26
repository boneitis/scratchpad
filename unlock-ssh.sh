#!/bin/bash

if [[ -z "$SSH_AUTH_SOCK" ]]; then
  eval "$(ssh-agent -s)"
fi
ssh-add ~/.ssh/id_ed25519_1
echo
ssh-add ~/.ssh/id_ed25519

