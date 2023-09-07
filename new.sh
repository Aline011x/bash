#!/bin/bash

e="192.168.0.1 192.168.1.1 192.168.0.2 10.8.1.60"

for f in *.ovpn;

do
true > $f 

x="${f:3}"
num="${f%.*}"
mv $f $num
ip=${x%.*}
ip1= echo "ifconfig-push 10.8.1.$ip 255.255.0.0" >> $num

done


