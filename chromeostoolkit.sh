#!/bin/bash

# Author: misterfonka
# Purpose: Toolkit for ChromeOS that comes with cool stuff kind of just something random I wanted to make lol. I will be adding more.

# Functions

CheckEnrollmentRO() {
    vpd -i RO_VPD -s check_enrollment="$RO_VPD_edited"
}
MfgDate() {
    vpd -i RO_VPD -s mfg_date="$RO_VPD_edited"
}
MlbSerialNumber() {
    vpd -i RO_VPD -s mlb_serial_number="$RO_VPD_edited"
}
ModelName() {
    vpd -i RO_VPD -s model_name="$RO_VPD_edited"
}
Region() {
    vpd -i RO_VPD -s region="$RO_VPD_edited"
}
SerialNumber() {
    vpd -i RO_VPD -s serial_number="$RO_VPD_edited"
}
SKUNumber() {
    vpd -i RO_VPD -s sku_number="$RO_VPD_edited"
}
StableDeviceSecret() {
    vpd -i RO_VPD -s stable_device_secret_DO_NOT_SHARE="$RO_VPD_edited"
}
ActivateDate() {
    vpd -i RW_VPD -s ActivateDate="$RW_VPD_edited"
}
BlockDevmode() {
    vpd -i RW_VPD -s block_devmode="$RW_VPD_edited"
}
CheckEnrollmentRW() {
    vpd -i RW_VPD -s check_enrollment="$RW_VPD_edited"
}
FirstActiveOmahaPingSent() {
    vpd -i RW_VPD -s first_active_omaha_ping_sent="$RW_VPD_edited"
}
GBindAttribute() {
    vpd -i RW_VPD -s gbind_attribute="$RW_VPD_edited"
}
ShouldSendRlzPing() {
    vpd -i RW_VPD -s should_send_rlz_ping="$RW_VPD_edited"
}
UBindAttribute() {
    vpd -i RW_VPD -s ubind_attribute="$RW_VPD_edited"
}
SetGBB () {
  # Creates bios.bin file in current directory
  flashrom -r bios.bin &> /dev/null
  # Sets GBB flags to the value the user put in
  gbb_utility --set --flags=$set_gbbchoice bios.bin &> /dev/null
  # Writes updated bios.bin file
  flashrom -i GBB -w bios.bin &> /dev/null
  # Removes bios.bin file from current directory
  rm bios.bin
}

clear
echo    "Menu Options:"
echo    "*************************************"
echo    "1) Disable autoupdates"
echo    "2) Remove rootfs verification"
echo    "3) Edit VPD"
echo    "4) Edit GBB flags"
echo    "5) Mac Address Randomizer"
echo    "6) Run MrChromeboxes Firmware Utility"
read -p "Select the number corresponding to what you want to do: " user_choice

if [[ "$user_choice" = "1" ]]; then
    clear
    echo "WARNING!"
    echo "YOU WILL NEED TO DISABLE ROOTFS VERIFICATION TO DO THIS."
    echo "ALSO, IF YOU DO THIS YOU WILL BE STUCK AT THE CHECKING FOR UPDATES SCREEN"
    echo "IF YOU POWERWASH. TO FIX THIS, RECOVER."
    echo ""
    read -p "Type DoIt to continue: " doit

    # Remove autoupdates
    clear
    if [[ "$doit" = "DoIt" ]]; then
    echo "Removing autoupdates..."
    mv /sbin/update_engine /sbin/update_engine.bak
    echo "Succesfully removed autoupdates!"

else
    clear
    echo "User didn't want to do it... :("
fi

elif [[ "$user_choice" = "2" ]]; then
    clear
    echo "TO RESET THE ROOTFS VERIFICATION BACK TO NORMAL, RECOVER."
    read -p "Type DoIt to continue: " doit

    # Remove RootFS verification
    clear
    if [[ "$doit" = "DoIt" ]]; then
        echo "Removing RootFS verification..."
        /usr/share/vboot/bin/make_dev_ssd.sh --remove_rootfs_verification
        echo "Succesfully removed RootFS verification!"
        echo "Rebooting..."
        reboot
    else
        clear
        echo "User didn't want to do it... :("
    fi

