#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install curl -y

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh

sudo docker run -dti --name app-bootcamp -p 80:80 phaelcrypto/meusite:1.0