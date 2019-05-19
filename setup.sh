#!/bin/bash

# Adds aliases, prompt config to ~/.bash_profile
echo "source $(pwd)/aliases" >> ~/.bash_profile
echo "source $(pwd)/prompt" >> ~/.bash_profile

# Adds .vimrc
#echo "$(pwd)/.vimrc" >> ~/.vimrc
