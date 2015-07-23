dotfiles
========

My own dotfiles.

    git clone https://github.com/ejel/dotfiles.git ~/.dotfiles
    cd ~/.dotfiles
    ./dotbot-install dotbot.conf.yaml


## VIM
Launch `vim`, run `:BundleInstall`

## Keyboard Mapping
1. Install [Karabiner](https://pqrs.org/osx/karabiner/index.html.en) and [Seil](https://pqrs.org/osx/karabiner/seil.html)
2. Map Capslock to Control at OS X level in System Preferences
4. Launch Seil and enable Change Control_L to keycode 80.
5. Launch Karabiner and enable Remap Left Control to Hyper.

## Symlinks
    TODO use dotbot for symlinking
    ~/.dotfiles/prezto --> ~/.zprezto
    All zrc files
    ~/.dotfiles/karabiner/privates.xml --> ~/Library/Application\ Support/Karabiner/privates.xml
    ~/.dotfiles/quicksilver/com.blacktree.Quicksiver.plist --> ~/Library/Preferences/com.blacktree.Quicksilver.plist
