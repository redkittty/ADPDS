
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


<a id="org6c52550"></a>

# Install

In order to install ADPDS do


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

