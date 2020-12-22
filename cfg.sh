#!/bin/bash

#update whit your server info
username=""
ip=""
password=""


#dont change this code
warning="You havent config the cfg.sh file"
YELLOW='\e[93m'
GREEN='\e[92m'


#verify if the username,ip,password are not empy
echo -e ${GREEN} "Exporting cfg file..."
if [ $username == "" ]; then
	echo -e ${YELLOW} $warning
	read -p "Enter your remote username : " username
  
	elif [ $ip == "" ]; then
		echo -e ${YELLOW} $warning
		read -p "Enter your remote ip addr: " ip

	elif [ $password == "" ]; then
		echo -e ${YELLOW} $warning
		read -p -s "Enter your remote password: " password
		
    else 
	    echo -e ${GREEN} "Exported whit sucess!"
fi	

#dont change this command
#this command start a connection betwen the server and de client
ssh $username@$ip