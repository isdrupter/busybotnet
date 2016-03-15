cmd_libbb/inet_cksum.o := /home/ghost/bin/host/usr/bin/mips-buildroot-linux-uclibc-gcc -static -pthread -L/usr/local/lib/libmosquitto.so -Wp,-MD,libbb/.inet_cksum.o.d   -std=gnu99 -Iinclude -Ilibbb  -include include/autoconf.h -D_GNU_SOURCE -DNDEBUG -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D"BB_VER=KBUILD_STR(1.24.1)" -DBB_BT=AUTOCONF_TIMESTAMP  -Wall -Wshadow -Wwrite-strings -Wundef -Wstrict-prototypes -Wunused -Wunused-parameter -Wunused-function -Wunused-value -Wmissing-prototypes -Wmissing-declarations -Wno-format-security -Wdeclaration-after-statement -Wold-style-definition -fno-builtin-strlen -finline-limit=0 -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-guess-branch-probability -funsigned-char -static-libgcc -falign-functions=1 -falign-jumps=1 -falign-labels=1 -falign-loops=1 -fno-unwind-tables -fno-asynchronous-unwind-tables -fno-builtin-printf -Os  --sysroot="/home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot"    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(inet_cksum)"  -D"KBUILD_MODNAME=KBUILD_STR(inet_cksum)" -c -o libbb/inet_cksum.o libbb/inet_cksum.c

deps_libbb/inet_cksum.o := \
  libbb/inet_cksum.c \
  include/libbb.h \
    $(wildcard include/config/feature/shadowpasswds.h) \
    $(wildcard include/config/use/bb/shadow.h) \
    $(wildcard include/config/selinux.h) \
    $(wildcard include/config/feature/utmp.h) \
    $(wildcard include/config/locale/support.h) \
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
    $(wildcard include/config/feature/prefer/applets.h) \
    $(wildcard include/config/long/opts.h) \
    $(wildcard include/config/feature/getopt/long.h) \
    $(wildcard include/config/feature/pidfile.h) \
    $(wildcard include/config/feature/syslog.h) \
    $(wildcard include/config/feature/individual.h) \
    $(wildcard include/config/echo.h) \
    $(wildcard include/config/printf.h) \
    $(wildcard include/config/test.h) \
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
    $(wildcard include/config/feature/clean/up.h) \
    $(wildcard include/config/feature/devfs.h) \
  include/platform.h \
    $(wildcard include/config/werror.h) \
    $(wildcard include/config/big/endian.h) \
    $(wildcard include/config/little/endian.h) \
    $(wildcard include/config/nommu.h) \
  /home/ghost/bin/host/usr/lib/gcc/mips-buildroot-linux-uclibc/4.9.3/include-fixed/limits.h \
  /home/ghost/bin/host/usr/lib/gcc/mips-buildroot-linux-uclibc/4.9.3/include-fixed/syslimits.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/limits.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/features.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/uClibc_config.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/sys/cdefs.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/posix1_lim.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/local_lim.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/linux/limits.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/uClibc_local_lim.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/posix2_lim.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/xopen_lim.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/stdio_lim.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/byteswap.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/byteswap.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/byteswap-common.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/endian.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/endian.h \
  /home/ghost/bin/host/usr/lib/gcc/mips-buildroot-linux-uclibc/4.9.3/include/stdint.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/stdint.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/wchar.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/wordsize.h \
  /home/ghost/bin/host/usr/lib/gcc/mips-buildroot-linux-uclibc/4.9.3/include/stdbool.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/unistd.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/posix_opt.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/uClibc_posix_opt.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/environments.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/types.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/typesizes.h \
  /home/ghost/bin/host/usr/lib/gcc/mips-buildroot-linux-uclibc/4.9.3/include/stddef.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/confname.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/getopt.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/ctype.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/uClibc_touplow.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/dirent.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/dirent.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/errno.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/errno.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/linux/errno.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/asm/errno.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/asm-generic/errno-base.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/sys/syscall.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/sysnum.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/fcntl.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/fcntl.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/sgidefs.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/sys/types.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/time.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/sys/select.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/select.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/sigset.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/time.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/sys/sysmacros.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/pthreadtypes.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/uio.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/sys/stat.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/stat.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/inttypes.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/netdb.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/netinet/in.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/sys/socket.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/sys/uio.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/socket.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/socket_type.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/sockaddr.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/asm/socket.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/asm/sockios.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/asm/ioctl.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/asm-generic/ioctl.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/in.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/rpc/netdb.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/siginfo.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/netdb.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/setjmp.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/setjmp.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/signal.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/signum.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/sigaction.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/sigcontext.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/sigstack.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/sys/ucontext.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/sigthread.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/stdio.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/uClibc_stdio.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/wchar.h \
  /home/ghost/bin/host/usr/lib/gcc/mips-buildroot-linux-uclibc/4.9.3/include/stdarg.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/stdlib.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/waitflags.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/waitstatus.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/alloca.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/string.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/libgen.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/poll.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/sys/poll.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/poll.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/sys/ioctl.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/ioctls.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/asm/ioctls.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/ioctl-types.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/sys/ttydefaults.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/sys/mman.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/mman.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/sys/time.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/sys/wait.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/termios.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/termios.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/uClibc_clk_tck.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/sys/param.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/linux/param.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/asm/param.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/asm-generic/param.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/pwd.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/grp.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/mntent.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/paths.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/sys/statfs.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/statfs.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/utmpx.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/utmpx.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/arpa/inet.h \
  include/pwd_.h \
  include/grp_.h \
  include/shadow_.h \
  include/xatonum.h \

libbb/inet_cksum.o: $(deps_libbb/inet_cksum.o)

$(deps_libbb/inet_cksum.o):
