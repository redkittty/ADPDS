#!/bin/bash
# ARCH (EXAMPLE SCRIPT)
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

# Function for installing Software
function install_software() {
  echo -e "${yellow}Updating Software and Repos...${reset}"
  sudo pacman -Syyu
  echo -e "${yellow}Now installing software!${reset}"
  sudo pacman -S emacs fish eza doas dash pcmanfm htop zsh git steam mpv unzip rust rust-analyzer neovim python3 kitty qbittorrent firefox bluez bluez-utils base-devel man-db ttf-font-awesome lua_language_server noto-fonts-emoji hyfetch || echo -e "${red}This script only supports Arch-based Distros${reset}"; sleep 3.5; exit 1
  echo -e "${green}Done installing software!${reset}"; sleep 3.5; source dotfiles.sh
}

# Call the main menu only once
main_menu
