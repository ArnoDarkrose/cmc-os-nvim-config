# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

alias gccfg="gcc -Wall -Wextra -std=gnu23 -g"
alias gccfo="gcc -Wall -Wextra -std=gnu23 -O2"

alias bat="bat --theme TwoDark"

. "$HOME/.cargo/env"

PATH="$PATH:$HOME/.cargo/"

eval "$(zoxide init bash)"
