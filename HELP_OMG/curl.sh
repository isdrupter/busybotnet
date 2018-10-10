rm -rfv curl-7.61.1
wget -c https://curl.haxx.se/download/curl-7.61.1.tar.xz
tar xfpv curl-7.61.1.tar.xz
cd curl-7.61.1
./configure --without-nss --without-gnutls --without-gssapi --disable-ldap
make -j17
sudo make install

