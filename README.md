# crOS Utility Script
Script that is filled with useful utilities and debugging features for ChromeOS.

# How to use:
cd; curl -LO https://raw.githubusercontent.com/misterfonka/crOS-Utility-Script/main/chromeostoolkit.sh && curl -LO https://raw.githubusercontent.com/misterfonka/crOS-Utility-Script/main/functions.sh && sudo bash chromeostoolkit.sh

You may need to disable rootfs verification to run this script, hopefully in the next release i'll try to fix that.

# Prerequisites:
You must have flashrom installed for some utilities (flashrom is on chromebooks by default, don't worry unless you haven't deleted it)
Chromebook must be in developer mode.
Some utilities require FW WP to be disabled.

# Read-only filesystem
If you get a error about your filesystem being read-only, you have to disable rootfs verification which is risky. You can look into the dangers of doing that yourself, but here is how to do it:
sudo /usr/share/vboot/bin/make_dev_ssd.sh --remove_rootfs_verification 
