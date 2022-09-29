#!/bin/bash

############
# To create a user from an argument
############

MYUSER=$1

if [ ! $MYUSER ]; then
	echo "You have to provide a username to add/create...: Mandatory..!"
	exit

fi
############check whether there is a sufficent privilege or not######

RUNUSER=`/usr/bin/whoami`

if [ "$RUNUSER" != 'root' ]; then
	echo "You must be a ROOT user to add/create a new user..!"
	exit

fi

/usr/bin/id $MYUSER

if [ $? -eq 0 ]; then
	echo "The user you are trying to create is already existing. Please try another name."	
	exit

fi

####crate a user###

/sbin/useradd $MYUSER
echo "Congrats....!!! The user $MYUSER has been created; Please enter  password!i"

password=$MYUSER

read $MYUSER


