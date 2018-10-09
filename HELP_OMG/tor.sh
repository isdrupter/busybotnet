rm -rv tor-0.3.4.8
wget -c https://www.torproject.org/dist/tor-0.3.4.8.tar.gz
tar xfpv tor-0.3.4.8.tar.gz
cd tor-0.3.4.8


echo 'patch the write_pidfile function name and crap'
sed -i 's/write_pidfile/tor_write_pidfile/g' src/common/util.c
sed -i 's/write_pidfile/tor_write_pidfile/g' src/common/util.h
sed -i 's/write_pidfile/tor_write_pidfile/g' src/or/config.c
sed -i 's/write_pidfile/tor_write_pidfile/g' src/test/test_util.c



echo 'disable seccomp'
./configure --disable-event-tracing-debug --disable-module-dirauth --disable-memory-sentinels --disable-gcc-hardening --disable-unittests --disable-seccomp


echo "#undef HAVE_BACKTRACE" >> orconfig.h
echo "#undef HAVE_BACKTRACE_SYMBOLS_FD" >> orconfig.h
echo "#undef USE_BACKTRACE" >> orconfig.h
echo "#undef USE_BACKTRACE" >> src/common/backtrace.h

make -j5

mkdir tor_a
cp ./src/or/libtor.a tor_a
cp ./src/ext/keccak-tiny/libkeccak-tiny.a tor_a
cp ./src/ext/ed25519/ref10/libed25519_ref10.a tor_a
cp ./src/ext/ed25519/donna/libed25519_donna.a tor_a
cp ./src/common/libcurve25519_donna.a tor_a
cp ./src/trunnel/libor-trunnel.a tor_a
cp ./src/common/libor*.a tor_a
cp ./src/tools/libtorrunner.a tor_a
cp ./src/trace/libor-trace.a tor_a

sudo cp -rv tor_a/* /usr/local/lib

rm -rf tor_a

