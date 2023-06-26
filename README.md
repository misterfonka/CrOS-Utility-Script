<div align="center">
    <h1>CrOS Utility Script</h1><br>
    Script that comes with useful debugging utilities and more.
</div>

## How do I use it?
First, you will need to enable developer mode by using ESC+REFRESH+POWER. Once you are on the recovery menu, press CTRL+D
and then ENTER. After that, you will need to press CTRL+D again on the OS Verification is off screen. Wait the five minutes.
Next, connect to WiFi, and then log in or browse as a guest. You can do this in VT2/Crosh. If you're in crosh, type:

```
shell
cd; sudo curl -LO https://raw.githubusercontent.com/misterfonka/crOS-Utility-Script/main/chromeostoolkit.sh && sudo bash chromeostoolkit.sh
```

If you get an error that says read-only filesystem, you will have to disable RootFS Verification. This can be dangerous, look into
the dangers of doing this yourself, but heres how to do it:

```
sudo /usr/share/vboot/bin/make_dev_ssd.sh --remove_rootfs_verification
```

If it asks you to add something to the command like "partitions 2", do it.
## Prerequisites:
You must have Flashrom installed for some utilities (Flashrom is on chromebooks by default, don't worry unless you haven't deleted it) <br>
Your Chromebook must be in developer mode or have some kind of shell that is connected to WiFi.
Some utilities require hardware write protection to be disabled, you can do that by disconnecting the battery and then plugging in a charger. <br>
Note: some models of Chromebooks have different WP methods, to see yours, examine this website. <br>
https://mrchromebox.tech/#devices <br>

# Credits
misterfonka - Creating this script <br>
MrChromebox - Making the Firmware Utility and providing some of the code. <br>
Mercury Workshop - Making the Mac Address randomizer. <br>
