#!/bin/bash

# 判斷有無異動
if [[ ! $(git diff --name-only) ]]; then
        echo "Needless To add"
    else
        git add .
        git commit -m 'ci build gRPC file'
        git push origin $1
fi