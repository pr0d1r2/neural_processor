#!/bin/sh

P="$HOME/projects"

cd $P/dotmatrix
gem install bundler
bundle install
git pull
rake setup
source ~/.shell_aliases

cd $P/the_one
./rule.rb

cd $P
ppullall
psetupall

cd $P/applicage
./install.sh
port selfupdate
port upgrade outdated

cd $P/ebook_assimilator
./assimilate.rb
