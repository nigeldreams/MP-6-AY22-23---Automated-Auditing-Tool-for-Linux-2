#!/bin/sh

section=6
auditNo="6.2.17"
auditName="Ensure shadow group is empty"
auditres="\033[31mFail\033[m"

cmd= $(awk -F: '($1=="shadow") {print $NF}' /etc/group | grep 2> \dev\null)
cmd2= $(awk -F: -v GID="$(awk -F: '($1=="shadow") {print $3}' /etc/group)" '($4==GID) {print $1}' /etc/passwd)

if [ "$cmd" = "" ]  && [ "$cmd2" = "" ]
then 
auditres="\033[32mPass\033[m"
fi

echo "${auditNo} \t${auditName} \t\t\t\t\t\t\t[${auditres}]"
