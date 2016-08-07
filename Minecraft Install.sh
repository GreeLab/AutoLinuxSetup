#!/bin/bash
echo "Baixando e instalando Minecraft...."
echo "----------------------------------"
echo "Por favor, insira a senha para permissões SUDO..."
echo "----------------------------------"
sudo rm -Rf /opt/minecraft*
sudo rm -Rf /usr/share/applications/Minecraft.desktop
reset
echo "Limpando instalações anteriores..."
echo "----------------------------------"
echo "Baixando Minecraft..."
wget https://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar
reset
echo "Criando atalhos..."
sudo mkdir /opt/minecraft
sudo mv Minecraft.jar /opt/minecraft/
echo -e '[Desktop Entry]\n Version=1.0\n Name=minecraft\n Exec=java -jar /opt/minecraft/Minecraft.jar\n Icon=/\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/Minecraft.desktop
sudo chmod +x /usr/share/applications/Minecraft.desktop
cp /usr/share/applications/Minecraft.desktop  ~/Área\ de\ Trabalho/
reset
echo "Execução terminada! Pressione ENTER tecla para sair"
read

