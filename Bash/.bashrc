#!/bin/bash
if [[ -f /etc/bashrc ]]; then
    . /etc/bashrc
fi

for f in ~/.config/bash/rc/*; do
    if [[ -f $f ]]; then
        if [[ -x $f ]]; then
            . <("$f")
        else
            . "$f"
        fi
    fi
done
