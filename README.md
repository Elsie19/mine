# mine

Quick start your minecraft server with mine! You can one command install many types of servers like Spigot, Paper, Vanilla, Forge, etc...

Run `mine -D {Spigot,Paper,Vanilla,Forge}` to download and setup the server. You cannot install multiple of the same server (i.e you can't download and run two Paper servers.

Only works on Linux distro's with systemd

## Features
* Uses a configuration that is easily accesible by the user so you don't have to edit the service files in root
* Uses the screen program to enter your servers console from anywhere. Run `screen -dmS server` to enter and <kbd>ctrl</kbd> + <kbd>a</kbd> + <kbd>d</kbd> to exit. Make sure you change server to whatever your running (i.e `screen -dmS paper` if you are running a paper server or just run `screen -r` if you are running one server)
