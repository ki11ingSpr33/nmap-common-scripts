#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Usage: ./identify-remote-services.sh TARGET-IP-RANGE"
	exit 1

fi


echo ""
echo "Scanning IP Address range ${1} for remote services"
echo "Excluding IP Address ranges ${hostnames}"
echo "nmap -e eth1 -Pn -sS -F -n -vv --reason --open -sV ${1}"

nmap -e eth1 -Pn -sS -F -n -vv --reason --open -sV ${1}
