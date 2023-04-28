#!/bin/bash

# LAMP Stack Running as root with zero security improvements


# update and upgrade the packges

apt update -y && apt upgrade -y


# Firewall Setup

# The Firewall Application
apt install ufw -y

# Open Port 80 and 443
ufw allow in "WWW Full"

# Open Port 22
ufw allow "OpenSSH"

# Enable, Start

# enable ufw
ufw enable

# Start on boot
systemctl enable ufw


# install apache

apt install apache2 -y


# install mariadb
# we use this over the default mysql-server / mysql-client

apt install mariadb-server -y

# install php

apt install php libapache2-mod-php php-mysql -y

##
## PLEASE REMEMBER SECRUITY HAS NOT BEEN SETUP HERE AND MUST BE DONE MANUALLY BOTH WITH PHP, APACHE, MARIADB USING SECURE_INSTALLATION AMONG OTHE THINGS
##

