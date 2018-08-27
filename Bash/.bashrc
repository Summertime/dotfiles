#!/bin/bash
[[ -f /etc/bashrc ]] && . /etc/bashrc

for f in ~/.config/bash/rc/*; do
    [[ -f $f ]] && . "$f"
done
