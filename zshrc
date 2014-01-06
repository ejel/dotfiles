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

export PATH=~/bin:/usr/local/bin:/usr/local/sbin:~/Cloud9BrazilBuild-1.0/bin:~/.rvm/bin:$PATH

source $ZSH/oh-my-zsh.sh

export PAGER=less
export EDITOR='subl -w'

# OS X Alt + Arrows
bindkey "^[[1;9D" backward-word # alt + <-
bindkey "^[[1;9C" forward-word # alt+ ->

# Amazon-specific settings

zstyle ':completion:*' hosts off # disable hostname completion which is damn slow

export ANDROID_SDK_ROOT=/usr/local/Cellar/android-sdk/r20.0.3
export ANDROID_HOME=/usr/local/opt/android-sdk
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_40.jdk/Contents/Home
export I_WANT_NO_DEVTOOLS_SUPPORT_NOW_AND_FOREVER=JAVA_HOME

export P4CONFIG=.p4config
export APPEND_CR_URL=1

alias sst='adb shell dumpsys activity | grep -P "^\s*Running" -A 10'
alias bb='brazil-build'

# alias dst='ssh -t vairoja.desktop.amazon.com "cd /workplace/vairoja/windowshop-addon/src/AmazonFamilyWindowShopApplicationMason; zsh"'

alias ssh='/usr/bin/ssh -2'
alias sshva='ssh -t vairoja.desktop.amazon.com "screen -dR"'
alias scpresume="rsync --partial --progress --rsh=ssh"

