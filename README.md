# wacom-finger-detection-switch
On Linux on Cinnamon desktop (and possibly in GNOME) the Wacom screen on my Thinkpad X201 Tablet takes finger gestures like zooming, but gets confused when the stylus and my palm touch the screen together. This is a small hack of a script that toggles the finger and palm detection off and on. 

I you have a similar problem and you want to use my script download it and run:
$ xinput list

Find the touch device and look for a unique word in it's line. In my case the word is Finger. That might work for you and might not.

Now edit the file wacomfingerio.sh and change the word Finger in line 6 of the code to the unique word you've found.

You can now give the script executable permission:

$ chmod +x wacomfingerio.sh

And run it ./wacomfingerio.sh

Hopefully, it works.

Now go to your distro keyboard shortcuts (it's usually an app named "keyboard") and add a new keybinding that runs wacomfingerio.sh.

That's all, folks!
