export ZSH="$HOME/oh-my-zsh"
source .zprofile

ZSH_THEME="fishy"

## ZSH PLUGINS
plugins=(
  vi-mode
  shrink-path
  colored-man-pages
)

## Keybindings for zsh-autosuggestions
bindkey '^ ' autosuggest-accept #<CTRL>+<SPACE>
bindkey '^x' autosuggest-clear #<CTRL>+ x
bindkey -s "^g" "lc\n"

source $ZSH/oh-my-zsh.sh

## Replace CAPS LOCK key with another CTRL
setxkbmap -option ctrl:nocaps

# Source config files
for f in ~/.config/shellconfig/*; do source "$f"; done

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

