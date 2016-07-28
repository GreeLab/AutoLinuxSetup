#!/bin/bash
clear
echo "----------------------------"
echo "------ INSTALLING ZSH ------"
echo "----------------------------"
sudo apt-get -y install zsh
chsh -s $(which zsh)
clear
echo "---------------------------------"
echo "----- INSTALLING OH MY ZSH ------"
echo "---------------------------------"
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
echo "Processo concluído!"
echo "Faça LOGOFF para as alterações entrarem em vigor!"
read -n1 -r -p "Pressione uma tecla..." key
