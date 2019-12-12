# Export current environment
export ZSH="/Users/eli/.oh-my-zsh"
export TERM="xterm-256color"

# Add flutter to path
export PATH="$PATH:/Applications/flutter/bin"

# Add android studio and tools to path
export ANDROID_SDK_ROOT="/Users/$USER/Library/Android/sdk"
export ANDROID_HOME=$ANDROID_SDK_ROOT
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_HOME/platform-tools"

# Ruby on Rails path & optimisation
export PATH="/usr/local/opt/ruby/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"

# Add GNAT to path for Ada development
export PATH="$PATH:/Users/eli/opt/GNAT/2019/bin"

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
alias jn="sudo jupyter notebook --allow-root"
alias ymp3='youtube-dl -x --audio-format mp3 --audio-quality 0 --embed-thumbnail --no-playlist'
alias ymp3playlist='youtube-dl -x --audio-format mp3 --audio-quality 0 --embed-thumbnail'
alias do="ssh root@167.71.8.13"
alias dor="ssh root@157.245.75.70 'sudo shutdown -r now'"
alias weather="curl wttr.in"
alias ubuntu="docker run -it ubuntu"

# Radio channels
alias radio-station='mplayer -nocache -afm ffmpeg'
alias modern-rock="radio-station https://tunein.com/radio/a-0-Modern-Rock-s229775/"

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

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Disable autocorrection as not compatible with Bazel
# unsetopt correct_all


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/google-cloud-sdk/path.zsh.inc' ]; then . '/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/google-cloud-sdk/completion.zsh.inc' ]; then . '/google-cloud-sdk/completion.zsh.inc'; fi


# Stop zsh auto correct due to Bazel fuckery
unsetopt correct_all

