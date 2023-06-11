# ChromeOS-Toolkit
Toolkit for ChromeOS that comes with some pretty cool options, including, disable autoupdates, remove rootfs verification, edit vpd, and more!

# How to use:
sudo curl -LO https://raw.githubusercontent.com/misterfonka/ChromeOS-Toolkit/main/chromeostoolkit.sh && sudo bash chromeostoolkit.sh

If you get a error about your filesystem being read-only, run: /usr/share/vboot/bin/make_dev_ssd.sh --remove_rootfs_verification
