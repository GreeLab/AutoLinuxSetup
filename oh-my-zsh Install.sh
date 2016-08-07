#!/bin/bash
clear
echo "----------------------------"
echo "------ INSTALLING ZSH ------"
echo "----------------------------"
sudo apt-get install -y zsh
chsh -s $(which zsh)
sudo apt-get install -y tmux
clear
echo "---------------------------------"
echo "----- INSTALLING OH MY ZSH ------"
echo "---------------------------------"
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# AUTO INSTALL POWERLINE MISSING
# wget https://github.com/powerline/powerline/archive/develop.zip -O ~/Downloads/develop.zip
# cd ~/Downloads/
# unzip develop.zip
# cd powerline-develop/

echo "Processo concluído!"
echo "Faça LOGOFF para as alterações entrarem em vigor!"
read -n1 -r -p "Pressione uma tecla..." key
