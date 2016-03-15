cmd_miscutils/aescrypt.o := /home/ghost/bin/host/usr/bin/mips-buildroot-linux-uclibc-gcc -static -pthread -L/usr/local/lib/libmosquitto.so -Wp,-MD,miscutils/.aescrypt.o.d   -std=gnu99 -Iinclude -Ilibbb  -include include/autoconf.h -D_GNU_SOURCE -DNDEBUG -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D"BB_VER=KBUILD_STR(1.24.1)" -DBB_BT=AUTOCONF_TIMESTAMP  -Wall -Wshadow -Wwrite-strings -Wundef -Wstrict-prototypes -Wunused -Wunused-parameter -Wunused-function -Wunused-value -Wmissing-prototypes -Wmissing-declarations -Wno-format-security -Wdeclaration-after-statement -Wold-style-definition -fno-builtin-strlen -finline-limit=0 -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-guess-branch-probability -funsigned-char -static-libgcc -falign-functions=1 -falign-jumps=1 -falign-labels=1 -falign-loops=1 -fno-unwind-tables -fno-asynchronous-unwind-tables -fno-builtin-printf -Os  --sysroot="/home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot"    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(aescrypt)"  -D"KBUILD_MODNAME=KBUILD_STR(aescrypt)" -c -o miscutils/aescrypt.o miscutils/aescrypt.c

deps_miscutils/aescrypt.o := \
  miscutils/aescrypt.c \
  include/mbedtls/config.h \
  include/mbedtls/check_config.h \
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
  include/mbedtls/platform.h \
  include/mbedtls/config.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/stdio.h \
  /home/ghost/bin/host/usr/lib/gcc/mips-buildroot-linux-uclibc/4.9.3/include/stddef.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/types.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/wordsize.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/typesizes.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/uClibc_stdio.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/wchar.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/wchar.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/pthreadtypes.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/endian.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/endian.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/byteswap.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/byteswap.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/byteswap-common.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/sgidefs.h \
  /home/ghost/bin/host/usr/lib/gcc/mips-buildroot-linux-uclibc/4.9.3/include/stdarg.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/stdlib.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/waitflags.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/waitstatus.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/sys/types.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/time.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/sys/select.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/select.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/sigset.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/time.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/sys/sysmacros.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/alloca.h \
  include/mbedtls/aes.h \
  /home/ghost/bin/host/usr/lib/gcc/mips-buildroot-linux-uclibc/4.9.3/include/stdint.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/stdint.h \
  include/mbedtls/md.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/string.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/unistd.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/posix_opt.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/uClibc_posix_opt.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/environments.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/confname.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/bits/getopt.h \

miscutils/aescrypt.o: $(deps_miscutils/aescrypt.o)

$(deps_miscutils/aescrypt.o):
