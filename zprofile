export JAVA_HOME=`/usr/libexec/java_home -v '1.7*'`

# pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
