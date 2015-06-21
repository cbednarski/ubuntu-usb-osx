devices:
	diskutil list

ubuntu-14.04.2-desktop-amd64.iso:
	if [ ! -f ubuntu-14.04.2-desktop-amd64.iso ]; then curl -L http://releases.ubuntu.com/trusty/ubuntu-14.04.2-desktop-amd64.iso -o ubuntu-14.04.2-desktop-amd64.iso; fi
	if [ ! -f ubuntu-14.04.2-desktop-amd64.img.dmg ]; then hdiutil convert -format UDRW -o ubuntu-14.04.2-desktop-amd64.img ubuntu-14.04.2-desktop-amd64.iso; fi

1404-desktop: ubuntu-14.04.2-desktop-amd64.iso
	diskutil unmountDisk /dev/disk$(DISK)
	sudo dd if=ubuntu-14.04.2-desktop-amd64.img.dmg of=/dev/rdisk$(DISK) bs=1m
	diskutil eject /dev/disk$(DISK)

ubuntu-14.04.2-server-amd64.iso:
	if [ ! -f ubuntu-14.04.2-server-amd64.iso ]; then curl -L http://releases.ubuntu.com/trusty/ubuntu-14.04.2-server-amd64.iso -o ubuntu-14.04.2-server-amd64.iso; fi
	if [ ! -f ubuntu-14.04.2-server-amd64.img.dmg ]; then hdiutil convert -format UDRW -o ubuntu-14.04.2-server-amd64.img ubuntu-14.04.2-server-amd64.iso; fi

1404-server: ubuntu-14.04.2-server-amd64.iso
	diskutil unmountDisk /dev/disk$(DISK)
	sudo dd if=ubuntu-14.04.2-server-amd64.img.dmg of=/dev/rdisk$(DISK) bs=1m
	diskutil eject /dev/disk$(DISK)

ubuntu-15.04-desktop-amd64.iso:
	if [ ! -f ubuntu-15.04-desktop-amd64.iso ]; then curl -L http://releases.ubuntu.com/vivid/ubuntu-15.04-desktop-amd64.iso -o ubuntu-15.04-desktop-amd64.iso; fi
	if [ ! -f ubuntu-15.04-desktop-amd64.img.dmg ]; then hdiutil convert -format UDRW -o ubuntu-15.04-desktop-amd64.img ubuntu-15.04-desktop-amd64.iso; fi

1504-desktop: ubuntu-15.04-desktop-amd64.iso
	diskutil unmountDisk /dev/disk$(DISK)
	sudo dd if=ubuntu-15.04-desktop-amd64.img.dmg of=/dev/rdisk$(DISK) bs=1m
	diskutil eject /dev/disk$(DISK)

ubuntu-15.04-server-amd64.iso:
	if [ ! -f ubuntu-15.04-server-amd64.iso ]; then curl -L http://releases.ubuntu.com/vivid/ubuntu-15.04-server-amd64.iso -o ubuntu-15.04-server-amd64.iso; fi
	if [ ! -f ubuntu-15.04-server-amd64.img.dmg ]; then hdiutil convert -format UDRW -o ubuntu-15.04-server-amd64.img ubuntu-15.04-server-amd64.iso; fi

1504-server: ubuntu-15.04-server-amd64.iso
	diskutil unmountDisk /dev/disk$(DISK)
	sudo dd if=ubuntu-15.04-server-amd64.img.dmg of=/dev/rdisk$(DISK) bs=1m
	diskutil eject /dev/disk$(DISK)
