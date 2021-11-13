#!/bin/bash

chmod 700 duck.sh
crontab -e
line="*/5 * * * * ~/duckdns/duck.sh >/dev/null 2>&1"
(crontab -u $(whoami) -l; echo "$line" ) | crontab -u $(whoami) -
./duck.sh
cat duck.log


