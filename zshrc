# Path to your oh-my-zsh configuration.
ZSH=$HOME/.dotfiles/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

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
plugins=(osx autojump git)

source $ZSH/oh-my-zsh.sh

zstyle ':completion:*' hosts off # disable hostname completion which is damn slow

export PATH=~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin
export ANDROID_SDK_ROOT=/usr/local/Cellar/android-sdk/r20.0.3

# mShop API
export RIO_HOME=~/workspace/vairoja_mac/Rio

export P4CONFIG=.p4config

# alias dst='ssh -t vairoja.desktop.amazon.com "cd /workplace/vairoja/windowshop-addon/src/AmazonFamilyWindowShopApplicationMason; zsh"'

alias sshva='ssh -t vairoja.desktop.amazon.com "screen -dR"'


# perlbrew switch perl-5.14.2

