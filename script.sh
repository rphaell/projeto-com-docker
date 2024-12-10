#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install apache2 -y

sudo git clone https://github.com/denilsonbonatti/mundo-invertido.git

cd mundo-invertido

sudo cp -R * /var/www/html/

ip a