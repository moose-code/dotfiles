#!/bin/bash

# Setup fzf
if ! git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf 2>/dev/null && [ -d "~/.fzf" ] ; then
    echo "Clone failed because the .fzf exists"
fi
~/.fzf/install --all

# Setup fzf-z
if ! 
git clone https://github.com/andrewferrier/fzf-z.git ~/.fzf-z 2>/dev/null && [ -d "~/.fzf-z" ] ; then
    echo "Clone failed because the .fzf-z exists"
fi
  
