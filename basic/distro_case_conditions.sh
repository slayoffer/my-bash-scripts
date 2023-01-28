#!/bin/bash

finished=0

while [ $finished -ne 1 ]
do

   echo "What is your favorite Linux distro?"

   echo "1 - Arch"
   echo "2 - CentOS"
   echo "3 - Debian"
   echo "4 - Mint"
   echo "5 - Ubuntu"
   echo "6 - Smth else..."
   echo "7 - Exit the script"

   read distro;

   case $distro in
      1) echo "Arch is a rolling release.";;
      2) echo "CentOS is popular on servers.";;
      3) echo "Debian is a community distro.";;
      4) echo "Mint is popular on desktops.";;
      5) echo "Ubuntu is popular everywhere";;
      6) echo "There are many others.";;
      7) finished=1;;
      *) echo "Please choose smth"
   esac
done
echo
echo "Thanks for using this script!"