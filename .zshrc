# Export current environment
export ZSH="/Users/eliask/.oh-my-zsh"
export TERM="xterm-256color"

# Set theme and encoding to allow nice colour lines
ZSH_THEME=powerlevel10k/powerlevel10k
ZSH_THEME="agnoster"
POWERLEVEL10K_MODE="awesome-patched"
POWERLEVEL10K_MODE="nerdfont-complete"

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

source $ZSH/oh-my-zsh.sh

# Useful aliases
alias zshrc="vi ~/.zshrc"
alias vimrc="vi ~/.vimrc"
alias la="ls -al"

function go() {
    cd /Documents/github/{$1}
    open https://github.com/Ekrekr/{$1}
}

# Listen to connections on a port
function listen() {
    lsof -nP -i4TCP:${1} | grep LISTEN
}

# # Install shell integration if available
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
