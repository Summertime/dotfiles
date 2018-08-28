#!/bin/bash
[[ -f /etc/bashrc ]] && . /etc/bashrc

for f in ~/.config/bash/rc/*; do
    if [[ -f $f ]]; then
        if [[ -x $f ]]; then
            . <("$f")
        else
            . "$f"
        fi
    fi
done
