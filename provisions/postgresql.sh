#!/bin/bash

echo 'Postgresql configuration...'

apt-get install -y postgresql-common postgresql postgresql-contrib libpq-dev

echo 'Change password for "postgres" role'
su postgres -c "psql -c \"ALTER USER postgres with password '123'\" "

echo 'Open ports'
echo "listen_addresses = '*'" >> "/etc/postgresql/9.5/main/postgresql.conf"
tee /etc/postgresql/9.5/main/pg_hba.conf > /dev/null 2>&1 <<EOF
local   all             postgres                                trust
host    all             all             0.0.0.0/0               md5
local   all             all                                     trust
host    all             all             127.0.0.1/32            trust
host    all             all             ::1/128                 trust
EOF

echo 'Restart postgresql...'
service postgresql restart
