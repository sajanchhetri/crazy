#!/bin/bash
#©This Script is made by Crazy

apt install zip && unzip #zip install
clear
echo -e "\e[32m
░█████╗░██████╗░░█████╗░███████╗██╗░░░██╗
██╔══██╗██╔══██╗██╔══██╗╚════██║╚██╗░██╔╝
██║░░╚═╝██████╔╝███████║░░███╔═╝░╚████╔╝░
██║░░██╗██╔══██╗██╔══██║██╔══╝░░░░╚██╔╝░░
╚█████╔╝██║░░██║██║░░██║███████╗░░░██║░░░
░╚════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚══════╝░░░╚═╝░░░\e[0m"
echo -e "\033[33m𝙒𝙚𝙡𝙘𝙤𝙢𝙚 𝙩𝙤 𝙩𝙝𝙚 𝙨𝙘𝙧𝙞𝙥𝙩 𝙨𝙚𝙡𝙚𝙘𝙩 𝙩𝙝𝙚 𝙤𝙥𝙩𝙞𝙤𝙣 𝙩𝙤 𝘾𝙤𝙣𝙩𝙞𝙣𝙪𝙚:\033[0m"
echo -e "\033[33m1. 
█ █▄░█ █▀ ▀█▀ ▄▀█ █░░ █░░   █▀█ █▀
█ █░▀█ ▄█ ░█░ █▀█ █▄▄ █▄▄   █▄█ ▄█\033[0m"
echo -e "\033[33m2. 
█▄▄ ▄▀█ █▀▀ █▄▀ █░█ █▀█   ▄▀█ █▄░█ █▀▄
█▄█ █▀█ █▄▄ █░█ █▄█ █▀▀   █▀█ █░▀█ █▄▀

█▀█ █▀▀ █▀ ▀█▀ █▀█ █▀█ █▀▀
█▀▄ ██▄ ▄█ ░█░ █▄█ █▀▄ ██▄\033[0m"
echo -e "\033[33m3. 
█░█ █▀█ █▀▀ █▀█ ▄▀█ █▀▄ █▀▀
█▄█ █▀▀ █▄█ █▀▄ █▀█ █▄▀ ██▄

█▀ █▀▀ █▀█ █ █▀█ ▀█▀
▄█ █▄▄ █▀▄ █ █▀▀ ░█░\033[0m"
echo -e "\033[33m4. 
█▀▀ █▀█ █▀█ █▀█ █▀█   █▀▀ █ ▀▄▀
██▄ █▀▄ █▀▄ █▄█ █▀▄   █▀░ █ █░█\033[0m"
echo -e "\033[33m5. 
█▀█ █░█ █ ▀█▀
▀▀█ █▄█ █ ░█░\033[0m"

read -p "Enter your choice: " choice

case $choice in
  1) echo "Installing OS..."
 options=("kali" "ubuntu" "debin" "Quit")
echo "Please select an option:"
PS3="Enter your choice: "
select opt in "${options[@]}"
do
  case $opt in
    "kali")
    apt update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Kali/kali-xfce.sh -O kali-xfce.sh && chmod +x kali-xfce.sh && bash kali-xfce.sh
    ;;
    "ubuntu")
    apt update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Ubuntu/ubuntu-xfce.sh -O ubuntu-xfce.sh && chmod +x ubuntu-xfce.sh && bash ubuntu-xfce.sh
;;
    "debin")
     apt update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Debian/debian-xfce.sh -O debian-xfce.sh && chmod +x debian-xfce.sh &&  bash debian-xfce.sh
;;
    "Quit")
      echo "backing"
      cd ~/crazy && bash crazy.sh
      break
      ;;
    *) echo "Invalid option"
      ;;
  esac
done
;;
  2) echo "Backing up and restoring..."
     options=("backup" "restore" "Quit")
echo "Please select an option:"
PS3="Enter your choice: "
select opt in "${options[@]}"
do
  case $opt in
  "backup")
  echo backing up.....
  tar -zcf /sdcard/termux-backup.tar.gz -C /data/data/com.termux/files ./home ./usr
;;
"restore")
echo restoring.......
tar -zxf /sdcard/termux-backup.tar.gz -C /data/data/com.termux/files --recursive-unlink --preserve-permissions
;;
"Quit")
      echo "backing"
      cd ~/crazy && bash crazy.sh
      break
      ;;
    *) echo "Invalid option"
      ;;
  esac
done
;;
  3) echo "Upgrading script..."
  cd ~
  rm -rf crazy
git clone https://github.com/sajanchhetri/crazy
cd ~/crazy && bash crazy.sh
     ;;
  4) echo "fix error"
     # add your commands to upgrade script here
     ;;
  5) echo "Quitting..."
     exit 0
     ;;
  *) echo "Invalid option. Please try again."
     ;;
esac
