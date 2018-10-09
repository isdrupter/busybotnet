apt-get install binfmt-support qemu qemu-user-static debootstrap

qemu-debootstrap --arch armel sid
chroot armel apt install libpcap-dev zlib1g-dev cmake flex bison libssl-dev pkg-config libtool-bin libncursesw5-dev libidn11-dev build-essential


qemu-debootstrap --arch mipsel sid
chroot mipsel apt install libpcap-dev zlib1g-dev cmake flex bison libssl-dev pkg-config libtool-bin libncursesw5-dev libidn11-dev build-essential


