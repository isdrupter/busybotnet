wget wget https://www.libssh.org/files/0.8/libssh-0.8.3.tar.xz

tar xfpv libssh-0.8.3.tar.xz

cd libssh-0.8.3

mkdir build

cd build

cmake -DWITH_STATIC_LIB=true -DWITH_GSSAP=false -DWITH_NACL=false ..

make


