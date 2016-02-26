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

convmu -i [from] -o [to]

Use -help for more info.


TheUpdater
-----------

Requirement: Clover or FakeSMC or mpv built from head.

This is a script to update FakeSMC after HWMonitor updates it from the update menu and puts it into /System/Library/Extensions. This will move it from S/L/E into Clover's kext folder to make the extension folder more vanilla.

It can also update mpv by uninstalling the current head, pulling the freshest head from GitHub, build it with all options enabled and link it to /Applications.

I've also added a Clover bootloader option to it due to a fault in my personal laptop's Clover updating procedure as it'll install Clover to the main drive instead of the EFI partition. Thus this part of the script will move the 'updated' Clover folder on the main HDD and put it into /EFI.

Updating FakeSMC and Clover requires you to say yes at least once to mounting the EFI at script start per boot unless Clover is sat to automatically mount the EFI partition.   


ScriptUpdater
-------------

Requirement: This repo.

This script will automatically set all the scripts to executable and copy/replace them in /usr/local/bin for easy access in the terminal.