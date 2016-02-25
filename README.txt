########################################################################################################################
########################### 			  MAC OS X to iCloud				#############################
##################################### 		by Eric Arnaud  				#####################
#######################################################################################################################


								This is a readme for the MAC OS X to iCloud bash script. 

1.1 About
	
	This software is designed to take the files you want to transfer to your iCloud, compresses them, and moves them onto your iCloud for you! I made this software as a way to save the work I do everyday on the iCloud when I'm done that is stress free and easier than by hand. This was a self introduction to the Bourne Shell for me and I would appreciate any comments you may have! You may contact me at earnaud at synapse-network dot net.

	I would appreciate any comments (feature requests especially) as I would love to expand on this project as well.

	You will be requested to make a choice on the startup. The options presented are very easy. The first option is called "Custom" this is described in 1.3

	The second option is quit. It does exactly what it sounds like.

1.2 Requirements

	This app requires Mac OS X(duh) and a connection to the internet for connecting to iCloud. iCloud needs to be activated on your machine as well.

1.3 Custom option
	
	One is to use a custom method. This will ask you to give it a unique name. Using this name, it will give the backup tar a name using that data and by also attaching the date. 		

	e.g. Using the unique name "test" it will give it the name testbackup02062016.tar.gz

	After that, you will be asked to choose a folder to compress. This is easy. Just use this familiar nomenclature

	/path/to/desired/folder

	after that, you are done! It will create the file, transfer it, and clean itself up. Just press 3 to quit.

1.4 What this program can do for you

	I particularly made this to primarily deal in repeatedly backed up folders. I, for example, have made an extra option that points to my code project folder. This way, by running this, it automagically saves my work. You can create your own as well by copying and rewriting the custom function to do whatever you like.


	Thank you, I hope you find it useful. Do whatever. Copy this software, tell others it's yours if you want. I DONT GIVE A ****.
