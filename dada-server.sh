#!/bin/bash

chmod 700 duck.sh
crontab -e
line="*/5 * * * * ~/duckdns/duck.sh >/dev/null 2>&1"
(crontab -u root -l; echo "$line" ) | crontab -u root -
./duck.sh
cat duck.log


