dotfiles
========

My own dotfiles.

    git clone https://github.com/ejel/dotfiles.git ~/.dotfiles
    cd ~/.dotfiles
    git submodule update --init
    symlink each dotfile


## VIM
Launch `vim`, run `:BundleInstall`

## Keyboard Mapping
1. Install [Karabiner](https://pqrs.org/osx/karabiner/index.html.en) and [Seil](https://pqrs.org/osx/karabiner/seil.html)
2. Map Capslock to Control at OS X level in System Preferences
3. ln -s ~/.dotfiles/karabiner/privates.xml ~/Library/Application\ Support/Karabiner/privates.xml
