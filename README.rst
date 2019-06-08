RESILIENT LINUX
===============

What is
^^^^^^^

    **Resilient Linux** is an operating system based on Debian GNU/Linux which features a liveng partitioning scheme, https://liveng.readthedocs.io, originally thought for live operating systems. Resilient Linux however can be installed to the hard drive as well as being used as a live system.

The liveng compliancy allows complete system and kernel update with a readonly system partition. This allows building next-generation live operating systems and "indestructible" installations.


How to build the initial ISO image
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

A **Debian Stretch** host is required for the build; other Debian-derived systems may work.

The Resilient Linux initial ISO image is built using the standard Debian **live-build** framework, so you first need to install it::
 
    apt install -y live-build

Git **clone this project as root**.

In order to build a Resilient Linux initial image, open the terminal emulator **as root**::

    cd /path/to/resilientlinux/live-build
    bash lb

A .iso image will be built according to your host architecture (if building on an amd64, a 64bit iso will be produced; an i386 iso will be built on i386 hosts).
We only guarantee the 64bit build to work.


Download a ready-to-use image
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

An already-built initial ISO image is also available, see this repository's Releases (https://github.com/marco-buratto/resilientlinux/releases).


How to deploy
^^^^^^^^^^^^^

You can deploy the initial ISO image onto a USB key by using the Resilient Linux USB Installer, https://github.com/marco-buratto/resilientlinux-usb-installer. You will obtain a live operating system.

Install the Resilient Linux Installer (https://github.com/marco-buratto/resilientlinux-installer) within the obtained live operating system in order to be able to install Resilient Linux onto your hard drive.

Deployers will write the Resilient Linux initial ISO image onto all the plugged-in (and listed) USB devices/hard drive, thus creating the complete Resilient Linux liveng-compliant operating system.


Some notes
^^^^^^^^^^

* use sudo for super-cow powers;
* during the boot, you will be asked for the decryption password of the data persistence partition - the secret you enter while deploying, if any;
* system user will be created upon the first boot.



