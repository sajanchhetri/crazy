#!/bin/bash
apt install zip && apt install unzip
echo "Choose an option:"
echo "1) Backup"
echo "2) Restore"
echo "3) Quit"
read -p "Enter your choice: " choice
case $choice in
  1) echo "Backing up files..."
     cd /sdcard/android/data # add your backup commands here
     zip -r cs3-backup.zip com.astragon.cs3
     mv cs3-backup.zip /sdcard
     ;;
  2) echo "Restoring files..."
    rm -rf /sdcard/android/data/com.astragon.cs3
     cd /sdcard # add your restore commands here
    cp cs3-backup.zip /sdcard/android/data
     cd /sdcard/android/data
    unzip cs3-backup.zip
    rm cs3-backup.zip
     ;;
  3) echo "Exiting program..."
     exit 0
     ;;
  *) echo "Invalid option. Please try again."
     ;;
esac
