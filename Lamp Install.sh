#!/bin/bash
clear
sudo apt-get install php mysql-server apache2 phpmyadmin php-curl php-gd libapache2-mod-php
sudo phpenmod mcrypt
echo "ATENÇÃO:"
echo "Copie a seguinte linha e cole no final do arquivo que abrir:"
echo "-----------------------------------"
echo "Include /etc/phpmyadmin/apache.conf"
echo "-----------------------------------"
gksu gedit /etc/apache2/apache2.conf
sudo service apache2 reload
sudo service apache2 restart
sudo chmod -R 777 /var/www
read -n1 -r -p "Pressione uma tecla..." key
