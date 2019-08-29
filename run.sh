#!/bin/bash

# Homebrew.
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Iterm2.
brew cask install iterm2
## Oh-My-Zsh.
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
## PowerLevel9k.
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
## zshrc environment.
cp .zshrc ~/.zshrc
## vim environment.
cp .vimrc ~/.vimrc

# Firefox
## 

# Install VSCode

# Install Fira Code font and set VSCode to use, allow ligatures in VSCode

# Add VSCode to command line
