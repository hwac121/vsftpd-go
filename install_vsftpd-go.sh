#!/bin/bash

# Title: VSFTPD service
# Version: 1.0
# Date: Oct. 12, 2024
# Contact: hwac121@ptorbox.onion

# GitHub: https://github.com/hwac121/vsftpd-go.git

#-----------------------------------------------------------------

# Description:
# A simple script to manipulate SFTPD service.

#  Copyright 2024 RJ Levesque, Jr.
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#
#  All I ask is if you use this or any part of this script to give me
#  credit in the comments as the original author.
#

#=======================================================================
#                         FUNCTIONS
#=======================================================================

splash(){
	figlet "VSFTPD Go"
	echo -e "\e[32mVersion 1.0 for Kali Linux\e[0m"
	echo -e "\e[32mby Majik Cat Security\e[0m"
}

#==================================
#         CHECK IF ROOT           #
#==================================

if [ "$EUID" -ne 0 ]
  then 
	clear
	splash
	echo " "
	echo -e "\e[35mMust be run as root or sudo\e[0m"
	echo -e "\e[35mjust type the vsftpd-go command anywhere in a terminal.\e[0m"
	sleep 0.5
  exit
fi

#==================================
#       SETTING UP PROGRAM        #
#==================================
splash
echo " "
echo -e "\e[31mSetting up shortcut and permissions...\e[0m"
rm /usr/bin/vsftpd-go
cp vsftpd-go.sh /usr/bin/vsftpd-go
chmod +x /usr/bin/vsftpd-go
echo -e "\e[34mSetup is complete!\e[0m"
echo -e "\e[36mType vsftpd-go anywhere inn terminal as root or sudo to activate.\e[0m"
