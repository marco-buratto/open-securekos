RESILIENT LINUX v2
==================

What is
^^^^^^^

**Resilient Linux** is a desktop operating system based on Debian GNU/Linux which features a liveng partitioning scheme, https://liveng.readthedocs.io, originally thought for live operating systems. Resilient Linux, however, is hard drive installable: the liveng compliancy (programs and kernel updates with a readonly system partition) is thus suitable for "indestructible" hard drive installations. Moreover, the persistence partition's rw folder contains the diffs from the stock installation: **system backups and snapshots are performed by just copying the rw folder**. 

Here are the instructions on how to build the **base ISO image** (which contains the **installer**, reponsible for creating the liveng partitioning scheme).


How to build the ISO base image
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

A **Debian Buster** host is required for the build; other Debian-derived systems may work.

The Resilient Linux ISO image is built using the standard Debian **live-build** framework, so you first need to install it::
 
    apt install -y live-build

Git **clone this project as root**.

In order to build a Resilient Linux Buster-based image, open the terminal emulator **as root**::

    cd /path/to/resilientlinux/live-build
    
    lb config
    lb build

A .iso image will be built according to your host architecture (if building on an amd64, a 64bit iso will be produced; an i386 iso will be built on i386 hosts). We only guarantee the 64bit build to work.
