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

#export PATH=/apollo/env/ruby193/bin:/apollo/env/SDETools/bin:~/bin:/usr/local/bin:/usr/local/sbin:~/.rvm/bin:$PATH
export PATH=/apollo/env/SDETools/bin:~/bin:/usr/local/bin:/usr/local/sbin:~/.rvm/bin:$PATH
export PATH=/Users/vairoja/MShopIphoneApp/env/Appledoc-2.2.x-XcodeBuildTool-mainline/appledoc:$PATH

source $ZSH/oh-my-zsh.sh

export PAGER=less
export EDITOR='subl -w'

# OS X Alt + Arrows
bindkey "^[[1;9D" backward-word # alt + <-
bindkey "^[[1;9C" forward-word # alt+ ->

# Amazon-specific settings

zstyle ':completion:*' hosts off # disable hostname completion which is damn slow

export ANDROID_SDK_ROOT=/usr/local/Cellar/android-sdk/22.3
export ANDROID_HOME=/usr/local/Cellar/android-sdk/22.3
export I_WANT_NO_DEVTOOLS_SUPPORT_NOW_AND_FOREVER=JAVA_HOME

export P4CONFIG=.p4config
export APPEND_CR_URL=1

alias sst='adb shell dumpsys activity | grep -P "^\s*Running" -A 10'
alias bb='brazil-build'

# alias dst='ssh -t vairoja.desktop.amazon.com "cd /workplace/vairoja/windowshop-addon/src/AmazonFamilyWindowShopApplicationMason; zsh"'

alias ssh='/usr/bin/ssh -2'
alias sshva='ssh -t vairoja-1.desktop.amazon.com "screen -dR"'
alias scpresume="rsync --partial --progress --rsh=ssh"

# Android
alias wsclear='adb shell pm clear com.amazon.windowshop'
alias wskill='adb shell am force-stop com.amazon.windowshop'

# Ensure Kerberos ticket is valid for every command invocation
ensure_kerberos() {
  klist -s || kinit -f
}
precmd() {
  ensure_kerberos
}

pullProgressForHost() {
  ssh -o ConnectTimeout=1 $1 'tail -f /apollo/var/logs/apollo-update.root.log.*(om[1]) | grep "Getting\|exit code" \
      | sed "s/pullPackage .*: Getting package \(.*\) by\|from .*/Pull Started: \1/" \
      | sed "s/pullPackage .*: .*exit code: \(.*\)/Pull Ended:   Exit Code: \1/"'
}

packagesPulledForHost() {
 ssh -o ConnectTimeout=1 $1 'cat /apollo/var/logs/apollo-update.root.log.*(om[1]) | grep -c "pullPackage .*: Operation completed" '
}
