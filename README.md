# busybotnet
---------------

##Offensive & Defensive Security for Embedded Systems

### What is busybotnet?

Busybotnet is a (deviously named) fork of [busybox](https://busybox.net) that aims to make many of the security tools that
are often only found on full systems available their resource lacking counterparts we call embedded devices. With the 
recent surge in popularity of such devices (aka, the explosion of the 'internet of things'), came many, *many* security 
issues. Part of the problem is that it's difficult to implement cryptography tools on systems with limited resources, 
and the rest is caused by incompetent OEM's that never issue updates or bother to patch any of the gaping security holes 
in their systems. This inevitably leads to the devices being repurpoused by hackers, visa vi botnets... The 
point of this project is to provide all of the security tools a system admin needs to administer embedded devices in one 
static binary, hence the term, "Busybotnet".

### Compiling & Installation
Building is litterally 3 commands
**Step 1: ** <br>
$ make clean <br>
**Step 2: ** <br>
$ make menuconfig - configure your build <br>
** Step 3: ** <br>
$ make <br>

To install, run ./busybox --install -s /path/to/wherever

#### Cross Compiling
Cross-compiling busybo* is easy. First, you need a toolchain. <br>
**Step 1:** <br>
Grab the latest [buildroot](https://download.buildroot.org) and build it (same as above, $ make clean;make menuconfig;make) <br>
**Step 2** <br>
Configure with *make menuconfig* -- Specifically, tell busybotnet where your toolchain and sysroot are located. <br>
**Step 3** <br>
$ make <br>

That's it!

### Want to help?

Great! We've even included a shell script (add.sh) that simplifies the process of adding applets to busybotnet (or just plain busybox). If you want to improve busybotnet, fork our code and submit a pull request.
