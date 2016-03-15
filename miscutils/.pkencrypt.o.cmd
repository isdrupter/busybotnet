cmd_miscutils/pkencrypt.o := /home/ghost/bin/host/usr/bin/mips-buildroot-linux-uclibc-gcc -static -pthread -L/usr/local/lib/libmosquitto.so -Wp,-MD,miscutils/.pkencrypt.o.d   -std=gnu99 -Iinclude -Ilibbb  -include include/autoconf.h -D_GNU_SOURCE -DNDEBUG -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D"BB_VER=KBUILD_STR(1.24.1)" -DBB_BT=AUTOCONF_TIMESTAMP  -Wall -Wshadow -Wwrite-strings -Wundef -Wstrict-prototypes -Wunused -Wunused-parameter -Wunused-function -Wunused-value -Wmissing-prototypes -Wmissing-declarations -Wno-format-security -Wdeclaration-after-statement -Wold-style-definition -fno-builtin-strlen -finline-limit=0 -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-guess-branch-probability -funsigned-char -static-libgcc -falign-functions=1 -falign-jumps=1 -falign-labels=1 -falign-loops=1 -fno-unwind-tables -fno-asynchronous-unwind-tables -fno-builtin-printf -Os  --sysroot="/home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot"    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(pkencrypt)"  -D"KBUILD_MODNAME=KBUILD_STR(pkencrypt)" -c -o miscutils/pkencrypt.o miscutils/pkencrypt.c

deps_miscutils/pkencrypt.o := \
  miscutils/pkencrypt.c \
  miscutils/../include/mbedtls/config.h \
  miscutils/../include/mbedtls/check_config.h \
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
  miscutils/../include/mbedtls/platform.h \
  miscutils/../include/mbedtls/config.h \
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
  miscutils/../include/mbedtls/error.h \
  miscutils/../include/mbedtls/pk.h \
  miscutils/../include/mbedtls/md.h \
  miscutils/../include/mbedtls/rsa.h \
  miscutils/../include/mbedtls/bignum.h \
  /home/ghost/bin/host/usr/lib/gcc/mips-buildroot-linux-uclibc/4.9.3/include/stdint.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/stdint.h \
  miscutils/../include/mbedtls/ecp.h \
  miscutils/../include/mbedtls/ecdsa.h \
  miscutils/../include/mbedtls/entropy.h \
  miscutils/../include/mbedtls/sha512.h \
  miscutils/../include/mbedtls/ctr_drbg.h \
  miscutils/../include/mbedtls/aes.h \
  /home/ghost/bin/host/usr/mips-buildroot-linux-uclibc/sysroot/usr/include/string.h \

miscutils/pkencrypt.o: $(deps_miscutils/pkencrypt.o)

$(deps_miscutils/pkencrypt.o):
