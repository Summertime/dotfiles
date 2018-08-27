#!/bin/bash
for f in ~/.config/bash/profile/*; do
    [[ -f $f ]] && . "$f"
done
