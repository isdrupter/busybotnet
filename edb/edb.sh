rm -rfv exploitdb-2018-10-10
wget -c https://github.com/offensive-security/exploitdb/archive/2018-10-10.tar.gz
tar xfpv 2018-10-10.tar.gz

cd exploitdb-2018-10-10
cd exploits

for i in `find . -name "*.c"` ; do echo "formatting: $i"; clang-format -i $i ; done
for i in `find . -name "*.c"` ; do a=$(echo $i | tr '/' '_' | sed 's/\.c//g' | sed 's/$/_main/g' | sed 's/^\._//g') ; echo "changing main: $i"; sed -i "s/main/$a/g" $i;done
for i in `find . -name "*.c"` ; do echo "building: $i"; gcc $i -c -o $i.o ; done
ar crs libexploitdb.a $(find . -name "*.o" | tr '\n' ' ')
sudo cp -v libexploitdb.a /usr/local/lib


objdump -x libexploitdb.a  | grep main | tr -s ' ' | cut -d' ' -f5 | tr -s '\n'

echo "int explioitdb_main (int argc, char* argv[] ) { char *argies[1024] ; argies[0] = argv[1]; argies[1] = argv[2]; argies[2] = argv[3]; argies[3] = argv[4]; ">exploitdb.c 
for i in `objdump -x libexploitdb.a  | grep main | tr -s ' ' | cut -d' ' -f5 | tr -s '\n' ` ; do echo "if (strcmp(argv[1], \"$i\")==0) {$i(argc, argies ) ; }" >> exploitdb.c ; done
echo "}" >> exploitdb.c
sudo cp -rv exploitdb.c ../miscutils/exploitdb.c
clang-format -i ../miscutils/exploitdb.c
