rm -rfv cpuminer-multi-1.3.1-multi
wget -c https://github.com/tpruvot/cpuminer-multi/archive/v1.3.5-multi.tar.gz
tar xfpv v1.3.5-multi.tar.gz
cd cpuminer-multi-1.3.5-multi
./autogen.sh
./configure --with-crypto --with-curl
cp cpu-miner.c libcpuminer.c
sed -i 's/int main/int cpuminer_main/g' libcpuminer.c


find . -type f \( -name "*.h" -o -name "*.c" -o -name "*.S" \)  -print0 | xargs -0  sed -i 's/opt_protocol/cpu_opt_protocol/g'
find . -type f \( -name "*.h" -o -name "*.c" -o -name "*.S" \)  -print0 | xargs -0  sed -i 's/bin2hex/cpu_bin2hex/g'
find . -type f \( -name "*.h" -o -name "*.c" -o -name "*.S" \)  -print0 | xargs -0  sed -i 's/hex2bin/cpu_hex2bin/g'
find . -type f \( -name "*.h" -o -name "*.c" -o -name "*.S" \)  -print0 | xargs -0  sed -i 's/sha256_init/cpu_sha256_init/g'

make -j17

gcc -DHAVE_CONFIG_H -I.  -Iyes/include -Iyes/include -fno-strict-aliasing  -I. -Iyes/include -Iyes/include -c -o libcpuminer.o libcpuminer.c

ar crs libcpuminer.a libcpuminer.o cpuminer-util.o cpuminer-api.o cpuminer-sysinfos.o cpuminer-uint256.o sha3/cpuminer-sph_keccak.o sha3/cpuminer-sph_hefty1.o sha3/cpuminer-sph_groestl.o sha3/cpuminer-sph_skein.o sha3/cpuminer-sph_bmw.o sha3/cpuminer-sph_jh.o sha3/cpuminer-sph_shavite.o sha3/cpuminer-sph_blake.o sha3/cpuminer-mod_blakecoin.o sha3/cpuminer-sph_luffa.o sha3/cpuminer-sph_cubehash.o sha3/cpuminer-sph_simd.o sha3/cpuminer-sph_echo.o sha3/cpuminer-sph_hamsi.o sha3/cpuminer-sph_haval.o sha3/cpuminer-sph_fugue.o sha3/cpuminer-sph_ripemd.o sha3/cpuminer-sph_sha2.o sha3/cpuminer-sph_sha2big.o sha3/cpuminer-sph_shabal.o sha3/cpuminer-sph_whirlpool.o sha3/cpuminer-gost_streebog.o crypto/cpuminer-blake2s.o crypto/cpuminer-blake2b.o crypto/cpuminer-oaes_lib.o crypto/cpuminer-c_keccak.o crypto/cpuminer-c_groestl.o crypto/cpuminer-c_blake256.o crypto/cpuminer-c_jh.o crypto/cpuminer-c_skein.o crypto/cpuminer-hash.o crypto/cpuminer-aesb.o lyra2/cpuminer-Lyra2.o lyra2/cpuminer-Sponge.o yescrypt/cpuminer-yescrypt-common.o yescrypt/cpuminer-yescrypt-best.o yescrypt/cpuminer-sha256_Y.o algo/cpuminer-axiom.o algo/cpuminer-bastion.o algo/cpuminer-blake.o algo/cpuminer-blakecoin.o algo/cpuminer-blake2.o algo/cpuminer-bmw256.o algo/cpuminer-c11.o algo/cpuminer-cryptonight.o algo/cpuminer-cryptolight.o algo/cpuminer-decred.o algo/cpuminer-drop.o algo/cpuminer-fresh.o algo/cpuminer-groestl.o algo/cpuminer-heavy.o algo/cpuminer-ink.o algo/cpuminer-lbry.o algo/cpuminer-luffa.o algo/cpuminer-lyra2re.o algo/cpuminer-lyra2rev2.o algo/cpuminer-myr-groestl.o algo/cpuminer-keccak.o algo/cpuminer-pentablake.o algo/cpuminer-quark.o algo/cpuminer-neoscrypt.o algo/cpuminer-nist5.o algo/cpuminer-pluck.o algo/cpuminer-qubit.o algo/cpuminer-scrypt.o algo/cpuminer-scrypt-jane.o algo/cpuminer-sha2.o algo/cpuminer-sia.o algo/cpuminer-sibcoin.o algo/cpuminer-skein.o algo/cpuminer-skein2.o algo/cpuminer-s3.o algo/cpuminer-timetravel.o algo/cpuminer-veltor.o algo/cpuminer-x11evo.o algo/cpuminer-x11.o algo/cpuminer-x13.o algo/cpuminer-x14.o algo/cpuminer-x15.o algo/cpuminer-x17.o algo/cpuminer-xevan.o algo/cpuminer-yescrypt.o algo/cpuminer-zr5.o asm/cpuminer-neoscrypt_asm.o  asm/cpuminer-sha2-x64.o asm/cpuminer-scrypt-x64.o asm/cpuminer-aesb-x64.o   

sudo cp -v libcpuminer.a /usr/local/lib
