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
BIOSDump () {
    # Creates bios.bin file in current directory
    flashrom -r bios.bin &> /dev/null
}
# Function to print section headers
print_header() {
    local header_text=$1
    echo -e "\n\e[1m$header_text\e[0m"
}

# Function to get CPU usage
get_cpu_usage() {
    cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
    echo "$cpu_usage%"
}

# Function to get memory usage
get_memory_usage() {
    memory_usage=$(free -m | awk 'NR==2{printf "Used: %sMB (%.2f%%)\n", $3,$3*100/$2 }')
    echo "$memory_usage"
}

# Function to get disk space
get_disk_space() {
    disk_space=$(df -h | awk '$NF=="/"{printf "Total: %sB\nUsed: %sB (%s)\nFree: %sB (%s)\n", $2,$3,$5,$4,$6}')
    echo "$disk_space"
}

# Function to get network statistics
get_network_statistics() {
    network_interface=$(ip -o -4 route show to default | awk '{print $5}')
    network_stats=$(ip -o -4 addr show dev $network_interface | awk '{print "IP: "$4}')
    network_stats+="\n$(ip link show dev $network_interface | awk '/ether/ {print "MAC: "$2}')"
    echo -e "$network_stats"
}

# Function to get load average
get_load_average() {
    load_average=$(uptime | awk -F 'load average:' '{print $2}')
    echo "$load_average"
}

# Function to get CPU temperature
get_cpu_temperature() {
    cpu_temperature=$(sensors | awk '/^Core/ {print "Core "++i": "$3}')
    echo "$cpu_temperature"
}

# Function to get logged-in users
get_logged_in_users() {
    logged_in_users=$(who | awk '{print $1}')
    echo "$logged_in_users"
}

# Function to get process count
get_process_count() {
    process_count=$(ps -e -o user= | sort | uniq -c | awk '{print $2": "$1}')
    echo "$process_count"
}

# Function to get system uptime
get_system_uptime() {
    system_uptime=$(uptime -p)
    echo "$system_uptime"
}

# Function to get swap usage
get_swap_usage() {
    swap_total=$(free -m | awk 'NR==3{print $2}')
    swap_used=$(free -m | awk 'NR==3{print $3}')
    
    if [[ $swap_total -gt 0 ]]; then
        swap_usage=$(awk -v used="$swap_used" -v total="$swap_total" 'BEGIN { printf "Used: %dMB (%.2f%%)\n", used, (used / total) * 100 }')
    else
        swap_usage="No swap space available."
    fi
    
    echo "$swap_usage"
}
FWWPStatus() {
    fwwp_status=$(crossystem wpsw_cur)
    if [[ $fwwp_status == "0" ]]; then
        echo "Disabled"
    else
        echo "Enabled"
    fi
}


clear
echo -e "\e[1mWelcome to my menu!\e[0m"
echo -e "\e[1mSome extra information:\e[0m"
echo    "FW WP: " FWWPStatus
echo -e "\e[1m*************************************\e[0m"
echo    "1) Disable autoupdates"
echo    "2) Remove rootfs verification"
echo    "3) Edit VPD"
echo    "4) Edit GBB flags"
echo    "5) Mac Address Randomizer"
echo    "6) Run MrChromeboxes Firmware Utility"
echo    "7) Dump BIOS/Firmware"
echo    "8) System Info"
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
    echo "Note: Firmware WP needs to be disabled."
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
   clear
   sudo bash firmware-util.sh

elif [[ "$user_choice" = "7" ]]; then
    clear
    echo "Are you sure you want to dump the current system BIOS/Firmware?"
    echo "Nothing bad can come from this, it will just make the bios.bin file"
    echo "in the directory you ran this script in."
    echo ""
    read -p "Type DoIt to confirm: " doit

    if [[ "$doit" = "DoIt" ]]; then
        clear
        echo "Dumping system BIOS/Firmware..."
        BIOSDump
        echo "Dumped successfully."
    else
        clear
        echo "User didn't want to do it..."
    fi

elif [[ "$user_choice" = "8" ]]; then
    # Customize the script's output appearance
    clear
    echo -e "\e[1mSystem Information\e[0m"
    echo "---------------------"

    # Gather and display system information
    print_header "General"
    get_cpu_usage
    get_memory_usage
    get_disk_space

    print_header "Network"
    get_network_statistics

    print_header "System Load"
    get_load_average

    print_header "CPU Temperature"
    get_cpu_temperature

    print_header "Logged-in Users"
    get_logged_in_users

    print_header "Process Count"
    get_process_count

    print_header "System Uptime"
    get_system_uptime

    print_header "Swap Usage"
    get_swap_usage

    echo

    # Press anykey to continue
    read -p "Press anykey to continue: "
fi
