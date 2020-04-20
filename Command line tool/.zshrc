export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="/Users/captain/.oh-my-zsh"

ZSH_THEME="random"

HIST_STAMPS="mm/dd/yyyy"

plugins=(
  z
  git
  npm
  node
  git-open
  autojump
  zsh-completions
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

alias cat="bat"
alias ys="yarn start"
alias vs="vi ~/.zshrc"
alias pc="proxychains4"
alias ss="source ~/.zshrc"
alias push="ga . && gc -m update && gp"

source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

clear

export PATH="$PATH:$HOME/.rvm/bin"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

