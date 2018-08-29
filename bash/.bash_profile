#!/bin/bash
for f in ~/.config/bash/profile/*; do
    if [[ -f $f ]]; then
        if [[ -x $f ]]; then
            . <("$f")
        else
            . "$f"
        fi
    fi
done
