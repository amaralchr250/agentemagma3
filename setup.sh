#!/bin/sh
mkdir /opt/Magma3
mkdir /opt/Magma3/Force1
mkdir /opt/Magma3/Force1/Client
mkdir /opt/Magma3/Force1/Client/Updater
cp -r /tmp/Updater /opt/Magma3/Force1/Client
cp Global.xml /opt/Magma3/Force1/Client
cp force1updater.service /etc/systemd/system
chmod -R 744 /opt/Magma3/
sudo systemctl daemon-reload
sudo systemctl enable force1updater
sudo service force1updater start