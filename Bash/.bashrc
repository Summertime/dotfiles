#!/bin/bash
[[ -f /etc/bashrc ]] && . /etc/bashrc

for f in ~/.config/bash/*; do
    [[ -f $f ]] && . "$f"
done
