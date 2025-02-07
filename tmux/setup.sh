#!/bin/bash
mv ./.tmux.conf ~
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
curl -o ~/.config/tmux https://raw.githubusercontent.com/ivnvxd/tmux-snazzy/main/.tmux.snazzy.theme
