#!/usr/bin/env bash

## ----------------
## INSTALL SOFTWARE
## ----------------
sudo apt-get install -y \
    curl \
    git \
    tmux \
    htop \
    zsh

cp /vagrant/tmux.conf /home/ubuntu/.tmux.conf
history -c
sudo chsh -s $(which zsh) ubuntu

