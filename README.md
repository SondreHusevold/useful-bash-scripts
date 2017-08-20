Bash Scripts
===========

This is a collection of bash scripts I've made myself. These are used typically for batch converting music or webm files.


Conv
-----

Requirement: ffmpeg (--with-libvpx)

This is a conversion script to convert any video format into a webm. This can be done with audio intact or without audio. Subs can also be added.


Convmu
------

Requirement: ffmpeg, parallel

This is a conversion script to mass convert audio files into some other format. Usually used for converting FLAC or other lossless formats into stuff like ogg vorbis or opus.

Usage:

`convmu -i [from] -o [to]`

Use -help for more info.

SyncOlympus
-----------

Requirement: [gdrive](https://github.com/prasmussen/gdrive)

This script backs up my KeePass password database and checks whether or not the Google Drive version of the database is the newer version.

If it isn't the newest version it will upload the newest database to Google Drive for use with Keepass2Android. Otherwise it downloads the newest version from Google Drive.

Deletes the oldest backup when the folder exceeds 5 older versions to ensure it isn't completely filled with old backups.


ToggleSamba
-----------

Requirement: Samba, Systemd

Toggles the samba daemon through systemd. Used for my Windows virtual machines when I need it to get access to my main Ext4 hard drive.


VMDevice
--------

Requirements: virsh (Libvirt)

Attaches/Detaches the USB of your choice to the running virtual machine. Requires a virtual machine that is using libvirt. Also requires an XML file with vendor/device ID to the USB devices.

Usage:

`VMDevice -a [M, K or W. Mouse, keyboard or Wacom Tablet]`


VMMonitor
---------

Requirements: [ddcutil](https://github.com/rockowitz/ddcutil/)

Changes the monitor output to HDMI/DisplayPort. Requires editing the Virtual Control Panel (VCP) to be correct for your monitor. Mine is 60, yours may differ. Look at ddcutil's documentation for further information. The HDMI / DP varaibles (0x11 and 0x0f) may also differ from your monitor.

TheUpdater
-----------

[Deprecated. I'm not using OS X/macOS anymore and probably isn't useful anymore. Here for archiving purposes]
Requirement: Clover or FakeSMC or mpv built from head.

This is a script to update FakeSMC after HWMonitor updates it from the update menu and puts it into /System/Library/Extensions. This will move it from S/L/E into Clover's kext folder to make the extension folder more vanilla.

It can also update mpv by uninstalling the current head, pulling the freshest head from GitHub, build it with all options enabled and link it to /Applications.

I've also added a Clover bootloader option to it due to a fault in my personal laptop's Clover updating procedure as it'll install Clover to the main drive instead of the EFI partition. Thus this part of the script will move the 'updated' Clover folder on the main HDD and put it into /EFI.

Updating FakeSMC and Clover requires you to say yes at least once to mounting the EFI at script start per boot unless Clover is sat to automatically mount the EFI partition.   


ScriptUpdater
-------------

Requirement: This repo.

This script will automatically set all the scripts to executable and copy/replace them in /usr/local/bin for easy access in the terminal.
