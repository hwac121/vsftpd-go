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

Splash(){
	figlet "VSFTPD Go" | lolcat
	echo -e "\e[32mVersion 1.0 for Kali Linux\e[0m"
	echo -e "\e[32mby Majik Cat Security\e[0m"
	echo -e "\e[33mBe sure to visit my youtube channel Majik Cat Security\e[0m"
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
	sleep 0.5
  exit
fi

#=================================================================================================
#========                                 MENU SYSTEM                                    ========#
#=================================================================================================

options=("Check vsftpd" "Start vsftpd" "Restart vsftpd" "Stop vsftpd" "Quit")
PS3='Choose which VSFTPD option you like:  '

while [ "$menu" != 1 ]; do
clear
Splash
select opt in "${options[@]}" ; do
		case $opt in
#=================================================================================================
#========                                  VSFTPD MENU                                   ========#
#=================================================================================================
		"Check vsftpd")
			clear
			Splash
			echo " "
			echo "Checking VSFTPD Server status..."
			sleep 3
			service vsftpd status
			sleep 3
		break
		;;
		"Start vsftpd")
			clear
			Splash
			echo " "
			echo "Starting VSFTPD Server..."
			sleep 3
			service vsftpd start
			sleep 3
		break
		;;
		"Restart vsftpd")
			clear
			Splash
			echo " "
			echo "Restarting VSFTPD Server..."
			sleep 3
			service vsftpd restart
			sleep 3
		break
		;;		
		"Stop vsftpd")
			clear
			Splash
			echo " "
			echo "Stopping VSFTPD Server..."
			sleep 3
			service vsftpd stop
			sleep 3
		break
		;;
#=================================================================================================
#========                               QUIT FUNCTION                                    ========#
#=================================================================================================
		"Quit")
			clear
			Splash
			echo -e " "
			echo -e "\e[37mThank you for using VSFTPD GO 1.0 by Majik Cat Security - Oct. 2024\e[0m"
			sleep 3
			clear
			menu=1
		break
		;;
#=================================================================================================
#========                        ERROR CAPTURE - INVALID OPTION                          ========#
#=================================================================================================
		*) 
			clear
			Splash
			echo " "
			echo -e "invalid option $REPLY"
		break
		;;
		esac
	done
done

