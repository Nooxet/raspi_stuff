#!/bin/sh

# wake up the monitor, in case it goes black

_tty="/dev/tty1"
if [ ! -w "$_tty" ]; then
	chmod 666 /dev/tty1
fi

# send an "unblank" signal to screen
echo -ne "\033[9;0]" > /dev/tty1
