# pico-autoburner
A shell script to detect and then copy an uf2 file to RPI Pico - useful for multiple updates.

NB 
Tested on OSX. You will need to check the mount point for your operating system.

Use
===

1) Prepare your UFT file.  Open in Arduino and select Sketch/"export compiled binary".
2) Move the "filename.ino.utf" file into the pico-autoburner folder.
3) Open a terminal and change directory to the pico-autoburner folder.
4) If first run then give yourself execute permissions with 'chmod a+x pico-autoburner.sh'
5) Start auto-picoburner

% ./pico-autoburner.sh FILENAME.ino.uf2

6) Connect your Pico(s) in Bootsel mode. Wait for the "Scanning .. Done" cycle to complete and unplug, then plug in next Pico(s).
7) Ctrl-C stops the script.

Obviously you do this totally at your own risk.  Any filesystems mounted in /Volumes with the string "RPI-" in their name will get your file copied over. 

This script can be adapted to any file/folder and the "RPI-" keyword changed.

You might get a "Permission denied" - this can be caused when the script tries to write to an already written Pico and the OS still thinks the Pico is connected as a USB drive.