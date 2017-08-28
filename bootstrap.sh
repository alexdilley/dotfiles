#!/bin/sh
mkdir -p ~/.config/git
~/.dotfiles/dotsync/bin/dotsync -L
crontab ~/.dotfiles/crontab
mv ~/.backup/.dotfiles/ssh/id_ed25519 ~/.ssh/ 2>/dev/null
cd ~/.dotfiles/vim/bundle/command-t/ruby/command-t/ext/command-t && ruby extconf.rb && make
