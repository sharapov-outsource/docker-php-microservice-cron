#!/bin/sh
echo "* * * * * /usr/local/bin/php /srv/runner > /dev/stdout" >> /etc/crontabs/root
/usr/sbin/crond -f -l 8
