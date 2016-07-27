#!/bin/bash
sudo apt-add-repository ppa:webupd8team/java -y
sudo apt-get update
sudo apt-get install -y oracle-java8-installer
install_dir=$HOME/instalados/androidstudio/
mkdir -p $install_dir
echo "Baixando Android Tools..."
wget "https://dl.google.com/dl/android/studio/ide-zips/2.1.0.9/android-studio-ide-143.2790544-linux.zip" -O "$install_dir/android-studio-ide-143.2790544-linux.zip"
cd $install_dir
unzip "android-studio-ide-143.2790544-linux.zip"
cd "android-studio/bin"
./studio.sh