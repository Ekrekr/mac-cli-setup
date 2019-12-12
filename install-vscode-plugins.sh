## Mermaid (flow chart diagrams)
code --install-extension bierner.markdown-mermaid
## Autopep8 (auto python pep8 formatting)
code --install-extension himanoa.Python-autopep8
## Markdown linter
code --install-extension DavidAnson.vscode-markdownlint
## LaTeX Workshop
code --install-extension James-Yu.latex-workshop
## Firacode Font, add to settings
brew tap homebrew/cask-fonts
brew cask install font-fira-code
cp settings.json ~/Library/Application Support/Code/User/settings.json
## Vim keybindings, enable key repeating
code --install-extension vscodevim.vim
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false         # For VS Code
defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false # For VS Code Insider
defaults delete -g ApplePressAndHoldEnabled
