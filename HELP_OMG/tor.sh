wget https://www.torproject.org/dist/tor-0.3.4.8.tar.gz
tar xfpv tor-0.3.4.8.tar.gz
cd tor-0.3.4.8
mkdir tor_a
./configure
cp ./src/or/libtor.a tor_a
cp ./src/ext/keccak-tiny/libkeccak-tiny.a tor_a
cp ./src/ext/ed25519/ref10/libed25519_ref10.a tor_a
cp ./src/ext/ed25519/donna/libed25519_donna.a tor_a
cp ./src/common/libcurve25519_donna.a tor_a
cp ./src/trunnel/libor-trunnel.a tor_a
cp ./src/common/libor*.a tor_a
cp ./src/tools/libtorrunner.a tor_a
cp ./src/trace/libor-trace.a tor_a

sudo cp -rv tor_a/* /usr/local/bin


