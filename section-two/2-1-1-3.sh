#! /bin/sh
section=2
auditno="2.1.1.3"
auditname="Ensure chrony is configured"

cmd=$(dpkg -s ntp | grep -E '(Status :|not installed)')
cmd1=$(systemctl is-enabled systemd-timesyncd)
cmd2=$(grep -E "^(server|pool)" /etc/chrony/chrony.conf)
cmd3=$(ps -ef | grep chronyd | cut -f 1)
correct=""
correct1=masked
correct2=""
corect3="_chrony"
if [ "$cmd" = "$correct" ] && [ "$cmd1" = "$correct1" ] && [ "$cmd2" != "$correct2" ] && [ "$cmd3" = "$correct3" ]
then
        auditres="\033[32mPass\033[m"
else
        auditres="\033[31mFail\033[m"
fi

echo "${auditno} ${auditname} \t\t\t\t\t   [${auditres}]"
