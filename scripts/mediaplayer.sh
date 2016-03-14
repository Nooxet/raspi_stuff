#!/bin/bash

log="/home/pi/mediaplayer.errlog"

# fetch all arguments, in case of filename with spaces
filename=$@

if [ ! -f "$filename" ]; then
	d=`date`
	echo "$d: file '$filename' not found" >> $log
	exit
fi

# start omxplayer black bg and sound via 3.5mm
omxplayer -o local -b "$filename" 

# wait and set focus on the terminal window
#sleep 2
#wmctrl -a LXTerminal

#xrefresh
