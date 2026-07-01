# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/Library/TeX/texbin:$HOME/bin:$HOME/.local/bin:$HOME/.cargo/bin:/Users/yuanlin/.spicetify:$HOME/.config/nvim:$PATH"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="takashiyoshida" # set by `omz`

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh
 
eval "$(/opt/homebrew/bin/brew shellenv)"

alias yta="yt-dlp -x --audio-format mp3 --audio-quality 0"
alias n="nvim ."
alias vim="nvim"
alias config="cd ~/.config/nvim && nvim ."
