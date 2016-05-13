#!/bin/sh

cmds=$@
host=example.com
shell=/var/busybox-mips


mosquitto_pub -h $host -r shell -m "$shell $cmds"
exit
