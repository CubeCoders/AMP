# San Andreas Multiplayer AMP Template 
Its a early but fully working Template.

## Setup San Andreas Multiplayer (SAMP) Generic Template
1. Open AMP and Create a new Generic Instance
    - dont start it!
2. Copy and Paste the Content of San Andreas Multiplayer Template to GenericModule.kvp
3. Start the AMP-Instance
    - Please check if the working dir exists in your generic01/02(etc) Instance.
    - If not create a SAMP Folder inside your instance from AMP ADS!
4. Back to the new generic instance
    - Click Update to download the SAMP Server files.
        - Info: They are hostet by SAMP.. it is the zip link :-D
    - wait for extracting the files
5. Go to File Manager and Edit following files
    - server.cfg
        - Change the default pw. Without this the server wont start!
        - Change the port here. AMP Port Settings will not work.
6. Only for Windows: Add Firewall Rule with UDP for Port 7777 (default)
7. Join and have fun ;-)