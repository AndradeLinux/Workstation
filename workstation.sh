#!/bin/bash

## Removendo travas eventuais do apt ##

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Atualizando o repositório ##

sudo apt update && 

## Instalando pacotes e programas do repositório deb do Ubuntu ##

sudo apt install python3 python-pip git vim kdenlive gitkraken inkscape gnome-tweaks build-essential libssl-dev flatpak gnome-software-plugin-flatpak -y &&

## Instalando repositótio Flatpak ##

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo -y &&

## Softwares que precisam de download externo ##

cd ~/Downloads/ && wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo dpkg -i *.deb &&

## Instalando Pycharm ##

flatpak install flathub com.jetbrains.PyCharm-Community -y &&

## GIMP ##

flatpak install flathub org.gimp.GIMP -y &&

##Instalando driver wi-fi ##

sudo apt update &&
sudo apt install dkms -y &&
git clone -b v5.6.4.2 https://github.com/aircrack-ng/rtl8812au.git &&
cd rtl8812au &&
sudo make dkms_install -y &&

## Instalando bluetooth ##

sudo apt install bluetooth -y &&

## Instalando Gnome-software -y ##

sudo apt install gnome-software -y &&

## Atualização do sistema ##

sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

#Fim do Script ##

echo "Finalizado"

## Reboot ##

reboot &&
