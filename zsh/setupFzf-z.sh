#!/bin/bash

if ! git clone https://github.com/skywind3000/z.lua.git ~/.z.lua 2>/dev/null && [ -d "~/.z.lua" ] ; then
    echo "Clone failed because the .z.lua already exists"
fi

# # if ! git clone https://github.com/rupa/z.git ~/.z 2>/dev/null && [ -d "~/.z" ] ; then
# #     echo "Clone failed because the .z already exists"
# # fi
# mkdir ~/.z.script
# cd ~/.z.script
# wget https://raw.githubusercontent.com/rupa/z/master/z.sh
# . ~/.z.script/z.sh

# Setup fzf
if ! git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf 2>/dev/null && [ -d "~/.fzf" ] ; then
    echo "Clone failed because the .fzf already exists"
fi
~/.fzf/install --all

# Setup fzf-z
if ! git clone https://github.com/andrewferrier/fzf-z.git ~/.fzf-z 2>/dev/null && [ -d "~/.fzf-z" ] ; then
    echo "Clone failed because the .fzf-z already exists"
fi
