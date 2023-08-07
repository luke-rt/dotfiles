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
alias dl="sudo mv --force -t ~/.trash"
alias vim="nvim"
alias npm="pnpm"
alias py="python3"

export PATH="$PATH:$(brew --prefix openjdk)/bin/"
export PATH="$PATH:$HOME/Applications/flutter/bin"

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
