#!/bin/bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash

source /home/cbsumastre/.nvm/nvm.sh

nvm install 20


git config --global user.name "Carlos Blázquez Sumastre"
git config --global user.email "cbsumastre@gmail.com"