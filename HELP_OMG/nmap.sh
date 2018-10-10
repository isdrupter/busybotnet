rm -rf nmap-7.70
wget -c https://nmap.org/dist/nmap-7.70.tar.bz2
tar xfpv nmap-7.70.tar.bz2
cd nmap-7.70
./configure


sed -i 's/static const char *program_name = NULL/static const char *program_name = "bmap"/g' nmap.cc
sed -i 's/program_name = name/program_name = "bmap"/g' nmap.cc
sed -i 's/assert(argv0 != NULL);//g' nmap.cc

sed -i 's/fatal/nm_fatal/g' *.cc
sed -i 's/fatal/nm_fatal/g' *.h
#sed -i 's/error/nm_error/g' *.cc
#sed -i 's/error/nm_error/g' *.h
sed -i 's/event_new/nm_event_new/g' *.cc
sed -i 's/event_new/nm_event_new/g' *.h
sed -i 's/event_new/nm_event_new/g' nsock/src/*.c
sed -i 's/event_new/nm_event_new/g' nsock/src/*.h
sed -i 's/int nmap_main/extern "C" int nmap_main/g' nmap.cc
sed -i 's/int nmap_main/extern "C" int nmap_main/g' nmap.h
#cp nmap_error.h nmap_nm_error.h
#sed -i 's/strnm_error/strerror/g' *.cc
#sed -i 's/strnm_error/strerror/g' *.h
#sed -i 's/pnm_error/perror/g' *.h
#sed -i 's/pnm_error/perror/g' *.cc
#sed -i 's/nse_nm_errorcode/nse_errorcode/g' *.cc
#sed -i 's/nse_nm_errorcode/nse_errorcode/g' *.h
#sed -i 's/nsock_pool_get_nm_error/nsock_pool_get_error/g' *.h
#sed -i 's/nsock_pool_get_nm_error/nsock_pool_get_error/g' *.cc
#sed -i 's/luaL_nm_error/luaL_error/g' *.cc
#sed -i 's/luaL_nm_error/luaL_error/g' *.h
#sed -i 's/luaL_argnm_error/luaL_argerror/g' *.h
#sed -i 's/luaL_argnm_error/luaL_argerror/g' *.cc
#sed -i 's/lua_nm_error/lua_error/g' *.cc
#sed -i 's/lua_nm_error/lua_error/g' *.h

make -j5

ar rcs libnmap.a charpool.o FingerPrintResults.o FPEngine.o FPModel.o idle_scan.o MACLookup.o nmap_dns.o nmap_error.o nmap.o nmap_ftp.o NmapOps.o NmapOutputTable.o nmap_tty.o osscan2.o osscan.o output.o payload.o portlist.o portreasons.o protocols.o scan_engine.o scan_engine_connect.o scan_engine_raw.o scan_lists.o service_scan.o services.o NewTargets.o TargetGroup.o Target.o targets.o tcpip.o timing.o traceroute.o utils.o xml.o nse_main.o nse_utility.o nse_nsock.o nse_dnet.o nse_fs.o nse_nmaplib.o nse_debug.o nse_pcrelib.o nse_lpeg.o nse_openssl.o nse_ssl_cert.o nse_libssh2.o nse_zlib.o  

sudo cp -v libnmap.a /usr/local/lib
sudo cp -v ./libdnet-stripped/src/.libs/libdnet.a   /usr/local/lib
sudo cp -v libnetutil/libnetutil.a   /usr/local/lib
sudo cp -v ./liblua/liblua.a   /usr/local/lib
sudo cp -v ./liblinear/liblinear.a   /usr/local/lib
sudo cp -v libssh2/lib/libssh2.a   /usr/local/lib
sudo cp -v ./nsock/src/libnsock.a /usr/local/lib
sudo cp -v ./nbase/libnbase.a   /usr/local/lib
