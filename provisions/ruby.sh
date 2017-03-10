#!/bin/bash

echo 'Ruby configuration...'

echo 'Install Rbenv'

test -d /home/ubuntu/.rbenv || \
  git clone https://github.com/rbenv/rbenv.git ~/.rbenv

echo 'Install ruby-build (plugin for Rbenv)'
test -d /home/ubuntu/.rbenv/plugins/ruby-build || \
  git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

echo 'export RBENV_ROOT=/home/ubuntu/.rbenv' >> ~/.bashrc
echo 'export PATH="${RBENV_ROOT}/bin:$PATH"' >> ~/.bashrc
echo 'export PATH="${RBENV_ROOT}/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc

export RBENV_ROOT=/home/ubuntu/.rbenv
export PATH=${RBENV_ROOT}/bin:$PATH

eval "$(rbenv init)"

echo 'Install ruby 2.4.0'
rbenv versions | grep 2.4.0 ||
  rbenv install 2.4.0 --verbose

rbenv global 2.4.0
echo "gem: --no-ri --no-rdoc" > ~/.gemrc


echo 'Install Gems...'
rbenv exec gem install bundler
rbenv exec gem install rails
