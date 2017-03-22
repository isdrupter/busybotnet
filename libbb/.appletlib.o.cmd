cmd_libbb/appletlib.o := gcc -static -pthread -ldl -Wp,-MD,libbb/.appletlib.o.d   -std=gnu99 -Iinclude -Ilibbb  -include include/autoconf.h -D_GNU_SOURCE -DNDEBUG -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D"BB_VER=KBUILD_STR(1.24.1)" -DBB_BT=AUTOCONF_TIMESTAMP  -pthread -Wall -Wshadow -Wwrite-strings -Wundef -Wstrict-prototypes -Wunused -Wunused-parameter -Wunused-function -Wunused-value -Wmissing-prototypes -Wmissing-declarations -Wno-format-security -Wdeclaration-after-statement -Wold-style-definition -fno-builtin-strlen -finline-limit=0 -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-guess-branch-probability -funsigned-char -static-libgcc -falign-functions=1 -falign-jumps=1 -falign-labels=1 -falign-loops=1 -fno-unwind-tables -fno-asynchronous-unwind-tables -fno-builtin-printf -Os     -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(appletlib)"  -D"KBUILD_MODNAME=KBUILD_STR(appletlib)" -c -o libbb/appletlib.o libbb/appletlib.c

deps_libbb/appletlib.o := \
  libbb/appletlib.c \
    $(wildcard include/config/feature/individual.h) \
    $(wildcard include/config/show/usage.h) \
    $(wildcard include/config/feature/compress/usage.h) \
    $(wildcard include/config/feature/clean/up.h) \
    $(wildcard include/config/locale/support.h) \
    $(wildcard include/config/test.h) \
    $(wildcard include/config/feature/suid.h) \
    $(wildcard include/config/feature/suid/config.h) \
    $(wildcard include/config/feature/suid/config/quiet.h) \
    $(wildcard include/config/feature/installer.h) \
    $(wildcard include/config/install/no/usr.h) \
    $(wildcard include/config/feature/autowidth.h) \
    $(wildcard include/config/build/libbusybox.h) \
  /usr/include/stdc-predef.h \
  include/busybox.h \
    $(wildcard include/config/feature/prefer/applets.h) \
    $(wildcard include/config/feature/shared/busybox.h) \
  include/libbb.h \
    $(wildcard include/config/feature/shadowpasswds.h) \
    $(wildcard include/config/use/bb/shadow.h) \
    $(wildcard include/config/selinux.h) \
    $(wildcard include/config/feature/utmp.h) \
    $(wildcard include/config/use/bb/pwd/grp.h) \
    $(wildcard include/config/lfs.h) \
    $(wildcard include/config/feature/buffers/go/on/stack.h) \
    $(wildcard include/config/feature/buffers/go/in/bss.h) \
    $(wildcard include/config/feature/verbose.h) \
    $(wildcard include/config/feature/ipv6.h) \
    $(wildcard include/config/feature/seamless/xz.h) \
    $(wildcard include/config/feature/seamless/lzma.h) \
    $(wildcard include/config/feature/seamless/bz2.h) \
    $(wildcard include/config/feature/seamless/gz.h) \
    $(wildcard include/config/feature/seamless/z.h) \
    $(wildcard include/config/feature/check/names.h) \
    $(wildcard include/config/long/opts.h) \
    $(wildcard include/config/feature/getopt/long.h) \
    $(wildcard include/config/feature/pidfile.h) \
    $(wildcard include/config/feature/syslog.h) \
    $(wildcard include/config/echo.h) \
    $(wildcard include/config/printf.h) \
    $(wildcard include/config/kill.h) \
    $(wildcard include/config/chown.h) \
    $(wildcard include/config/ls.h) \
    $(wildcard include/config/xxx.h) \
    $(wildcard include/config/route.h) \
    $(wildcard include/config/feature/hwib.h) \
    $(wildcard include/config/desktop.h) \
    $(wildcard include/config/feature/crond/d.h) \
    $(wildcard include/config/use/bb/crypt.h) \
    $(wildcard include/config/feature/adduser/to/group.h) \
    $(wildcard include/config/feature/del/user/from/group.h) \
    $(wildcard include/config/ioctl/hex2str/error.h) \
    $(wildcard include/config/feature/editing.h) \
    $(wildcard include/config/feature/editing/history.h) \
    $(wildcard include/config/feature/editing/savehistory.h) \
    $(wildcard include/config/feature/tab/completion.h) \
    $(wildcard include/config/feature/username/completion.h) \
    $(wildcard include/config/feature/editing/vi.h) \
    $(wildcard include/config/feature/editing/save/on/exit.h) \
    $(wildcard include/config/pmap.h) \
    $(wildcard include/config/feature/show/threads.h) \
    $(wildcard include/config/feature/ps/additional/columns.h) \
    $(wildcard include/config/feature/topmem.h) \
    $(wildcard include/config/feature/top/smp/process.h) \
    $(wildcard include/config/killall.h) \
    $(wildcard include/config/pgrep.h) \
    $(wildcard include/config/pkill.h) \
    $(wildcard include/config/pidof.h) \
    $(wildcard include/config/sestatus.h) \
    $(wildcard include/config/unicode/support.h) \
    $(wildcard include/config/feature/mtab/support.h) \
    $(wildcard include/config/feature/devfs.h) \
  include/platform.h \
    $(wildcard include/config/werror.h) \
    $(wildcard include/config/big/endian.h) \
    $(wildcard include/config/little/endian.h) \
    $(wildcard include/config/nommu.h) \
  /usr/lib/gcc/x86_64-linux-gnu/6/include-fixed/limits.h \
  /usr/lib/gcc/x86_64-linux-gnu/6/include-fixed/syslimits.h \
  /usr/include/limits.h \
  /usr/include/features.h \
  /usr/include/x86_64-linux-gnu/sys/cdefs.h \
  /usr/include/x86_64-linux-gnu/bits/wordsize.h \
  /usr/include/x86_64-linux-gnu/gnu/stubs.h \
  /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
  /usr/include/x86_64-linux-gnu/bits/posix1_lim.h \
  /usr/include/x86_64-linux-gnu/bits/local_lim.h \
  /usr/include/linux/limits.h \
  /usr/include/x86_64-linux-gnu/bits/posix2_lim.h \
  /usr/include/x86_64-linux-gnu/bits/xopen_lim.h \
  /usr/include/x86_64-linux-gnu/bits/stdio_lim.h \
  /usr/include/byteswap.h \
  /usr/include/x86_64-linux-gnu/bits/byteswap.h \
  /usr/include/x86_64-linux-gnu/bits/types.h \
  /usr/include/x86_64-linux-gnu/bits/typesizes.h \
  /usr/include/x86_64-linux-gnu/bits/byteswap-16.h \
  /usr/include/endian.h \
  /usr/include/x86_64-linux-gnu/bits/endian.h \
  /usr/lib/gcc/x86_64-linux-gnu/6/include/stdint.h \
  /usr/include/stdint.h \
  /usr/include/x86_64-linux-gnu/bits/wchar.h \
  /usr/lib/gcc/x86_64-linux-gnu/6/include/stdbool.h \
  /usr/include/unistd.h \
  /usr/include/x86_64-linux-gnu/bits/posix_opt.h \
  /usr/include/x86_64-linux-gnu/bits/environments.h \
  /usr/lib/gcc/x86_64-linux-gnu/6/include/stddef.h \
  /usr/include/x86_64-linux-gnu/bits/confname.h \
  include/getopt.h \
  /usr/include/x86_64-linux-gnu/bits/unistd.h \
  /usr/include/ctype.h \
  /usr/include/xlocale.h \
  /usr/include/dirent.h \
  /usr/include/x86_64-linux-gnu/bits/dirent.h \
  /usr/include/errno.h \
  /usr/include/x86_64-linux-gnu/bits/errno.h \
  /usr/include/linux/errno.h \
  /usr/include/x86_64-linux-gnu/asm/errno.h \
  /usr/include/asm-generic/errno.h \
  /usr/include/asm-generic/errno-base.h \
  /usr/include/fcntl.h \
  /usr/include/x86_64-linux-gnu/bits/fcntl.h \
  /usr/include/x86_64-linux-gnu/bits/fcntl-linux.h \
  /usr/include/x86_64-linux-gnu/bits/uio.h \
  /usr/include/x86_64-linux-gnu/sys/types.h \
  /usr/include/time.h \
  /usr/include/x86_64-linux-gnu/sys/select.h \
  /usr/include/x86_64-linux-gnu/bits/select.h \
  /usr/include/x86_64-linux-gnu/bits/sigset.h \
  /usr/include/x86_64-linux-gnu/bits/time.h \
  /usr/include/x86_64-linux-gnu/bits/select2.h \
  /usr/include/x86_64-linux-gnu/sys/sysmacros.h \
  /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h \
  /usr/include/x86_64-linux-gnu/bits/stat.h \
  /usr/include/x86_64-linux-gnu/bits/fcntl2.h \
  /usr/include/inttypes.h \
  /usr/include/netdb.h \
  /usr/include/netinet/in.h \
  /usr/include/x86_64-linux-gnu/sys/socket.h \
  /usr/include/x86_64-linux-gnu/sys/uio.h \
  /usr/include/x86_64-linux-gnu/bits/socket.h \
  /usr/include/x86_64-linux-gnu/bits/socket_type.h \
  /usr/include/x86_64-linux-gnu/bits/sockaddr.h \
  /usr/include/x86_64-linux-gnu/asm/socket.h \
  /usr/include/asm-generic/socket.h \
  /usr/include/x86_64-linux-gnu/asm/sockios.h \
  /usr/include/asm-generic/sockios.h \
  /usr/include/x86_64-linux-gnu/bits/socket2.h \
  /usr/include/x86_64-linux-gnu/bits/in.h \
  /usr/include/rpc/netdb.h \
  /usr/include/x86_64-linux-gnu/bits/siginfo.h \
  /usr/include/x86_64-linux-gnu/bits/netdb.h \
  /usr/include/setjmp.h \
  /usr/include/x86_64-linux-gnu/bits/setjmp.h \
  /usr/include/x86_64-linux-gnu/bits/setjmp2.h \
  /usr/include/signal.h \
  /usr/include/x86_64-linux-gnu/bits/signum.h \
  /usr/include/x86_64-linux-gnu/bits/sigaction.h \
  /usr/include/x86_64-linux-gnu/bits/sigcontext.h \
  /usr/include/x86_64-linux-gnu/bits/sigstack.h \
  /usr/include/x86_64-linux-gnu/sys/ucontext.h \
  /usr/include/x86_64-linux-gnu/bits/sigthread.h \
  /usr/include/stdio.h \
  /usr/include/libio.h \
  /usr/include/_G_config.h \
  /usr/include/wchar.h \
  /usr/lib/gcc/x86_64-linux-gnu/6/include/stdarg.h \
  /usr/include/x86_64-linux-gnu/bits/sys_errlist.h \
  /usr/include/x86_64-linux-gnu/bits/stdio2.h \
  /usr/include/stdlib.h \
  /usr/include/x86_64-linux-gnu/bits/waitflags.h \
  /usr/include/x86_64-linux-gnu/bits/waitstatus.h \
  /usr/include/alloca.h \
  /usr/include/x86_64-linux-gnu/bits/stdlib-float.h \
  /usr/include/x86_64-linux-gnu/bits/stdlib.h \
  /usr/include/string.h \
  /usr/include/x86_64-linux-gnu/bits/string3.h \
  /usr/include/libgen.h \
  /usr/include/poll.h \
  /usr/include/x86_64-linux-gnu/sys/poll.h \
  /usr/include/x86_64-linux-gnu/bits/poll.h \
  /usr/include/x86_64-linux-gnu/bits/poll2.h \
  /usr/include/x86_64-linux-gnu/sys/ioctl.h \
  /usr/include/x86_64-linux-gnu/bits/ioctls.h \
  /usr/include/x86_64-linux-gnu/asm/ioctls.h \
  /usr/include/asm-generic/ioctls.h \
  /usr/include/linux/ioctl.h \
  /usr/include/x86_64-linux-gnu/asm/ioctl.h \
  /usr/include/asm-generic/ioctl.h \
  /usr/include/x86_64-linux-gnu/bits/ioctl-types.h \
  /usr/include/x86_64-linux-gnu/sys/ttydefaults.h \
  /usr/include/x86_64-linux-gnu/sys/mman.h \
  /usr/include/x86_64-linux-gnu/bits/mman.h \
  /usr/include/x86_64-linux-gnu/bits/mman-linux.h \
  /usr/include/x86_64-linux-gnu/sys/stat.h \
  /usr/include/x86_64-linux-gnu/sys/time.h \
  /usr/include/x86_64-linux-gnu/sys/wait.h \
  /usr/include/termios.h \
  /usr/include/x86_64-linux-gnu/bits/termios.h \
  /usr/include/x86_64-linux-gnu/bits/timex.h \
  /usr/include/x86_64-linux-gnu/sys/param.h \
  /usr/include/x86_64-linux-gnu/bits/param.h \
  /usr/include/linux/param.h \
  /usr/include/x86_64-linux-gnu/asm/param.h \
  /usr/include/asm-generic/param.h \
  /usr/include/pwd.h \
  /usr/include/grp.h \
  /usr/include/mntent.h \
  /usr/include/paths.h \
  /usr/include/x86_64-linux-gnu/sys/statfs.h \
  /usr/include/x86_64-linux-gnu/bits/statfs.h \
  /usr/include/utmpx.h \
  /usr/include/x86_64-linux-gnu/bits/utmpx.h \
  /usr/include/arpa/inet.h \
  include/pwd_.h \
  include/grp_.h \
  include/shadow_.h \
  include/xatonum.h \
  include/applet_metadata.h \
  /usr/include/malloc.h \
  include/applets.h \
    $(wildcard include/config/feature/verbose/usage.h) \
    $(wildcard include/config/ar.h) \
    $(wildcard include/config/uncompress.h) \
    $(wildcard include/config/gunzip.h) \
    $(wildcard include/config/bunzip2.h) \
    $(wildcard include/config/unlzma.h) \
    $(wildcard include/config/lzma.h) \
    $(wildcard include/config/unxz.h) \
    $(wildcard include/config/xz.h) \
    $(wildcard include/config/bzip2.h) \
    $(wildcard include/config/cpio.h) \
    $(wildcard include/config/dpkg.h) \
    $(wildcard include/config/dpkg/deb.h) \
    $(wildcard include/config/gzip.h) \
    $(wildcard include/config/lzop.h) \
    $(wildcard include/config/rpm.h) \
    $(wildcard include/config/rpm2cpio.h) \
    $(wildcard include/config/tar.h) \
    $(wildcard include/config/unzip.h) \
    $(wildcard include/config/date.h) \
    $(wildcard include/config/hostid.h) \
    $(wildcard include/config/groups.h) \
    $(wildcard include/config/id.h) \
    $(wildcard include/config/shuf.h) \
    $(wildcard include/config/sync.h) \
    $(wildcard include/config/touch.h) \
    $(wildcard include/config/truncate.h) \
    $(wildcard include/config/unlink.h) \
    $(wildcard include/config/base64.h) \
    $(wildcard include/config/users.h) \
    $(wildcard include/config/who.h) \
    $(wildcard include/config/awk.h) \
    $(wildcard include/config/cmp.h) \
    $(wildcard include/config/diff.h) \
    $(wildcard include/config/ed.h) \
    $(wildcard include/config/patch.h) \
    $(wildcard include/config/sed.h) \
    $(wildcard include/config/vi.h) \
    $(wildcard include/config/find.h) \
    $(wildcard include/config/grep.h) \
    $(wildcard include/config/feature/grep/egrep/alias.h) \
    $(wildcard include/config/feature/grep/fgrep/alias.h) \
    $(wildcard include/config/xargs.h) \
    $(wildcard include/config/bootchartd.h) \
    $(wildcard include/config/halt.h) \
    $(wildcard include/config/init.h) \
    $(wildcard include/config/feature/initrd.h) \
    $(wildcard include/config/mesg.h) \
    $(wildcard include/config/unit/test.h) \
    $(wildcard include/config/add/shell.h) \
    $(wildcard include/config/remove/shell.h) \
    $(wildcard include/config/conspy.h) \
    $(wildcard include/config/crond.h) \
    $(wildcard include/config/i2cget.h) \
    $(wildcard include/config/i2cset.h) \
    $(wildcard include/config/i2cdump.h) \
    $(wildcard include/config/i2cdetect.h) \
    $(wildcard include/config/nandwrite.h) \
    $(wildcard include/config/nanddump.h) \
    $(wildcard include/config/rfkill.h) \
    $(wildcard include/config/setserial.h) \
    $(wildcard include/config/taskset.h) \
    $(wildcard include/config/ubiattach.h) \
    $(wildcard include/config/ubidetach.h) \
    $(wildcard include/config/ubimkvol.h) \
    $(wildcard include/config/ubirmvol.h) \
    $(wildcard include/config/ubirsvol.h) \
    $(wildcard include/config/ubiupdatevol.h) \
    $(wildcard include/config/wall.h) \
    $(wildcard include/config/depmod.h) \
    $(wildcard include/config/insmod.h) \
    $(wildcard include/config/lsmod.h) \
    $(wildcard include/config/modinfo.h) \
    $(wildcard include/config/modprobe/small.h) \
    $(wildcard include/config/modprobe.h) \
    $(wildcard include/config/rmmod.h) \
    $(wildcard include/config/nbdclient.h) \
    $(wildcard include/config/ping.h) \
    $(wildcard include/config/ping6.h) \
    $(wildcard include/config/wget.h) \
    $(wildcard include/config/whois.h) \
    $(wildcard include/config/iostat.h) \
    $(wildcard include/config/lsof.h) \
    $(wildcard include/config/mpstat.h) \
    $(wildcard include/config/nmeter.h) \
    $(wildcard include/config/powertop.h) \
    $(wildcard include/config/pstree.h) \
    $(wildcard include/config/pwdx.h) \
    $(wildcard include/config/smemcap.h) \
    $(wildcard include/config/ash.h) \
    $(wildcard include/config/feature/sh/is/ash.h) \
    $(wildcard include/config/feature/bash/is/ash.h) \
    $(wildcard include/config/cttyhack.h) \
    $(wildcard include/config/hush.h) \
    $(wildcard include/config/msh.h) \
    $(wildcard include/config/feature/sh/is/hush.h) \
    $(wildcard include/config/feature/bash/is/hush.h) \
    $(wildcard include/config/blockdev.h) \
    $(wildcard include/config/fatattr.h) \
    $(wildcard include/config/fstrim.h) \
    $(wildcard include/config/mdev.h) \
    $(wildcard include/config/rev.h) \
    $(wildcard include/config/uevent.h) \
    $(wildcard include/config/udhcpc6.h) \
    $(wildcard include/config/zmap.h) \
    $(wildcard include/config/randip.h) \
    $(wildcard include/config/ts3.h) \
    $(wildcard include/config/scp.h) \
    $(wildcard include/config/sftp.h) \
    $(wildcard include/config/ssh.h) \
    $(wildcard include/config/crunch.h) \
    $(wildcard include/config/sshtrix.h) \
    $(wildcard include/config/beleth.h) \
    $(wildcard include/config/bangrab.h) \
    $(wildcard include/config/cowroot.h) \
    $(wildcard include/config/bd.h) \
    $(wildcard include/config/xxd.h) \
    $(wildcard include/config/xorpipe.h) \
    $(wildcard include/config/hole.h) \
    $(wildcard include/config/masscan.h) \
    $(wildcard include/config/fenc.h) \
    $(wildcard include/config/prism.h) \
    $(wildcard include/config/ssyn2.h) \
    $(wildcard include/config/sudp.h) \
    $(wildcard include/config/mqsh.h) \
    $(wildcard include/config/synscan.h) \
    $(wildcard include/config/proxcat.h) \
    $(wildcard include/config/acpid.h) \
    $(wildcard include/config/addgroup.h) \
    $(wildcard include/config/adduser.h) \
    $(wildcard include/config/adjtimex.h) \
    $(wildcard include/config/arp.h) \
    $(wildcard include/config/arping.h) \
    $(wildcard include/config/basename.h) \
    $(wildcard include/config/bbconfig.h) \
    $(wildcard include/config/beep.h) \
    $(wildcard include/config/blkid.h) \
    $(wildcard include/config/brctl.h) \
    $(wildcard include/config/cal.h) \
    $(wildcard include/config/cat.h) \
    $(wildcard include/config/catv.h) \
    $(wildcard include/config/chat.h) \
    $(wildcard include/config/chattr.h) \
    $(wildcard include/config/chcon.h) \
    $(wildcard include/config/chgrp.h) \
    $(wildcard include/config/chmod.h) \
    $(wildcard include/config/chpasswd.h) \
    $(wildcard include/config/chpst.h) \
    $(wildcard include/config/chroot.h) \
    $(wildcard include/config/chrt.h) \
    $(wildcard include/config/chvt.h) \
    $(wildcard include/config/cksum.h) \
    $(wildcard include/config/clear.h) \
    $(wildcard include/config/comm.h) \
    $(wildcard include/config/cp.h) \
    $(wildcard include/config/crontab.h) \
    $(wildcard include/config/cryptpw.h) \
    $(wildcard include/config/cut.h) \
    $(wildcard include/config/dc.h) \
    $(wildcard include/config/dd.h) \
    $(wildcard include/config/deallocvt.h) \
    $(wildcard include/config/delgroup.h) \
    $(wildcard include/config/deluser.h) \
    $(wildcard include/config/devfsd.h) \
    $(wildcard include/config/devmem.h) \
    $(wildcard include/config/df.h) \
    $(wildcard include/config/dhcprelay.h) \
    $(wildcard include/config/dirname.h) \
    $(wildcard include/config/dmesg.h) \
    $(wildcard include/config/dnsd.h) \
    $(wildcard include/config/hostname.h) \
    $(wildcard include/config/dos2unix.h) \
    $(wildcard include/config/du.h) \
    $(wildcard include/config/dumpkmap.h) \
    $(wildcard include/config/dumpleases.h) \
    $(wildcard include/config/e2fsck.h) \
    $(wildcard include/config/e2label.h) \
    $(wildcard include/config/eject.h) \
    $(wildcard include/config/env.h) \
    $(wildcard include/config/envdir.h) \
    $(wildcard include/config/envuidgid.h) \
    $(wildcard include/config/ether/wake.h) \
    $(wildcard include/config/expand.h) \
    $(wildcard include/config/expr.h) \
    $(wildcard include/config/fakeidentd.h) \
    $(wildcard include/config/false.h) \
    $(wildcard include/config/fbset.h) \
    $(wildcard include/config/fbsplash.h) \
    $(wildcard include/config/fdflush.h) \
    $(wildcard include/config/fdformat.h) \
    $(wildcard include/config/fdisk.h) \
    $(wildcard include/config/fgconsole.h) \
    $(wildcard include/config/findfs.h) \
    $(wildcard include/config/flash/eraseall.h) \
    $(wildcard include/config/flash/lock.h) \
    $(wildcard include/config/flash/unlock.h) \
    $(wildcard include/config/flashcp.h) \
    $(wildcard include/config/flock.h) \
    $(wildcard include/config/fold.h) \
    $(wildcard include/config/free.h) \
    $(wildcard include/config/freeramdisk.h) \
    $(wildcard include/config/fsck.h) \
    $(wildcard include/config/fsck/minix.h) \
    $(wildcard include/config/fsync.h) \
    $(wildcard include/config/ftpd.h) \
    $(wildcard include/config/ftpget.h) \
    $(wildcard include/config/ftpput.h) \
    $(wildcard include/config/fuser.h) \
    $(wildcard include/config/getenforce.h) \
    $(wildcard include/config/getopt.h) \
    $(wildcard include/config/getsebool.h) \
    $(wildcard include/config/getty.h) \
    $(wildcard include/config/hd.h) \
    $(wildcard include/config/hdparm.h) \
    $(wildcard include/config/head.h) \
    $(wildcard include/config/hexdump.h) \
    $(wildcard include/config/httpd.h) \
    $(wildcard include/config/hwclock.h) \
    $(wildcard include/config/ifconfig.h) \
    $(wildcard include/config/ifupdown.h) \
    $(wildcard include/config/ifenslave.h) \
    $(wildcard include/config/ifplugd.h) \
    $(wildcard include/config/inetd.h) \
    $(wildcard include/config/inotifyd.h) \
    $(wildcard include/config/install.h) \
    $(wildcard include/config/ionice.h) \
    $(wildcard include/config/feature/ip/address.h) \
    $(wildcard include/config/feature/ip/route.h) \
    $(wildcard include/config/feature/ip/link.h) \
    $(wildcard include/config/feature/ip/tunnel.h) \
    $(wildcard include/config/feature/ip/rule.h) \
    $(wildcard include/config/ip.h) \
    $(wildcard include/config/ipaddr.h) \
    $(wildcard include/config/ipcalc.h) \
    $(wildcard include/config/ipcrm.h) \
    $(wildcard include/config/ipcs.h) \
    $(wildcard include/config/iplink.h) \
    $(wildcard include/config/iproute.h) \
    $(wildcard include/config/iprule.h) \
    $(wildcard include/config/iptunnel.h) \
    $(wildcard include/config/kbd/mode.h) \
    $(wildcard include/config/killall5.h) \
    $(wildcard include/config/klogd.h) \
    $(wildcard include/config/kissofdeath.h) \
    $(wildcard include/config/knbot.h) \
    $(wildcard include/config/ziggy.h) \
    $(wildcard include/config/hide.h) \
    $(wildcard include/config/mq.h) \
    $(wildcard include/config/blacknurse.h) \
    $(wildcard include/config/hydra.h) \
    $(wildcard include/config/medusa.h) \
    $(wildcard include/config/tsh.h) \
    $(wildcard include/config/tshd.h) \
    $(wildcard include/config/jshon.h) \
    $(wildcard include/config/rsagenkey.h) \
    $(wildcard include/config/ottf.h) \
    $(wildcard include/config/udpdata.h) \
    $(wildcard include/config/teardrop.h) \
    $(wildcard include/config/syndrop.h) \
    $(wildcard include/config/sping.h) \
    $(wildcard include/config/spiffit.h) \
    $(wildcard include/config/smurf.h) \
    $(wildcard include/config/pong.h) \
    $(wildcard include/config/pepsi.h) \
    $(wildcard include/config/orgasm.h) \
    $(wildcard include/config/newtear.h) \
    $(wildcard include/config/nestea.h) \
    $(wildcard include/config/latierra.h) \
    $(wildcard include/config/land.h) \
    $(wildcard include/config/kkill.h) \
    $(wildcard include/config/jolt.h) \
    $(wildcard include/config/gewse5.h) \
    $(wildcard include/config/gewse.h) \
    $(wildcard include/config/fawx.h) \
    $(wildcard include/config/dcd3c.h) \
    $(wildcard include/config/conseal.h) \
    $(wildcard include/config/coke.h) \
    $(wildcard include/config/bonk.h) \
    $(wildcard include/config/boink.h) \
    $(wildcard include/config/beer.h) \
    $(wildcard include/config/wingatecrash.h) \
    $(wildcard include/config/genericsum.h) \
    $(wildcard include/config/raped.h) \
    $(wildcard include/config/stream.h) \
    $(wildcard include/config/synk4.h) \
    $(wildcard include/config/dtlsclient.h) \
    $(wildcard include/config/pkencrypt.h) \
    $(wildcard include/config/pkdecrypt.h) \
    $(wildcard include/config/rsasign.h) \
    $(wildcard include/config/pksign.h) \
    $(wildcard include/config/ecdsa.h) \
    $(wildcard include/config/rsaverify.h) \
    $(wildcard include/config/dhclient.h) \
    $(wildcard include/config/dhgenprime.h) \
    $(wildcard include/config/rsaencrypt.h) \
    $(wildcard include/config/rsadecrypt.h) \
    $(wildcard include/config/genkey.h) \
    $(wildcard include/config/crypthash.h) \
    $(wildcard include/config/aescrypt.h) \
    $(wildcard include/config/mqtte.h) \
    $(wildcard include/config/pubclient.h) \
    $(wildcard include/config/subclient.h) \
    $(wildcard include/config/dpsc.h) \
    $(wildcard include/config/dpss.h) \
    $(wildcard include/config/netscan.h) \
    $(wildcard include/config/sockstress.h) \
    $(wildcard include/config/lizserv.h) \
    $(wildcard include/config/lizbot.h) \
    $(wildcard include/config/udpspoof.h) \
    $(wildcard include/config/bindtty.h) \
    $(wildcard include/config/torloris.h) \
    $(wildcard include/config/xersex.h) \
    $(wildcard include/config/xersextcp.h) \
    $(wildcard include/config/snmpdos.h) \
    $(wildcard include/config/ntpdos.h) \
    $(wildcard include/config/goldeneye.h) \
    $(wildcard include/config/pud.h) \
    $(wildcard include/config/sevone.h) \
    $(wildcard include/config/patator.h) \
    $(wildcard include/config/dnsamp.h) \
    $(wildcard include/config/last.h) \
    $(wildcard include/config/length.h) \
    $(wildcard include/config/less.h) \
    $(wildcard include/config/setarch.h) \
    $(wildcard include/config/ln.h) \
    $(wildcard include/config/load/policy.h) \
    $(wildcard include/config/loadfont.h) \
    $(wildcard include/config/loadkmap.h) \
    $(wildcard include/config/logger.h) \
    $(wildcard include/config/login.h) \
    $(wildcard include/config/logname.h) \
    $(wildcard include/config/logread.h) \
    $(wildcard include/config/losetup.h) \
    $(wildcard include/config/lpd.h) \
    $(wildcard include/config/lpq.h) \
    $(wildcard include/config/lpr.h) \
    $(wildcard include/config/lsattr.h) \
    $(wildcard include/config/lspci.h) \
    $(wildcard include/config/lsusb.h) \
    $(wildcard include/config/makedevs.h) \
    $(wildcard include/config/makemime.h) \
    $(wildcard include/config/man.h) \
    $(wildcard include/config/matchpathcon.h) \
    $(wildcard include/config/md5sum.h) \
    $(wildcard include/config/microcom.h) \
    $(wildcard include/config/mkdir.h) \
    $(wildcard include/config/mkfs/vfat.h) \
    $(wildcard include/config/mkfs/ext2.h) \
    $(wildcard include/config/mkfifo.h) \
    $(wildcard include/config/mke2fs.h) \
    $(wildcard include/config/mkfs/minix.h) \
    $(wildcard include/config/mkfs/reiser.h) \
    $(wildcard include/config/mknod.h) \
    $(wildcard include/config/mkswap.h) \
    $(wildcard include/config/mktemp.h) \
    $(wildcard include/config/more.h) \
    $(wildcard include/config/mount.h) \
    $(wildcard include/config/mountpoint.h) \
    $(wildcard include/config/mt.h) \
    $(wildcard include/config/mv.h) \
    $(wildcard include/config/nameif.h) \
    $(wildcard include/config/nc.h) \
    $(wildcard include/config/netstat.h) \
    $(wildcard include/config/nice.h) \
    $(wildcard include/config/nohup.h) \
    $(wildcard include/config/nslookup.h) \
    $(wildcard include/config/ntpd.h) \
    $(wildcard include/config/od.h) \
    $(wildcard include/config/openvt.h) \
    $(wildcard include/config/parse.h) \
    $(wildcard include/config/passwd.h) \
    $(wildcard include/config/pipe/progress.h) \
    $(wildcard include/config/pivot/root.h) \
    $(wildcard include/config/popmaildir.h) \
    $(wildcard include/config/printenv.h) \
    $(wildcard include/config/ps.h) \
    $(wildcard include/config/pscan.h) \
    $(wildcard include/config/pwd.h) \
    $(wildcard include/config/raidautorun.h) \
    $(wildcard include/config/rdate.h) \
    $(wildcard include/config/rdev.h) \
    $(wildcard include/config/readahead.h) \
    $(wildcard include/config/readlink.h) \
    $(wildcard include/config/readprofile.h) \
    $(wildcard include/config/realpath.h) \
    $(wildcard include/config/reformime.h) \
    $(wildcard include/config/renice.h) \
    $(wildcard include/config/reset.h) \
    $(wildcard include/config/resize.h) \
    $(wildcard include/config/restorecon.h) \
    $(wildcard include/config/rm.h) \
    $(wildcard include/config/rmdir.h) \
    $(wildcard include/config/rtcwake.h) \
    $(wildcard include/config/run/parts.h) \
    $(wildcard include/config/runcon.h) \
    $(wildcard include/config/runlevel.h) \
    $(wildcard include/config/runsv.h) \
    $(wildcard include/config/runsvdir.h) \
    $(wildcard include/config/rx.h) \
    $(wildcard include/config/script.h) \
    $(wildcard include/config/scriptreplay.h) \
    $(wildcard include/config/selinuxenabled.h) \
    $(wildcard include/config/sendmail.h) \
    $(wildcard include/config/seq.h) \
    $(wildcard include/config/setconsole.h) \
    $(wildcard include/config/setenforce.h) \
    $(wildcard include/config/setfiles.h) \
    $(wildcard include/config/setfont.h) \
    $(wildcard include/config/setkeycodes.h) \
    $(wildcard include/config/setlogcons.h) \
    $(wildcard include/config/setsebool.h) \
    $(wildcard include/config/setsid.h) \
    $(wildcard include/config/setuidgid.h) \
    $(wildcard include/config/sha1sum.h) \
    $(wildcard include/config/sha3sum.h) \
    $(wildcard include/config/sha256sum.h) \
    $(wildcard include/config/sha512sum.h) \
    $(wildcard include/config/showkey.h) \
    $(wildcard include/config/slattach.h) \
    $(wildcard include/config/sleep.h) \
    $(wildcard include/config/softlimit.h) \
    $(wildcard include/config/sort.h) \
    $(wildcard include/config/split.h) \
    $(wildcard include/config/start/stop/daemon.h) \
    $(wildcard include/config/stat.h) \
    $(wildcard include/config/strings.h) \
    $(wildcard include/config/stty.h) \
    $(wildcard include/config/su.h) \
    $(wildcard include/config/sulogin.h) \
    $(wildcard include/config/sum.h) \
    $(wildcard include/config/sv.h) \
    $(wildcard include/config/svlogd.h) \
    $(wildcard include/config/swaponoff.h) \
    $(wildcard include/config/switch/root.h) \
    $(wildcard include/config/bb/sysctl.h) \
    $(wildcard include/config/syslogd.h) \
    $(wildcard include/config/tac.h) \
    $(wildcard include/config/tail.h) \
    $(wildcard include/config/tc.h) \
    $(wildcard include/config/tcpsvd.h) \
    $(wildcard include/config/tee.h) \
    $(wildcard include/config/telnet.h) \
    $(wildcard include/config/telnetd.h) \
    $(wildcard include/config/feature/tftp/get.h) \
    $(wildcard include/config/feature/tftp/put.h) \
    $(wildcard include/config/tftp.h) \
    $(wildcard include/config/tftpd.h) \
    $(wildcard include/config/time.h) \
    $(wildcard include/config/timeout.h) \
    $(wildcard include/config/top.h) \
    $(wildcard include/config/tr.h) \
    $(wildcard include/config/traceroute.h) \
    $(wildcard include/config/traceroute6.h) \
    $(wildcard include/config/true.h) \
    $(wildcard include/config/tty.h) \
    $(wildcard include/config/ttysize.h) \
    $(wildcard include/config/tunctl.h) \
    $(wildcard include/config/tune2fs.h) \
    $(wildcard include/config/udhcpc.h) \
    $(wildcard include/config/udhcpd.h) \
    $(wildcard include/config/udpsvd.h) \
    $(wildcard include/config/umount.h) \
    $(wildcard include/config/uname.h) \
    $(wildcard include/config/unexpand.h) \
    $(wildcard include/config/uniq.h) \
    $(wildcard include/config/unix2dos.h) \
    $(wildcard include/config/uptime.h) \
    $(wildcard include/config/usleep.h) \
    $(wildcard include/config/uudecode.h) \
    $(wildcard include/config/uuencode.h) \
    $(wildcard include/config/vconfig.h) \
    $(wildcard include/config/vlock.h) \
    $(wildcard include/config/volname.h) \
    $(wildcard include/config/watch.h) \
    $(wildcard include/config/watchdog.h) \
    $(wildcard include/config/wc.h) \
    $(wildcard include/config/which.h) \
    $(wildcard include/config/whoami.h) \
    $(wildcard include/config/yes.h) \
    $(wildcard include/config/zcip.h) \
  include/applet_tables.h \
  include/usage_compressed.h \
  include/bb_archive.h \
    $(wildcard include/config/feature/tar/uname/gname.h) \
    $(wildcard include/config/feature/tar/gnu/extensions.h) \
    $(wildcard include/config/feature/tar/to/command.h) \
    $(wildcard include/config/feature/tar/selinux.h) \
    $(wildcard include/config/feature/ar/create.h) \

libbb/appletlib.o: $(deps_libbb/appletlib.o)

$(deps_libbb/appletlib.o):
