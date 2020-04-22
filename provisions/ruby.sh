#!/bin/bash

echo 'Ruby configuration...'

echo 'Install Rbenv'

test -d /home/vagrant/.rbenv || \
  git clone https://github.com/rbenv/rbenv.git ~/.rbenv

echo 'Install ruby-build (plugin for Rbenv)'
test -d /home/vagrant/.rbenv/plugins/ruby-build || \
  git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

echo 'export RBENV_ROOT=/home/vagrant/.rbenv' >> ~/.bashrc
echo 'export PATH="${RBENV_ROOT}/bin:$PATH"' >> ~/.bashrc
echo 'export PATH="${RBENV_ROOT}/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
echo 'alias files="cd /vagrant/files"' >> ~/.bashrc

export RBENV_ROOT=/home/vagrant/.rbenv
export PATH=${RBENV_ROOT}/bin:$PATH

eval "$(rbenv init)"

echo 'Install ruby 2.4.10'
rbenv versions | grep 2.4.10 ||
  rbenv install 2.4.10 --verbose

rbenv global 2.4.10
echo "gem: --no-ri --no-rdoc" > ~/.gemrc

echo 'Install Gems...'
rbenv exec gem install bundler -v '1.17.3'
rbenv exec gem install foreman
