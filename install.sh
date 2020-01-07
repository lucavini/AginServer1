#!/bin/bash

sudo apt-get update
sudo apt upgrade

sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce



docker --version
sudo docker create mysql
sudo docker create owncloud
sudo apt-get install sysstat
sudo chmod +x clear.sh
sudo ./clear.sh
sudo chmod +x memoryLog.sh
sudo chmod +x script3.sh

sudo ./memoryLog.sh &
sudo ./script3.sh >> saida.txt &