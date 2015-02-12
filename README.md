Bash Scripts
===========

This is a collection of bash scripts I've made myself. These are used typically for batch converting music or webm files.

Conv
-----

Requirement: ffmpeg (--with-libvpx)

This is a conversion script to convert any video format into a webm. This can be done with audio intact or without audio. Subs can also be added.


Convmu
------

Requirement: ffmpeg

This is a batch conversion script to mass convert audio files into some other format. Usually used for converting FLAC or other lossless formats into stuff like ogg vorbis or opus. 

MP3 is there if someone absolutely must have something in MP3 and will be converted into 320kbp/s in that case. Though converting to another format is usually recommended.


TheUpdater
-----------

Requirement: Clover or FakeSMC or mpv built from head.

This is a script to update FakeSMC after HWMonitor updates it from the update menu and puts it into /System/Library/Extensions. This will move it from S/L/E into Clover's kext folder to make the extension folder more vanilla.

It'll also update mpv by uninstalling the current head, pulling the newest build from GitHub, build it with all options enabled and link it to /Applications.

I've also added a Clover bootloader option to it due to a fault in my laptop's Clover updating procedure it'll install Clover to the main drive instead of the EFI partition. Thus this will move the 'updated' Clover folder on the main HDD and put it into /EFI.

Updating FakeSMC and Clover requires you to say yes at least once to mounting the EFI at script start per boot unless Clover is sat to automatically mount the EFI partition.   


ScriptUpdater
-------------

Requirement: This repo.

This script will automatically set all the scripts to executable and copy/replace them in /usr/local/bin for easy access in the terminal.

Install
-------

Requirement: OS X

This script automatically installs and configures OS X to my liking when reinstalled. This is tweaked from [Ryan's original script](https://github.com/ryanmaclean/OSX-Post-Install-Script) all credits go to him.