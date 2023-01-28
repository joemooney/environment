#!/bin/bash
#
for f in $(find .config/helix -type f)
do
    diff -q ~/$f $f
    if [ $? -ne 0 ]; then
        echo "[helix-diff] $f"
        diff ~/$f $f
    else
        echo "[helix-same] $f"
    fi
done
