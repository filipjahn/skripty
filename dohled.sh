#!/bin/bash
cas=`date +%T`
ip=`ifconfig enp6s0 | grep "inet adr:" | awk -F ":" '{print $2}' | awk -F " " '{printf $1}'`
prijato=`ifconfig enp6s0 | grep "Přijato bajtů" | awk -F ":" '{print $2}' | awk -F " " '{printf $1}'`
odeslano=`ifconfig enp6s0 | grep "Přijato bajtů" | awk -F ":" '{print $3}' | awk -F " " '{printf $1}'`
ram=`free -h | grep "Mem:" | awk -F " " '{print $4}'`
hdd=`df -h | grep "/dev/sda1" | awk -F " " '{print $5}'`
echo "Cas: "$cas" IP: "$ip" Přijato: "$prijato" Odeslano: "$odeslano "vyuzita ram:"$ram "vyuzity hdd:" $hdd >> log
