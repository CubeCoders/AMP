This module template is designed to work with the Unturned Designated Server (Steam App ID 1110390).

Follow these steps to install and set up the server. Most of the steps are required in order to enable RCON for the Unturned server and therefore (in theory) allow console input in AMP. The Unturned server itself will work after step 2.

**Note that currently AMP console input is not working with the Unturned server RCON. As such to issue commands out-of-game, a separate RCON client is needed (eg PicoRCON or PuTTY, using the Telnet protocol). Also, this means that AMP cannot stop or restart the server, as it cannot issue the required `/shutdown` command to Unturned. To stop the Unturned server, you need to stop the instance.**

**Note also that this module template has not yet been fully tested on Windows.**

Step 1 - After creating a generic instance and updating the contents of `GenericModule.kvp` with the contents of this module template, change the ports, servername, RCON password and maximum players to those desired.

Unturned's default ports are 27015-27017. If you want to use a different set of (consecutive) ports, change `App.ApplicationPort1`, `App.ApplicationPort2` and `App.RemoteAdminPort` accordingly. Also specify a password for `App.RemoteAdminPassword`.

Change the ServerName data field in `App.CommandLineVars`, and the number of players in `App.MaxUsers`, as desired.

Step 2 - Update the application from the Status menu in the instance. This will install SteamCMD and the Unturned server files. Don't start the application yet.

Step 3 - Then use the File Manager, SFTP or another appropriate method to create a copy of or a symlink to the `GenericXX/U3DS/1110390/Extras/Rocket.Unturned` directory, in the `GenericXX/U3DS/1110390/Modules` directory (replace XX with your instance number).

For example, on Linux, either:
```
cp -r ~/.ampdata/instances/GenericXX/U3DS/1110390/Extras/Rocket.Unturned ~/.ampdata/instances/GenericXX/U3DS/1110390/Modules/
```
or
```
ln -s ~/.ampdata/instances/GenericXX/U3DS/1110390/Extras/Rocket.Unturned ~/.ampdata/instances/GenericXX/U3DS/1110390/Modules/
```
Step 4 - Stop the instance, by going back to the ADS panel and stopping the Generic instance from there.

Step 5 - Start the instance again. Then start the Unturned server from the Status menu in the instance.

Step 6 - Stop the instance once again, from the ADS panel (this will stop the Unturned server too).

Step 7 - Using the File Manager, SFTP or another appropriate method, edit `GenericXX/U3DS/1110390/Servers/<YourServerName>/Rocket/Rocket.config.xml` so that in the RCON line:

- `Enabled` is set to "true"
- `Port` is set to the port number that you specified for `App.RemoteAdminPort` in step 1
- `Password` is to the password that you specified for `App.RemoteAdminPassword` in step 1.

Step 8 - Then restart the instance and Unturned server and you are done! You can further configure your Unturned server in the same way as usual, in particular by editing the `.dat` files (`Commands.dat` principally) in `GenericXX/U3DS/1110390/Servers/<YourServerName>/Server`.
