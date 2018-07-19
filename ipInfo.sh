#!/usr/bin/env bash

IP=''
# empty args
if [ $# -eq 0 ]
	# empty IP Address
  then
	IP=$(curl ident.me --silent)
	echo  "Current IP Address $IP"
else
	#get from args
	IP=$1
fi
	echo "IP INFO"
	# ip information
	INFO=$(curl -A '' http://ip-api.com/json/$IP --silent)
	echo  "$INFO" | python -m json.tool
