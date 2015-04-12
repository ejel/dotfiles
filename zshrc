# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# OS X Alt + Arrows
bindkey "^[[1;9D" backward-word # alt + <-
bindkey "^[[1;9C" forward-word # alt+ ->

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh


