rm -rfv socat-1.7.3.2

wget -c http://www.dest-unreach.org/socat/download/socat-1.7.3.2.tar.gz

tar xfpv socat-1.7.3.2.tar.gz

cd socat-1.7.3.2


sed -i 's/msg(/so_msg(/g' error.*

sed -i 's/Send/so_Send/g' *.c
sed -i 's/Send/so_Send/g' *.h

sed -i 's/Connect/so_Connect/g' *.c
sed -i 's/Connect/so_Connect/g' *.h




./configure

make -j5


cp socat.c libsocat.c

sed -i 's/int main/int socat_main/g' libsocat.c

gcc -O -D_GNU_SOURCE -Wall -Wno-parentheses  -DHAVE_CONFIG_H -I.  -I.   -c -o libsocat.o libsocat.c

ar rcs libsocat.a libsocat.o libxio.a

sudo cp -v libxio.a /usr/local/lib
sudo cp -v libsocat.a /usr/local/lib
