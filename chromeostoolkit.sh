#!/bin/bash

# Author: misterfonka
# Purpose: CrOS Utility Script filled with useful utilities for ChromeOS.

# Checks if script is ran as root.
if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root/sudo."
    exit 1
fi

# Downloads files for the script to work and then sources them
echo "Downloading supporting files..."
curl -LO https://raw.githubusercontent.com/misterfonka/crOS-Utility-Script/main/functions.sh >/dev/null 2>&1
source ./functions.sh

# Clear out the previous terminal output and displays the menu
clear
echo_red "CrOS Utility Script"
echo ""
echo "misterfonka <misterfonka@gmail.com>"
echo_blue "*************************************"
echo "$(echo_blue "**") $(echo "FW WP: $(FWWPStatus)")"
echo "$(echo_blue "**") $(echo "FW Ver: $FWVERSION")"
echo "$(echo_blue "**") $(echo "Device Model: $_x")"
echo "$(echo_blue "**") $(echo "HWID: $HWID")"
echo "$(echo_blue "**") $(echo "Board Name: $BOARD")"
echo_blue "*************************************"
echo "$(echo_blue "** [WP]") $(echo_yellow " 1)")  Disable Autoupdates"
echo "$(echo_blue "** [WP]") $(echo_yellow " 2)")  Re-Enable Autoupdates"
echo "$(echo_blue "** [WP]") $(echo_yellow " 3)")  Disable RootFS verification"
echo "$(echo_blue "**") $(echo_yellow "      4)")  Edit VPD"
echo "$(echo_blue "** [WP]" ) $(echo_yellow " 5)")  GBBUtils"
echo "$(echo_blue "**") $(echo_yellow "      6)")  Unblock Devmode"
echo "$(echo_blue "**") $(echo_yellow "      7)")  FREDestroyer"
echo "$(echo_blue "**") $(echo_yellow "      8)")  Reset System"
echo "$(echo_blue "**") $(echo_yellow "      9)")  System Info"
echo "$(echo_blue "** [WP?]") $(echo_yellow "10)") Run MrChromeboxes Firmware Utility"
echo "$(echo_blue "**") $(echo_yellow "      11)") Mac Address Randomizer"
echo "$(echo_blue "**") $(echo_yellow "      12)") Dump BIOS/Firmware"
echo "$(echo_blue "**") $(echo_yellow "      13)") View configuration"
echo "$(echo_blue "** [WP]") $(echo_yellow " 14)") Set HWID"
echo "$(echo_blue "**") $(echo_yellow "      R)")  Reboot"
echo "$(echo_blue "**") $(echo_yellow "      Q)")  Quit"
echo "$(echo_blue "**") $(echo_yellow "      C)")  Credits"
read -p "Select the number corresponding to what you want to do: " user_choice

# Do whatever number the user put in
if [[ "$user_choice" = "1" ]]; then
	disable_autoupdates

elif [[ "$user_choice" = "2" ]]; then
	reenableautoupdates

elif [[ "$user_choice" = "3" ]]; then
	remove_rootfs_verification

elif [[ "$user_choice" = "4" ]]; then
	edit_vpd

elif [[ "$user_choice" = "5" ]]; then
	GBBUtils
                    
elif [[ "$user_choice" = "6" ]]; then
    unblock_devmode

elif [[ "$user_choice" = "7" ]]; then
	fre_destroyer

elif [[ "$user_choice" = "8" ]]; then
	reset_system

elif [[ "$user_choice" = "9" ]]; then
	systeminfo

elif [[ "$user_choice" = "10" ]]; then
	# All credits go to MrChromebox for this utility.
    firmwareutil

elif [[ "$user_choice" = "11" ]]; then
	# All credits go to Mercury Workshop for this utility.
    macaddressrandomizer

elif [[ "$user_choice" = "12" ]]; then
	dumpbios

elif [[ "$user_choice" = "13" ]]; then
	show_crossystem_values
	show_rw_vpd_values
	show_ro_vpd_values

elif [[ "$user_choice" = "14" ]]; then
	edit_hwid

elif [[ "$user_choice" =~ [Rr] ]]; then
	reboot

elif [[ "$user_choice" =~ [Qq] ]]; then
	exit 0

elif [[ "$user_choice" =~ [Cc] ]]; then
	viewcredits
fi
