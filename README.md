# ubuntu-usb-osx

This project includes a simple makefile that helps you create a bootable USB
installer for Ubuntu on OSX. Basically, [these instructions][1] but with less typing.

[1]: http://www.ubuntu.com/download/desktop/create-a-usb-stick-on-mac-osx

## Supported Versions:

- `1404-desktop` (Ubuntu 14.04.2 64 bit)
- `1404-server` (Ubuntu 14.04.2 64 bit)
- `1504-desktop` (Ubuntu 15.04 64 bit)
- `1504-server` (Ubuntu 15.04 64 bit)

If you want a different version go [here](http://releases.ubuntu.com/).

## Instructions

1. Run `make devices`
2. Insert your USB stick. You'll see a new device appear in step 3.
3. Run `make devices`
4. Note the disk number for your USB stick. It will be something like `/dev/disk2`.
The only part you care about is **2** (or 3, or 4, or whatever) for step 6.
5. Choose the OS version and type from the list above. Use this with `make` in step 6.
6. `make 1504-server DISK=2` **Note** This step will ask for your password for `sudo`.
7. Pop the USB stick into the computer you want to Ubuntu-ify and restart it.

Depending on how fast your USB stick is, step 5 make take awhile.
