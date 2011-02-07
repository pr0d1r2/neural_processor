#!/bin/sh

P="$HOME/projects"

cd $P/dotmatrix
git pull
rake setup
source ~/.shell_aliases

cd $P/the_one
./rule.rb
./rule.rb

cd $P
ppullall
ppullall
psetupall

cd $P/applicage
./install.sh
port selfupdate
port upgrade outdated
