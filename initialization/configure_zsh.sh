#!/bin/bash

sudo apt-get install zsh
chsh -s $(which zsh)
ln "$HOME/debian/debian_configs/.zshrc" "$HOME/.zshrc"
