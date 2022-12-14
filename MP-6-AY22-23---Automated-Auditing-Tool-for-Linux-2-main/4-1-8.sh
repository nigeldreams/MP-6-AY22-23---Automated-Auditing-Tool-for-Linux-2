#!/bin/sh

section=4
auditNo="4.1.8"
auditName="Ensure session initiation information is collected"

cmd1=$(grep -E '(session|logins)' /etc/audit/rules.d/*.rules 2> \dev\null )
cmd2=$(auditctl -l 2> \dev\null | grep -E '(session|logins)')
auditres="\033[31mFail\033[m"
correct1="-w /var/run/utmp -p wa -k session -w /var/log/wtmp -p wa -k logins -w /var/log/btmp -p wa -k logins"
correct2="-w /var/run/utmp -p wa -k session -w /var/log/wtmp -p wa -k logins -w /var/log/btmp -p wa -k logins"
if  [ "$cmd1" = "$correct1" ] && [ "$cmd2" = $"correct2" ]
then
auditres="\033[32mPass\033[m"
fi

echo "${auditNo} \t\t${auditName} \t\t\t\t\t\t[${auditres}]"
