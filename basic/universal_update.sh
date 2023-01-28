#!/bin/bash

release_file=/etc/os-release

if grep -q "Arch" $release_file # -q for quiet mode
then
    # The host is based on Arch, run the pacman update cmd
    sudo pacman -Syu
fi

if grep -q "Ubuntu" $release_file
then
    # The host is based on Debian or Ubuntu
    # Run the apt version of cmd
    sudo apt update
    sudo apt upgrade
fi