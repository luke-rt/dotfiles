# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# oh my zsh initialization
plugins=(
  git
  zsh-vi-mode
  zsh-autosuggestions
  zsh-syntax-highlighting
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
alias npm="pnpm"
alias py="python3"
alias grep="rg"
alias find="fd"
alias dl="trash"

# move to Trash 
trash() {
  mv -f "$1" ~/.trash
}

export PATH="$PATH:$(brew --prefix openjdk)/bin/"
export PATH="$PATH:$HOME/Applications/flutter/bin"

# OCaml initialization
eval $(opam config env)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source $ZSH/oh-my-zsh.sh

# pnpm
export PNPM_HOME="/Users/luke/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# opam configuration
[[ ! -r /Users/luke/.opam/opam-init/init.zsh ]] || source /Users/luke/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

# ocaml version
eval $(opam env)

# bun completions
[ -s "/Users/luke/.bun/_bun" ] && source "/Users/luke/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
