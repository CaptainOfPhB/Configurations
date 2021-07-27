export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="/Users/$USER/.oh-my-zsh"

ZSH_THEME="robbyrussell"

HIST_STAMPS="mm/dd/yyyy"

 plugins=( 
  zsh-completions 
  zsh-autosuggestions 
  zsh-syntax-highlighting 
) 
  
source $ZSH/oh-my-zsh.sh

alias c="clear"
alias ys="yarn start"
alias vs="vi ~/.zshrc"
alias ss="source ~/.zshrc"
alias push="git add . && git commit -m 'update' && git push"
alias proxy="export https_proxy=http://127.0.0.1:1087 http_proxy=http://127.0.0.1:1087 all_proxy=socks5://127.0.0.1:1086"

# load thefuck
eval $(thefuck --alias)

# load fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# load brew-command-not-found
HB_CNF_HANDLER="$(brew --repository)/Library/Taps/homebrew/homebrew-command-not-found/handler.sh"
if [ -f "$HB_CNF_HANDLER" ]; then
source "$HB_CNF_HANDLER";
fi

# load zprezto
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

clear
