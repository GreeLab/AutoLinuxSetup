#!/bin/bash
clear
sudo apt-get install php5 mysql-server apache2 phpmyadmin php5-curl php5-gd
sudo php5enmod mcrypt
echo "ATENÇÃO:"
echo "Copie a seguinte linha e cole no final do arquivo que abrir:"
echo "-----------------------------------"
echo "Include /etc/phpmyadmin/apache.conf"
echo "-----------------------------------"
gksu gedit /etc/apache2/apache2.conf
sudo service apache2 reload
sudo service apache2 restart
read -n1 -r -p "Pressione uma tecla..." key
