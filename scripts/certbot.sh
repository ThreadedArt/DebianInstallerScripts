# Certbot FREE SSL


# update packages

apt-get update -y && apt-get upgrade -y


# Using Python-pip vs the annoying snapd

apt-get install python3 python3-venv libaugeas0 -y


# Setup virtual env

python3 -m venv /opt/certbot/

sudo /opt/certbot/bin/pip install --upgrade pip

# Install Cerbot

sudo /opt/certbot/bin/pip install certbot certbot-apache

# move to binarys

sudo ln -s /opt/certbot/bin/certbot /usr/bin/certbot

# Install Apache SSL

sudo certbot --apache

# Setup auto renewal

echo "0 0,12 * * * root /opt/certbot/bin/python -c 'import random; import time; time.sleep(random.random() * 3600)' && sudo certbot renew -q" | sudo tee -a /etc/crontab > /dev/null

# Dry Run

sudo /opt/certbot/bin/pip install --upgrade certbot certbot-apache

