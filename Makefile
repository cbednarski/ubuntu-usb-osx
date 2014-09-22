download:
	if [ ! -f ubuntu-14.04.1-desktop-amd64.iso ]; then curl -s http://releases.ubuntu.com/trusty/ubuntu-14.04.1-desktop-amd64.iso -o ubuntu-14.04.1-desktop-amd64.iso; fi
	if [ ! -f ubuntu-14.04.1-desktop-amd64.img.dmg ]; then hdiutil convert -format UDRW -o ubuntu-14.04.1-desktop-amd64.img ubuntu-14.04.1-desktop-amd64.iso; fi

devices:
	diskutil list

burn:
	diskutil unmountDisk /dev/disk$(DISK)
	sudo dd if=ubuntu-14.04.1-desktop-amd64.img.dmg of=/dev/rdisk$(DISK) bs=1m
	diskutil eject /dev/disk$(DISK)