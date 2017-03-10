#!/bin/bash

echo "Update system..."
sudo apt-get update 2> /dev/null

echo "Upgrade system..."
sudo apt-get -y upgrade 2> /dev/null

echo "Install packages..."
apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev nodejs zsh
