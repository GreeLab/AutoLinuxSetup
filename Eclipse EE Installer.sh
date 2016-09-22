#!/bin/bash

tmp_dir=$HOME/
install_dir=/opt
cd $tmp_dir
echo "Baixando Eclipse EE..."
wget "http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/kepler/SR2/eclipse-jee-kepler-SR2-linux-gtk-x86_64.tar.gz" -O "$tmp_dir/eclipse-jee-kepler-SR2-linux-gtk-x86_64.tar.gz"
tar -xzf "eclipse-jee-kepler-SR2-linux-gtk-x86_64.tar.gz"
sudo rsync -a eclipse $install_dir --remove-source-files
sudo rm -rf eclipse
sudo chown -R root:root $install_dir/eclipse
sudo chmod -R +r $install_dir/eclipse
sudo touch /usr/bin/eclipse
sudo chmod 755 /usr/bin/eclipse
sudo printf '#!/bin/sh\nexport ECLIPSE_HOME="/opt/eclipse"\n$ECLIPSE_HOME/eclipse "$@"' > eclipse
sudo mv eclipse /usr/bin/eclipse
sudo printf '[Desktop Entry]\nEncoding=UTF-8\nName=Eclipse\nComment=Eclipse IDE\nExec=/opt/eclipse/eclipse\nIcon=/opt/eclipse/icon.xpm\nTerminal=false\nType=Application\nCategories=GNOME;Application;Development;\nStartupNotify=true\n' > eclipse.desktop
sudo mv eclipse.desktop /usr/share/applications/eclipse.desktop
