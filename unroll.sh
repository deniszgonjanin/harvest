#!/bin/bash
while read line; do
    eval info=($line)
    if [ ! -d ${info[0]} ]; then
        # Format is: name remote branch
        git clone ${info[1]} -b ${info[2]} ${info[0]}
    fi
done

datacats init
