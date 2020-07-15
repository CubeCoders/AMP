# Lineage2 Java (L2J) Emulation

## First of all
This is a rudimentary template but it should work.

## Step to Work

1. Setup 2 Generic Instances (but dont start it!)
2. Copy L2JLogin and L2JGame in GenericModule.kvp from each instance.
3. Start both instances
4. Check if the working dir (L2JGame / L2JLogin) created.
    - If not
        - Create it manually.....
    - If yes
        - Follow the steps from https://www.l2jserver.com/windows.html to compile L2J.
        - Copy the compiled Login-Server to L2JLogin Working Dir
        - Copy the compiled Game-Server to L2JGame Working Dir.
5. Under Windows make a TCP UDP Firewall Rule Port 2106 and 7777.
6. Start Login Server
7. Start Game Server
8. Connect to Server
