cmd_miscutils/./mscan/proto-udp.o := gcc -static -pthread -ldl -Wp,-MD,miscutils/./mscan/.proto-udp.o.d   -std=gnu99 -Iinclude -Ilibbb  -include include/autoconf.h -D_GNU_SOURCE -DNDEBUG -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D"BB_VER=KBUILD_STR(1.24.1)" -DBB_BT=AUTOCONF_TIMESTAMP  -pthread -Wall -Wshadow -Wwrite-strings -Wundef -Wstrict-prototypes -Wunused -Wunused-parameter -Wunused-function -Wunused-value -Wmissing-prototypes -Wmissing-declarations -Wno-format-security -Wdeclaration-after-statement -Wold-style-definition -fno-builtin-strlen -finline-limit=0 -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-guess-branch-probability -funsigned-char -static-libgcc -falign-functions=1 -falign-jumps=1 -falign-labels=1 -falign-loops=1 -fno-unwind-tables -fno-asynchronous-unwind-tables -fno-builtin-printf -Os     -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(proto_udp)"  -D"KBUILD_MODNAME=KBUILD_STR(proto_udp)" -c -o miscutils/./mscan/proto-udp.o miscutils/./mscan/proto-udp.c

deps_miscutils/./mscan/proto-udp.o := \
  miscutils/./mscan/proto-udp.c \
  /usr/include/stdc-predef.h \
  miscutils/./mscan/proto-udp.h \
  /usr/include/time.h \
  /usr/include/features.h \
  /usr/include/x86_64-linux-gnu/sys/cdefs.h \
  /usr/include/x86_64-linux-gnu/bits/wordsize.h \
  /usr/include/x86_64-linux-gnu/gnu/stubs.h \
  /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
  /usr/lib/gcc/x86_64-linux-gnu/6/include/stddef.h \
  /usr/include/x86_64-linux-gnu/bits/time.h \
  /usr/include/x86_64-linux-gnu/bits/types.h \
  /usr/include/x86_64-linux-gnu/bits/typesizes.h \
  /usr/include/x86_64-linux-gnu/bits/timex.h \
  /usr/include/xlocale.h \
  /usr/lib/gcc/x86_64-linux-gnu/6/include/stdint.h \
  /usr/include/stdint.h \
  /usr/include/x86_64-linux-gnu/bits/wchar.h \
  miscutils/./mscan/proto-dns.h \
  miscutils/./mscan/proto-netbios.h \
  miscutils/./mscan/proto-snmp.h \
  miscutils/./mscan/proto-ntp.h \
  miscutils/./mscan/proto-zeroaccess.h \
  miscutils/./mscan/proto-preprocess.h \
  miscutils/./mscan/syn-cookie.h \
  miscutils/./mscan/logger.h \
  miscutils/./mscan/output.h \
  /usr/include/stdio.h \
  /usr/include/libio.h \
  /usr/include/_G_config.h \
  /usr/include/wchar.h \
  /usr/lib/gcc/x86_64-linux-gnu/6/include/stdarg.h \
  /usr/include/x86_64-linux-gnu/bits/stdio_lim.h \
  /usr/include/x86_64-linux-gnu/bits/sys_errlist.h \
  /usr/include/x86_64-linux-gnu/bits/stdio2.h \
  miscutils/./mscan/main-src.h \
  miscutils/./mscan/unusedparm.h \
  miscutils/./mscan/masscan-app.h \
  miscutils/./mscan/masscan-status.h \

miscutils/./mscan/proto-udp.o: $(deps_miscutils/./mscan/proto-udp.o)

$(deps_miscutils/./mscan/proto-udp.o):
