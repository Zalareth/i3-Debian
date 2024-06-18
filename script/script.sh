#!/bin/bash

# Hata durumunda scriptin durmasını sağla
set -e

# Sistem paketlerini güncelle
echo "Sistem güncelleniyor..."
sudo apt update

# Paketleri sıra ile kur ve her birinin kurulumu hakkında bilgi ver

# i3 wm
echo "i3 (window manager) indiriliyor ve kuruluyor..."
sudo apt install -y i3

# i3 status bar
echo "i3status (status bar) indiriliyor ve kuruluyor..."
sudo apt install -y i3status

# i3lock
echo "i3lock (screen locker) indiriliyor ve kuruluyor..."
sudo apt install -y i3lock

# dmenu
echo "dmenu (dynamic menu) indiriliyor ve kuruluyor..."
sudo apt install -y dmenu

# nitrogen
echo "nitrogen (wallpaper tool) indiriliyor ve kuruluyor..."
sudo apt install -y nitrogen

# polybar
echo "polybar (status bar) indiriliyor ve kuruluyor..."
sudo apt install -y polybar

# rofi
echo "rofi (window switcher) indiriliyor ve kuruluyor..."
sudo apt install -y rofi

# chromium web browser
echo "chromium (web browser) indiriliyor ve kuruluyor..."
sudo apt install -y chromium

# neofetch
echo "neofetch (system information tool) indiriliyor ve kuruluyor..."
sudo apt install -y neofetch

# thunar file manager
echo "thunar (file manager) indiriliyor ve kuruluyor..."
sudo apt install -y thunar

# Sistem yükseltme işlemi
echo "Sistem yükseltiliyor..."
sudo apt upgrade -y

# Belgeler dizinine git
echo "Belgeler dizinine gidiliyor..."
cd ~/Belgeler

# Belgeler dizini mevcut değilse oluştur
if [ ! -d "~/Belgeler" ]; then
  echo "Belgeler dizini oluşturuluyor..."
  mkdir -p ~/Belgeler
fi

# GitHub deposunu indirme
echo "GitHub deposu indiriliyor: https://github.com/Ogeday1915/i3-Debian.git"
git clone https://github.com/Ogeday1915/i3-Debian.git ~/Belgeler/i3-Debian

# Kurulum tamamlandı mesajı
echo "Kurulum tamamlandı!"
