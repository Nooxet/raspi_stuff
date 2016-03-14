#!/bin/bash

# a nice motd with IP and MAC addresses

clear

echo "$(tput setaf 2)
   .~~.   .~~.
  '. \ ' ' / .'$(tput setaf 1)
   .~ .~~~..~.		$(tput sgr0)mmmmmm                        mmmmmm       ##$(tput setaf 1)
  : .~.'~'.~. :		$(tput sgr0)##\"\"\"\"##                      ##\"\"\"\"#m     \"\"$(tput setaf 1)
 ~ (   ) (   ) ~	$(tput sgr0)##    ##   m#####m  mm#####m  ##    ##   ####$(tput setaf 1)
( : '~'.~.'~' : )	$(tput sgr0)#######    \" mmm##  ##mmmm \"  ######\"      ##$(tput setaf 1)
 ~ .~ (   ) ~. ~	$(tput sgr0)##  \"##m  m##\"\"\"##   \"\"\"\"##m  ##           ##$(tput setaf 1)
  (  : '~' :  ) 	$(tput sgr0)##    ##  ##mmm###  #mmmmm##  ##        mmm##mmm$(tput setaf 1)
   '~ .~~~. ~'		$(tput sgr0)\"\"    \"\"\"  \"\"\"\" \"\"   \"\"\"\"\"\"   \"\"        \"\"\"\"\"\"\"\"$(tput setaf 1)
       '~'
$(tput sgr0)"

_IP=$(hostname -I) || true
if [ "$_IP" ]; then
	printf "IP address: %s\n" "$_IP"
fi

_MAC=$(ifconfig | grep HWaddr | awk '{print $5}') || true
if [ "$_MAC" ]; then
	printf "MAC address: %s\n" "$_MAC"
fi
