#!/bin/bash
sudo apt update -y
sudo apt install apache2 php php-mysql php-cgi php-gd php-cli -y
#sudo apt install mariadb-server mariadb-client -y 

wget https://wordpress.org/latest.tar.gz
tar xfz latest.tar.gz
#sudo cp wp-config-sample.php wp-config.php
sudo cp -r wordpress/* /var/www/html/
cd /var/www/html/
sudo chown -R www-data:www-data /var/www/html/
sudo chmod -R 755 /var/www/html/
sudo rm -rf index.html