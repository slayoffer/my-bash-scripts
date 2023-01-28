#!/bin/bash

# Install Apache if it's not already present
if [ ! -f /usr/sbin/apache2 ]; # -f looks for file, -d looks for dir
	then 
        sudo apt install -y apache2
        sudo apt install -y libapache2-mod-php8.1
        sudo a2enmod php8.1
        sudo systemctl restart apache2
fi