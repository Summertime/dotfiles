#!/bin/bash
[[ -f /etc/bashrc ]] && . /etc/bashrc

for f in ~/.config/bash/rc/*; do
    [[ -x $f ]] && . <("$f")
done
