#!/bin/bash

## Removendo travas eventuais do apt ##

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Atualizando o repositório ##

sudo apt update &&

cd &&

## Instalando pacotes e programas do repositório deb do Ubuntu ##

sudo apt install python3 python-pip git vim gnome-tweaks build-essential libssl-dev flatpak gnome-software-plugin-flatpak gnome-software -y &&

## Instalando repositótios ##

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo &&

sudo add-apt-repository ppa:daniruiz/flat-remix &&

## Instalando tema Flat-Remix ##

sudo apt install flat-remix -y &&

sudo apt install flat-remix-_____ -y && ## Adicionar 'gtk' ou 'gnome' após o traço. ##

## Softwares que precisam de download externo ##

cd ~/Downloads/ && wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo dpkg -i *.deb &&

wget -c https://code.visualstudio.com/docs/?dv=linux64_deb && sudo dpkg -i *.deb &&

cd &&

## Instalando apps flatpak ##

flatpak install flathub com.jetbrains.PyCharm-Community -y &&

flatpak install flathub org.gimp.GIMP -y &&

flatpak install flathub com.axosoft.GitKraken -y &&

flatpak install flathub com.stremio.Stremio -y &&

flatpak install flathub com.notepadqq.Notepadqq -y &&

sudo apt flat-remix-gtk

##Instalando driver wi-fi ##

sudo apt update &&
sudo apt install dkms -y &&
git clone -b v5.6.4.2 https://github.com/aircrack-ng/rtl8812au.git &&
cd rtl8812au &&
sudo make dkms_install &&

## Instalando bluetooth ##

sudo apt install bluetooth -y &&

## Atualização do sistema ##

sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

#Fim do Script ##

echo "Finalizado"

## Reboot ##

reboot

