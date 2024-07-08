#!/bin/bash
sudo apt update
sudo apt install unzip -y
# command to install node on linux machine and node version is v20.15.0
curl -fsSL https://fnm.vercel.app/install | bash
source /home/ubuntu/.bashrc
fnm use --install-if-missing 20
# command to install npm
curl -qL https://www.npmjs.com/install.sh | sh
npm -version
# making a directory
mkdir /srv/strapi
# go to that directory
cd /srv/strapi
# adding file into that directory
git clone https://github.com/gopi8324/PeralThoughts-Devops-internship.git
