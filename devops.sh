#!/bin/bash

#siva kumar
#######
echo "Hi siva Kumar"
sleep 1
echo "$Program"  sivakumar

echo "$Program"
sleep 1

PERCT=$1

if [ "$PERCT" -le 65 -a "$PERCT" -ge 55 ]; then 
	echo " frist class"
elif [ "$PERCT" -le 54 -a "$PERCT" -ge 45 ]; then
	echo " secod classs"
elif [ "$PERCT" -le 44 -a "$PERCT" -ge 35 ]; then
	echo " Third class"
else	
	echo " fail"
fi

OSNAME=$2

case $OSNAME in
	Ubuntu)
		echo "You have slected Ubuntu OS"
		;;
	Redhat)
		echo "You have selected Redhat OS"
		;;
	Centos)
             	echo "You have selected Centos OS"
		;;
	*) 
                echo "unkown OS slected please choose below one of them"
                echo "Ubantu/Redhat/centos"
                 ;;

 esac
###########
############
