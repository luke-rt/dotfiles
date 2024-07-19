# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# oh my zsh initialization
plugins=(
  asdf
  zsh-syntax-highlighting
  git
  zsh-autosuggestions
)

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

COMPLETION_WAITING_DOTS="true"

# User configuration
export LANG=en_US.UTF-8

export EDITOR='nvim'
export VISUAL='nvim'

alias ls="exa --all --classify --group-directories-first --color=always"
alias vim="nvim"
alias py="python"
alias grep="rg"
alias find="fd"

# move to Trash 
trash() {
  mv -f "$1" ~/.trash
}

export PATH="$PATH:$(brew --prefix openjdk)/bin/"
export PATH="$PATH:$HOME/Applications/flutter/bin"
export PATH="$PATH:/Users/luke/.local/bin"

# pnpm
export PNPM_HOME="/Users/luke/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# OCaml/opam
eval $(opam config env)
[[ ! -r /Users/luke/.opam/opam-init/init.zsh ]] || source /Users/luke/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
eval $(opam env)

# bun
[ -s "/Users/luke/.bun/_bun" ] && source "/Users/luke/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# zsh autosuggestions
bindkey '^I^I' autosuggest-accept

# LAST
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source $ZSH/oh-my-zsh.sh

