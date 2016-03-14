
DIR=/home/pi/raspi_stuff
INSTALL=/usr/local/bin

.PHONY: all install clean

all:
	@echo "TODO"

install:
	cp $(DIR)/configs/vimrc /home/pi/.vimrc
	ln -sf $(DIR)/movsub.py $(INSTALL)/movsub
	ln -sf $(DIR)/scripts/wakeup.sh $(INSTALL)/wakeup
	ln -sf $(DIR)/scripts/shutdown.sh $(INSTALL)/shutdown
	ln -sf $(DIR)/scripts/mediaplayer.sh $(INSTALL)/mediaplayer
