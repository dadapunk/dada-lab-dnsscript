#!/bin/bash
sudo apt update -y && sudo apt upgrade -y
sudo rm -rf /opt/plexguide && sudo rm -rf /opt/pgstage && sudo apt install curl -y

chmod 700 duck.sh
#todo
#insert line at crontab without enter the editor
#crontab -e
#line="*/5 * * * * ~/dada-lab-dnsscript/duck.sh >/dev/null 2>&1"
#(crontab -u $(whoami) -l; echo "$line" ) | crontab -u $(whoami) -
crontab -l | { cat; echo "*/5 * * * * ~/dada-lab-dnsscript/duck.sh >/dev/null 2>&1"; } | crontab -
./duck.sh
cat duck.log

echo should i continue with the installation?
read

# curl -s https://raw.githubusercontent.com/PGBlitz/Install/v8.5/install.sh | sudo -H sh
curl -s https://raw.githubusercontent.com/PGBlitz/Install/v90/install.sh | sudo -H sh



