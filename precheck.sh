#!/bin/bash

echo -e "\nDate and Time Information:" >> /home/patil/"precheck_$(hostname)_$(date +"%d-%m-%Y").txt"
date >> /home/patil/"precheck_$(hostname)_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nMount points Information:" >> /home/patil/"precheck_$(hostname)_$(date +"%d-%m-%Y").txt"
df -hT >> /home/patil/"precheck_$(hostname)_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nBlock Ids Information:" >> /home/patil/"precheck_$(hostname)_$(date +"%d-%m-%Y").txt"
blkid >> /home/patil/"precheck_$(hostname)_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nBlock Storage Information:" >> /home/patil/"precheck_$(hostname)_$(date +"%d-%m-%Y").txt"
lsblk >> /home/patil/"precheck_$(hostname)_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nVolume Group Information:" >> /home/patil/"precheck_$(hostname)_$(date +"%d-%m-%Y").txt"
vgdisplay >> /home/patil/"precheck_$(hostname)_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nNetwork Interfaces Information:" >> /home/patil/"precheck_$(hostname)_$(date +"%d-%m-%Y").txt"
ifconfig -a >> /home/patil/"precheck_$(hostname)_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nSystem Memory Information:" >> /home/patil/"precheck_$(hostname)_$(date +"%d-%m-%Y").txt"
free -m >> /home/patil/"precheck_$(hostname)_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nSystem uptime Information:" >> /home/patil/"precheck_$(hostname)_$(date +"%d-%m-%Y").txt"
uptime >> /home/patil/"precheck_$(hostname)_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nProcess Information:" >> /home/patil/"precheck_$(hostname)_$(date +"%d-%m-%Y").txt"
ps -elf >> /home/patil/"precheck_$(hostname)_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nResource and process utilixation Information:" >> /home/patil/"precheck_$(hostname)_$(date +"%d-%m-%Y").txt"
top -bn 1 2>&1 1>>/home/patil/"precheck_$(hostname)_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nKernel Information:" >> /home/patil/"precheck_$(hostname)_$(date +"%d-%m-%Y").txt"
uname -a >>/home/patil/"precheck_$(hostname)_$(date +"%d-%m-%Y").txt" 2>&1

echo -e "\nGrub file Information:" >> /home/patil/"precheck_$(hostname)_$(date +"%d-%m-%Y").txt"
cat /boot/grub2/grub.cfg >>/home/patil/"precheck_$(hostname)_$(date +"%d-%m-%Y").txt" 2>&1
