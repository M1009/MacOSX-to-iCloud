#!/bin/bash

###############################################################################
################## Welcome to Mac OS X to iCloud backup #######################
###############################################################################
##       What this program aims to accomplish is a convienent method         ##
##		 to choose folders, compress them, and then transfer them to 		 ##
##		 your iCloud. 														 ##
###############################################################################


clear
username=$(whoami)

function instructions {
	echo "This program will backup data by compressing folders and deliver it to $username's iCloud"
	echo "You have three options...."
	echo "Option 1: Code-Compress will backup my code data in my project folder. Press 1 then enter"
	echo "Option 2: Choose will require me to select a folder to backup. Press 2 then enter"
	echo "Option 3: Quit. Does exactly what it sounds like. Press 3 then enter"
	echo "Time to choose........$username"
}

function Custom { # Calls the chosen folder, gives it a name, dates it, compresses and moves it to your iCloud
echo "Give this backup a unique name then hit enter"
read named
echo "You must type in a folder to compress then hit enter"
read folderName
tar -zcvf /Users/"$username"/Desktop/"$named"Backup$(date +%m%d%Y).tar.gz "$folderName" 
mv /Users/"$username"/Desktop/"$named"Backup$(date +%m%d%Y).tar.gz /Users/"$username"/Library/Mobile\ Documents/com~apple~CloudDocs/
}

echo "Welcome to my backup program $username!"
echo "Today's date is $(date +%m%d%Y)"
instructions

OPTIONS="Custom Quit"
select opt in $OPTIONS; do
	 if [ "$opt" = "Quit" ]; then
	 clear
	 echo "Okay, Bye $username!"
	 exit
	elif [ "$opt" = "Custom" ]; then
	 clear
	 Custom
	 echo "Complete"
	 echo "Press 3 to quit"
	else
	 clear
	 echo "Invalid option"
	 instructions
	 echo "Choose a valid option this time."
	 fi
	done
