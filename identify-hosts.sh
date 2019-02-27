#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Usage: ./identify-hosts.sh TARGET-IP-RANGE"
	exit 1

fi

hostnames=$(hostname -I |sed -e 's/[[:space:]]*$//' | tr " " ",")

echo ""
echo "Scanning subnet ${1}"
echo "Excluding IP Address ranges ${hostnames}"
echo "nmap -e eth1 -sn -n -v --reason --open --exclude ${hostnames} ${1}"

nmap -e eth0 -sn -n -v --reason --open --exclude ${hostnames} ${1}
