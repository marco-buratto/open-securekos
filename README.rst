RESILIENT LINUX 2.0
===================

What is
^^^^^^^

**Resilient Linux** is a desktop operating system based on Debian GNU/Linux which features a liveng partitioning scheme, https://liveng.readthedocs.io, originally thought for live operating systems. Resilient Linux, however, is hard drive installable: the liveng compliancy (programs and kernel updates with a readonly system partition) is thus suitable for "indestructible" hard drive installations. Moreover, the persistence partition's rw folder contains the diffs from the stock installation: system backups need a tarball of the rw folder only. 

Use the image from the https://www.resilientlinux.com website for an easy installation (**base image** with the **installer** on board).

Here are the instructions on how to build the **base ISO image**. 
The **installer** https://github.com/marco-buratto/resilientlinux-installer is reponsible for creating the liveng partitioning scheme.


How to build the ISO base image
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

A **Debian Buster** host is required for the build; other Debian-derived systems may work.

The Resilient Linux ISO image is built using the standard Debian **live-build** framework, so you first need to install it::
 
    apt install -y live-build

Git **clone this project as root**.

In order to build a Resilient Linux Buster-based image, open the terminal emulator **as root**::

    cd /path/to/resilientlinux/live-build
    lb build

A .iso image will be built according to your host architecture (if building on an amd64, a 64bit iso will be produced; an i386 iso will be built on i386 hosts). We only guarantee the 64bit build to work.
