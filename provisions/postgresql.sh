#!/bin/bash

echo 'Postgresql configuration...'

apt-get install -y postgresql-common postgresql postgresql-contrib libpq-dev

echo 'Change password for "postgres" role'
su postgres -c "psql -c \"ALTER USER postgres with password 'postgres'\" "
su postgres -c "psql -c \"CREATE USER testuser WITH PASSWORD 'testuser' CREATEDB\" "
su postgres -c "psql -c \"CREATE DATABASE test_development OWNER testuser\" "

echo 'Restart postgresql...'
service postgresql restart
