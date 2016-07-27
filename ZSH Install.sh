#!/bin/bash
clear
echo "----------------------------"
echo "------ INSTALLING ZSH ------"
echo "----------------------------"
sudo apt-get -y install zsh
chsh -s $(which zsh)
echo "Processo concluído!"
read -n1 -r -p "Pressione uma tecla..." key
