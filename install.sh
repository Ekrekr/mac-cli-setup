#!/bin/bash

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Iterm2
brew cask install iterm2
## Special syntax highlighting
brew install zsh zsh-syntax-highlighting zsh-completions
## Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
## PowerLevel10k
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
## zshrc and vim environments
cp .zshrc ~/.zshrc
cp .vimrc ~/.vimrc
## Powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
## Nerd fonts
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

# Python3
brew install python
## pip3 upgrade
pip3 install --upgrade pip
## Install lots of pip requirements
pip3 install -r requirements.txt
## Set chesterish theme
jt -t chesterish

# Firefox (url may need to be updated)
curl https://download-installer.cdn.mozilla.net/pub/firefox/releases/68.0.2/mac/en-GB/Firefox%2068.0.2.dmg -o firefox.dmg
hdiutil attach firefox.dmg
cd /Volumes/Firefox
cp -r Firefox.app /Applications/Firefox.app
cd
hdiutil detach /Volumes/Firefox

# VSCode and extensions
brew cask install visual-studio-code                                   # If necessary, reset global default

# Inkscape and xquartz (requires restart)
brew cask install xquartz
brew cask install inkscape

# Copy VSCode settings profile
cp vscode-profile.json ~/Library/Application\ Support/Code/User/settings.json
