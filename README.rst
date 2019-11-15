RESILIENT LINUX 2.0
===================

What is
^^^^^^^

**Resilient Linux** is an operating system based on Debian GNU/Linux which features a liveng partitioning scheme, https://liveng.readthedocs.io, originally thought for live operating systems. Resilient Linux, however, is hard drive installable: the liveng compliancy (programs and kernel updates with a readonly system partition) is thus suitable for "indestructible" hard drive installations.

On the https://www.resilientlinux.com website, you can find an image for the hard drive installation (via the Resilient Linux Installer, https://github.com/marco-buratto/resilientlinux-installer, which is already installed and will write the Resilient Linux ISO image and create the complete liveng-compliant operating system).

Here are the instructions on how to build the base ISO image (so the one without the Installer... installed).
Please note that alone, this one is a plain Debian GNU/Linux live system - as said, the liveng partitioning scheme is created by the Installer.



How to build the ISO image
^^^^^^^^^^^^^^^^^^^^^^^^^^

A **Debian Buster** host is required for the build; other Debian-derived systems may work.

The Resilient Linux ISO image is built using the standard Debian **live-build** framework, so you first need to install it::
 
    apt install -y live-build

Git **clone this project as root**.

In order to build a Resilient Linux Buster-based image, open the terminal emulator **as root**::

    cd /path/to/resilientlinux/live-build
    lb build

A .iso image will be built according to your host architecture (if building on an amd64, a 64bit iso will be produced; an i386 iso will be built on i386 hosts).
We only guarantee the 64bit build to work.


Some notes
^^^^^^^^^^

Use sudo for super-cow powers.

Resilient Linux differs from the LumIT Labs's liveng definition in the way the readonly second system partition is rewritten: a hook is called at every initramfs update and not only within a kernel package's postinst. This allows using the standard Debian kernel packages and it's more robust.
Behaviour is accomplished by forking the live-tool package - see the /bin/live-update-initramfs file inside.

