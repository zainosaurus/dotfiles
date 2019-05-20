#!/bin/bash

echo >> ~/.bash_profile
echo "#Following configurations added by Zain Tahlilkar's config script:" >> ~/.bash_profile

# Adds aliases, prompt config to ~/.bash_profile
echo "source $(pwd)/aliases" >> ~/.bash_profile
echo "source $(pwd)/prompt" >> ~/.bash_profile

# External scripts (add to path)
echo "export PATH=\$PATH:$(pwd)/external_scripts/" >> ~/.bash_profile

# diff-so-fancy: for easier-to-read git diffs
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"


# Adds .vimrc
cat "$(pwd)/.vimrc" > ~/.vimrc
