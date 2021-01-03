Subsistence dedicated server - Generic config file


-------SETUP-------

You need to download this to convert PS1 (powershell) script to an EXE file
https://gallery.technet.microsoft.com/PS1-To-EXE-Generator-d39e8be2

Just give PS1 file to this and it will create the EXE

Put UDK_mgmt.exe to ..\AMPDatastore\Instances\Subsistence\Subsistence\1362640\Binaries\Win32


Also put GenericModule.kvp
to ..\AMPDatastore\Instances\Subsistence

-----USAGE-----

When you start server from AMP, it start UDK_mgmt.exe that make link between AMP and UDK for console forwarding

Actually, when you stop server nothing happen, UDK_mgmt.exe should stop process but fail without any reason

As it is requested on several topic about subsistence, server is stopped when there is no more players connected