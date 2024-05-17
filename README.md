
# Table of Contents

1.  [ADPDS](#orgf742bef)
2.  [Dependencies](#orgeb6b9b5)
3.  [Install](#org6c52550)
4.  [Documentation](#org5cec09b)



<a id="orgf742bef"></a>

# ADPDS

ADPDS (Automated Dotfiles and Programs Deployment Script) is a series of Bash Scripts aiming to make the process of installing Dotfiles and associated Programs stupidly easy

ADPDS is a Bash Script that uses a TUI (Text-User Interface) to make it easy to select and install a user&rsquo;s dotfiles

NOTE: This is made for authors of Dotfile Repos and are intended to be edited, this is just a template


<a id="orgeb6b9b5"></a>

# Dependencies

NOTE: This is only tested on a GNU/Linux System (Modifications might have to be made for other Unix-like OS&rsquo;s)

Nerd Fonts

# Install

In order to install ADPDS do:

``` sh
git clone https://github.com/redkittty/ADPDS.git && cd ADPDS
```


<a id="org5cec09b"></a>

# Documentation

The way ADPDS works is that there is a central boot.sh

This script shows the OS selection Screen and also the way to backup the Home Directory to save dotfiles

In order to have an OS in here, You have to add it to the list like with the example of:

-    Debian

-   󰣇 Arch

The option has to source a script for that OS in os/, ex:

ADPDS/os/arch.sh for Arch Linux

Those scripts should be based of the template provided for Arch Linux

Finally those scripts have to link to os/dotfiles.sh to copy over dotfiles from a defined directory

ex: Debian

``` sh
#!/bin/bash
# DEBIAN (EXAMPLE SCRIPT)
# NERD FONTS ARE RECOMMENDED
# Color definitions (optional)
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
reset='\033[0m'

# Function to display the main menu
function main_menu() {
 clear
 echo -e "${yellow}Would You like to install Additional Software: ${reset}"
 echo "---------------"
 echo "1) Yes"
 echo ""
 echo "2) No"
 echo ""
 echo "---------------"
 echo -e "${yellow}Or another option ${reset}"
 echo "---------------"
 echo ""
 echo "3) Exit"
 echo ""
 echo "---------------"
 echo ""
 echo -n "Enter your choice: "
 read choice
 case $choice in
   1) install_software ;;
   2) exit 0 ;;
   3) exit 0 ;;
   *) echo -e "${red}Invalid choice!${reset}"; sleep 3.5; main_menu ;;
 esac
}

# Function to backup existing dotfiles (optional)
function install_software() {
 echo -e "${yellow}Updating Software and Repos...${reset}"
 sudo apt update && sudo apt upgrade
 echo -e "${yellow}Now installing software!${reset}"
 sudo apt install emacs fish eza doas dash pcmanfm htop zsh git steam mpv unzip rust rust-analyzer neovim python3 kitty qbittorrent firefox bluez bluez-utils base-devel man-db ttf-font-awesome # These aren't actual debian package names
 echo -e "${green}Done installing software!${reset}"; sleep 3.5; exit 0
}
```

