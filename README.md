# ubuntu-usb-osx

This project includes a simple makefile that helps you create a bootable USB installer for Ubuntu 14.04.1 on OSX. Basically, [these instructions](http://www.ubuntu.com/download/desktop/create-a-usb-stick-on-mac-osx) but with less typing.

Also note: this script downloads the x64 version of Ubuntu Desktop 14.04.1. If you want a different version go [here](http://releases.ubuntu.com/).

## Instructions

1. `make download`
2. `make devices`
3. Insert your USB stick. You'll see a new device appear in step 4.
4. `make devices`
5. Note the disk number for your USB stick. It will be something like `/dev/disk2`.
The only part you care about is **2** (or 3, or 4, or whatever) for step 6.
6. `make DISK=2 burn` **Note** This step will ask for your password for `sudo`.
7. Pop the USB stick into the computer you want to Ubuntu-ify and restart it.

Depending on how fast your USB stick is, step 6 make take awhile.