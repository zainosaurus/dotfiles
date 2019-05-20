# dotfiles
A backup of my shell config files ("dotfiles")

Configures macOS terminal prompt

* Currently included:
  - ~/.bash_profile configurations (aliases and prompt)
  - ~/.vimrc

* Instructions:
  1. Clone this repository: `git clone https://github.com/zainosaurus/dotfiles.git`
  2. Run the setup script, which will add the appropriate lines to **~/.bash_profile**: `./setup.sh`
  
  **Note**: If you have an existing ~/.vimrc, it will be overwritten by the above script. To prevent this, comment out the line where .vimrc is copied in the script before running it.
  
 
* TODO:
  - Add linux support (.bashrc & slightly different config commands)
  - More aliases, autocomplete for git
  - More info in git prompt

* Inspired by:
  - @donnemartin's bash prompt: https://github.com/donnemartin/dev-setup
  - @PatrickDuncan's bash prompt: https://github.com/PatrickDuncan/bash_shell
