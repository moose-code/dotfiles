#!/bin/bash

cat ./plugins.txt | xargs -L 1 code --install-extension
