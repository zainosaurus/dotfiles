#!/bin/bash

echo >> ~/.bash_profile
echo "#Following configurations added by Zain Tahlilkar's config script:" >> ~/.bash_profile

# Install Bash Completion - requires homebrew
#brew install bash_completion

# External scripts (add to path)
echo "export PATH=\$PATH:$(pwd)/external_scripts/" >> ~/.bash_profile

# Adds aliases, prompt config to ~/.bash_profile
echo "source $(pwd)/external_scripts/git-completion.bash" >> ~/.bash_profile
echo "source $(pwd)/aliases" >> ~/.bash_profile
echo "source $(pwd)/prompt" >> ~/.bash_profile
echo "#--- end of Zain's script ---" >> ~/.bash_profile
echo >> ~/.bash_profile

# diff-so-fancy: for easier-to-read git diffs
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"


# Adds .vimrc - overwrites any existing vimrc
cat "$(pwd)/vimrc" > ~/.vimrc
