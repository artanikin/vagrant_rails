#!/bin/bash

echo 'Install redis...'

apt-get install -y redis-server

systemctl enable redis-server.service
systemctl restart redis-server.service
