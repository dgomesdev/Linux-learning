#!/bin/bash

echo "Updating and upgrading the server"
apt-get update
apt-get upgrade -y

echo "Installing Apache and Unzip"
apt-get install apache2 -y
apt-get install unzip -y

echo "Downloading files"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Copying files"
cd linux-site-dio-main
cp -R * /var/www/html