elif [[ "$user_choice" = "3" ]]; then
clear
    echo "Choose a VPD partition to edit:"
    echo "1) Read-Writable (RW_VPD)"
    echo "2) Write-Protected (RO_VPD)"
    read -p "Choose one based on the corresponding number: " vpd_choice

        # Choose what to edit in whatever VPD partition they chose
        clear
        if [[ "$vpd_choice" = "1" ]]; then
            echo "What do you want to edit?"
            echo "ActivateDate  block_devmode   check_enrollment    first_active_omaha_ping_sent    gbind_attribute     should_send_rlz_ping    ubind_attribute"   
            read -p "Choose the name of what you want to edit: " RW_VPD_editname
            clear
            read -p "What do you want to change $RW_VPD_editname to?: " RW_VPD_edited
            clear
            echo "Are you sure you want to edit this? This could potentially be dangerous."
            echo "Name: $RW_VPD_editname"
            echo "Editing to: $RW_VPD_edited"
            echo ""
            read -p "Type DoIt to confirm: " doit

        elif [[ "$vpd_choice" = "2" ]]; then
            echo "What do you want to edit?"
            echo "check_enrollment  mfg_date    mlb_serial_number   model_name  region  serial_number   sku_number  stable_device_secret_DO_NOT_SHARE"
            read -p "Choose the name of what you want to edit: " RO_VPD_editname
            read -p "What do you want to change $RO_VPD_editname to?: " RO_VPD_edited
            echo "Are you sure you want to edit this? This could potentially be dangerous."
            echo "Name: $RO_VPD_editname"
            echo "Editing to: $RO_VPD_edited"
            echo ""
            read -p "Type DoIt to confirm: " doit
        fi

             if [[ "$doit" = "DoIt" ]]; then
                echo "Let's do it!"
            else
                echo "User didn't want to do it... :("
                exit 0
            fi

                    case "$RO_VPD_editname" in
                    "check_enrollment") CheckEnrollmentRO ;;
                    "mfg_date") MfgDate ;;
                    "mlb_serial_number") MlbSerialNumber ;;
                    "model_name") ModelName ;;
                    "region") Region ;;
                    "serial_number") SerialNumber ;;
                    "sku_number") SKUNumber ;;
                    "stable_device_secret_DO_NOT_SHARE") StableDeviceSecret ;;
                    esac

                    case "$RW_VPD_editname" in
                    "ActivateDate") ActivateDate ;;
                    "block_devmode") BlockDevmode ;;
                    "check_enrollment") CheckEnrollmentRW ;;
                    "first_active_omaha_ping_sent") FirstActiveOmahaPingSent ;;
                    "gbind_attribute") GBindAttribute ;;
                    "should_send_rlz_ping") ShouldSendRlzPing ;;
                    "ubind_attribute") UBindAttribute ;;
                    esac
                    
elif [[ "$user_choice" = "4" ]]; then
    clear
    read -p "What do you want to set the GBB flags to? " set_gbbchoice
    clear
    echo "Are you sure you want to set your GBB flags to $set_gbbchoice?"
    read -p "Type DoIt to confirm: " doit

    if [[ "$doit" = "DoIt" ]]; then
        clear
        echo "Setting GBB flags to $set_gbbchoice..."
        SetGBB
        echo "Set GBB flags to $set_gbbchoice successfully."
    else
        clear
        echo "User didn't want to do it..."
    fi

elif [[ "$user_choice" = "5" ]]; then
    clear
    # NOTE: ALL CREDITS FOR THE MAC ADDRESS RANDOMIZER GO TO MERCURY WORKSHOP.
    if [ $(id -u) -ne 0 ]; then
	    echo "Run this script as root (sudo)."
	    exit 1
    fi

    echo "------------------------------"
    echo "Mercury MAC Address Randomizer"
    echo "This script was made by Mercury"
    echo "Workshop. Go support them on"
    echo "Github profile."
    echo "------------------------------"
    echo ""

    state=$(cat /sys/class/net/wlan0/operstate)

    mac_dev=$(cat /sys/firmware/vpd/ro/wifi_mac0)
    echo "Device MAC: ${mac_dev}"

    get_mac_cur() {
	    cat /sys/class/net/wlan0/address
    }
    mac_cur="$(get_mac_cur)"
    echo "Current MAC: ${mac_cur}"

    gen_mac() {
	    echo "$(echo "${mac_dev}" | head -c $((-3 * $1 + 17))):$(hexdump -e '1/1 "%02x:"' -v -n $1 /dev/urandom)" | head -c 17
    }

    echo "Choose an action:"
    echo "3 - Randomize last 3 bytes."
    echo "5 - Randomize last 5 bytes."
    echo "c - Custom MAC address."
    if [ "${mac_cur}" != "${mac_dev}" ]; then
	    echo "r - Reset MAC address"
    fi
    echo "e - Cancel and exit"
    read -p "> " action

    case "${action}" in
	    3)
		    mac_new="$(gen_mac 3)"
		    ;;
	    5)
		    mac_new="$(gen_mac 5)"
		    ;;
	    c | C)
		    read -p "Enter new MAC address: " mac_new
		    ;;
	    r | R)
		    mac_new="${mac_dev}"
		    ;;
	    e | E)
		    echo "Cancelled"
		    exit
		    ;;
	    *)
		    echo "ERROR: Invalid action"
		    exit 1
		    ;;
    esac

    echo -n "Setting new MAC (${mac_new})... "
    if [ "${state}" == "up" ]; then
	    ip link set dev wlan0 down
    fi
    ip link set dev wlan0 address "${mac_new}"
    if [ "${state}" == "up" ]; then
	    ip link set dev wlan0 up
    fi

    mac_new_real=$(get_mac_cur)
    if [ "${mac_new_real}" == "${mac_new}" ]; then
	    echo "Done"
    elif [ "${mac_new_real}" == "${mac_cur}" ]; then
	    echo "ERROR: Failed to change MAC address."
    else
	    echo "Something wacky happened."
    fi
    echo "Current MAC: ${mac_new_real}"

elif [[ "$user_choice" = "6" ]]; then
   curl -LOk mrchromebox.tech/firmware-util.sh
   sudo bash firmware-util.sh
else
    echo "ERROR: Invalid option"
fi
