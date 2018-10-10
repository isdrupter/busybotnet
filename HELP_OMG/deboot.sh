apt-get install binfmt-support qemu qemu-user-static debootstrap

qemu-debootstrap --arch armel sid armel
chroot armel apt install libpcap-dev zlib1g-dev cmake flex bison libssl-dev pkg-config libtool-bin libncursesw5-dev libidn11-dev build-essential


qemu-debootstrap --arch mipsel sid armel
chroot mipsel apt install libpcap-dev zlib1g-dev cmake flex bison libssl-dev pkg-config libtool-bin libncursesw5-dev libidn11-dev build-essential

qemu-debootstrap --arch i386 sid i386
chroot mipsel apt install libpcap-dev zlib1g-dev cmake flex bison libssl-dev pkg-config libtool-bin libncursesw5-dev libidn11-dev build-essential

qemu-debootstrap --arch armhf sid armhf
chroot mipsel apt install libpcap-dev zlib1g-dev cmake flex bison libssl-dev pkg-config libtool-bin libncursesw5-dev libidn11-dev build-essential

qemu-debootstrap --arch arm64 sid arm64
chroot mipsel apt install libpcap-dev zlib1g-dev cmake flex bison libssl-dev pkg-config libtool-bin libncursesw5-dev libidn11-dev build-essential

qemu-debootstrap --arch mips sid mips
chroot mipsel apt install libpcap-dev zlib1g-dev cmake flex bison libssl-dev pkg-config libtool-bin libncursesw5-dev libidn11-dev build-essential

qemu-debootstrap --arch ppc64el sid ppc64el	
chroot mipsel apt install libpcap-dev zlib1g-dev cmake flex bison libssl-dev pkg-config libtool-bin libncursesw5-dev libidn11-dev build-essential


qemu-debootstrap --arch s390x sid s390x
chroot mipsel apt install libpcap-dev zlib1g-dev cmake flex bison libssl-dev pkg-config libtool-bin libncursesw5-dev libidn11-dev build-essential


qemu-debootstrap --arch sh4 sid sh4
chroot mipsel apt install libpcap-dev zlib1g-dev cmake flex bison libssl-dev pkg-config libtool-bin libncursesw5-dev libidn11-dev build-essential


#qemu-debootstrap --arch sparc sid sparc
#chroot mipsel apt install libpcap-dev zlib1g-dev cmake flex bison libssl-dev pkg-config libtool-bin libncursesw5-dev libidn11-dev build-essential

#qemu-debootstrap --arch sparc sid sparc
#chroot mipsel apt install libpcap-dev zlib1g-dev cmake flex bison libssl-dev pkg-config libtool-bin libncursesw5-dev libidn11-dev build-essential

#qemu-debootstrap --arch sparc sid sparc
#chroot mipsel apt install libpcap-dev zlib1g-dev cmake flex bison libssl-dev pkg-config libtool-bin libncursesw5-dev libidn11-dev build-essential

#qemu-debootstrap --arch sparc sid sparc
#chroot mipsel apt install libpcap-dev zlib1g-dev cmake flex bison libssl-dev pkg-config libtool-bin libncursesw5-dev libidn11-dev build-essential

