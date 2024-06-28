#!/bin/bash
sudo apt update
sudo apt install npm -y
sudo apt install postgresql postgresql-contrib
sudo systemctl start postgresql.service
curl -fsSL https://get.docker.com -o install-docker.sh
sh install-docker.sh --dry-run
sudo sh install-docker.sh
sudo usermod -aG docker ubuntu
