unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/helpfiles

# Path to oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(osx autojump git brew)

export PATH=~/bin:/usr/local/bin:/usr/local/sbin:~/.rvm/bin:$PATH
export ANDROID_SDK_ROOT=/usr/local/Cellar/android-sdk/r20.0.3
export ROUGE_EVAL_HOME=~/ROUGE-1.5.5/data

source $ZSH/oh-my-zsh.sh

zstyle ':completion:*' hosts off # disable hostname completion which is damn slow

export P4CONFIG=.p4config

export PAGER=less
export EDITOR='subl -w'

# alias dst='ssh -t vairoja.desktop.amazon.com "cd /workplace/vairoja/windowshop-addon/src/AmazonFamilyWindowShopApplicationMason; zsh"'

alias sshva='ssh -t vairoja.desktop.amazon.com "screen -dR"'
alias scpresume="rsync --partial --progress --rsh=ssh"

# OS X Alt + Arrows
bindkey "^[[1;9D" backward-word # alt + <-
bindkey "^[[1;9C" forward-word # alt+ ->

autoload -U zmv

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

export PERL5LIB=$PERL5LIB:~/mead/lib:~/mead/lib/arch
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
