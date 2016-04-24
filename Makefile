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

ubuntu-16.04-desktop-amd64.iso:
	if [ ! -f ubuntu-16.04-desktop-amd64.iso ]; then curl -L http://releases.ubuntu.com/vivid/ubuntu-16.04-desktop-amd64.iso -o ubuntu-16.04-desktop-amd64.iso; fi
	if [ ! -f ubuntu-16.04-desktop-amd64.img.dmg ]; then hdiutil convert -format UDRW -o ubuntu-16.04-desktop-amd64.img ubuntu-16.04-desktop-amd64.iso; fi

1604-desktop: ubuntu-16.04-desktop-amd64.iso
	diskutil unmountDisk /dev/disk$(DISK)
	sudo dd if=ubuntu-16.04-desktop-amd64.img.dmg of=/dev/rdisk$(DISK) bs=1m
	diskutil eject /dev/disk$(DISK)

ubuntu-16.04-server-amd64.iso:
	if [ ! -f ubuntu-16.04-server-amd64.iso ]; then curl -L http://releases.ubuntu.com/vivid/ubuntu-16.04-server-amd64.iso -o ubuntu-16.04-server-amd64.iso; fi
	if [ ! -f ubuntu-16.04-server-amd64.img.dmg ]; then hdiutil convert -format UDRW -o ubuntu-16.04-server-amd64.img ubuntu-16.04-server-amd64.iso; fi

1604-server: ubuntu-16.04-server-amd64.iso
	diskutil unmountDisk /dev/disk$(DISK)
	sudo dd if=ubuntu-16.04-server-amd64.img.dmg of=/dev/rdisk$(DISK) bs=1m
	diskutil eject /dev/disk$(DISK)
