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


Update-mpv
----------

Requirement: OS X, Homebrew and mpv built with --HEAD.

This is a script to automatically remove a current HEAD built [mpv](https://mpv.io) and updates to the newest build through brew.


ScriptUpdater
-------------

Requirement: This repo.

This script will automatically set all the scripts to executable and copy/replace them in /usr/local/bin for easy access in the terminal.