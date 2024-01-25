#!/bin/bash

cd $(git rev-parse --show-toplevel)

read -r -p "Enter path, please <3: " ADDRESS

if [ -f "$ADDRESS" ]; then
    COUNT=$(wc -l "$ADDRESS" | awk '{print $1}')
    UNIQ=$(awk '{print $1}' "$ADDRESS" | sort -u | wc -l | awk '{print $1}')
    HASHF=$(($COUNT-$UNIQ))
    echo "$COUNT $UNIQ $HASHF"
else
    echo "$ADDRESS: No such file or directory"
    exit 1
fi

