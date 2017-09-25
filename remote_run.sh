#!/bin/bash

read -sp "pi@$1's password: " password
#echo $password
tty -s && echo
sshpass -p $password scp -o StrictHostKeyChecking=no $2 pi@$1:~/
sshpass -p $password ssh pi@$1 -o StrictHostKeyChecking=no python $2
exit
