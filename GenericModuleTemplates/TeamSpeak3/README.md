# TeamSpeak 3 Generic Module
Note: Only tested the steps/module on Linux

## Required Steps
1. Make a generic template (do not start it yet).
2. Replace the `GenericModule.kvp` content's with the TeamSpeak3 Module contents.
3. Stop the instance for the Generic Module
4. Create a folder in FileManager/SFTP named `ts3`
5. Go to https://teamspeak.com/en/downloads/#server and download the appropriate server file
6. Extract the archive and upload all the files to the `ts3` folder
7. (For Linux) Set the File Permissions of the `ts3/ts3server` file to `744`
8. Edit the `GenericModule.kvp` file and update the following bindings
	* App.ApplicationIPBinding = IP
	* App.ApplicationPort1 = Voice Port
	* App.MaxUsers = Set to the max users your license allows (32 if not using a license), helps ADS show the correct user count
9. Create a file in the `ts3` folder named `ts3server.ini`
10. Copy the contents of the `ts3server.ini` on GH into the `ts3/ts3server.ini`
11. Edit the `ts3/ts3server.ini` file where appropriate (Ports and IPs)
12. Upload your `licensekey.dat` file to the `ts3` folder if you have a key
13. Start the instance and enjoy