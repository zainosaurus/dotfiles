#!/bin/bash

if [ $SHELL = '/bin/bash' ]; then
    subfolder='bash'
    outfile="$HOME/.bash_profile"
    echo 'Configuring for bash'
else
    subfolder='zsh'
    outfile="$HOME/.zlogin"
    echo 'Configuring for zsh'
fi

echo >> "$outfile"
echo "#Following configurations added by Zain Tahlilkar's config script:" >> "$outfile"

# Install Bash Completion - requires homebrew
#brew install bash_completion

# External scripts (add to path)
echo "export PATH=\$PATH:$(pwd)/external_scripts/" >> "$outfile"

# Adds aliases, prompt config to ~/.bash_profile
echo "source $(pwd)/external_scripts/git-completion.bash" >> "$outfile"
echo "source $(pwd)/$subfolder/aliases" >> "$outfile"
echo "source $(pwd)/$subfolder/prompt" >> "$outfile"
echo "#--- end of Zain's script ---" >> "$outfile"
echo >> "$outfile"

# diff-so-fancy: for easier-to-read git diffs
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"


# Adds .vimrc - overwrites any existing vimrc
cat "$(pwd)/vimrc" > ~/.vimrc
