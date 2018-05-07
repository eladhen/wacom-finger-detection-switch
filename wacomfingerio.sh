#!/bin/bash

# this is a stupid hack by a non-programer to enable normal work with my wacom screen. It turns off and on the finger touch, so I can work with the stylus without my palm being detected on the screen, but being able to reactivate the finger and palm detection easily for zooming and such.

# find the device id. If it's named differently in your computer you will have to change the word grep is looking for. You can find the device's name running "xinput list". Find a unique word in the line of that device and replace it with "Finger" in the next line of code. That should do the trick.
DN=$(xinput list | grep Finger | sed 's/^.*id=//' | cut -b 1-2)

# Check if the device is enabled or not
DIO=$(xinput list-props $DN | grep "Device Enabled" | cut -b 24)

# If the device is enabled, disble it. If it's disabled, enable it.
if [ "$DIO" = "1" ]
then
    xinput disable $DN
else
    xinput enable $DN
fi
