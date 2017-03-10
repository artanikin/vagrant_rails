#!/bin/bash

echo 'LC_ALL="en_US.UTF-8"' > /etc/default/locale
dpkg-reconfigure locales

exit 0;
