# mine
<p align="center">
<a href="https://minecraft.net"><img src="https://i.redd.it/lhyfpzbifpo21.png" width="200" height="200"></a>
</p>
Quick start your minecraft server with mine! You can one command install many types of servers, backup and rollback servers with ease, easily destroy servers, and much more. Look at Installation to start


## Features
* Uses a configuration that is easily accesible by the user so you don't have to edit the service files in root
* Uses the screen program to enter your servers console from anywhere. Run `mine -A server` to enter and <kbd>ctrl</kbd> + <kbd>a</kbd> + <kbd>d</kbd> to exit. Make sure you change server to whatever your running (i.e `mine -A paper` if you are running a paper server or just run `screen -r` if you are running one server)
* It's okay if you don't understand any of this and you just have the need to _craft_. Just look at installation.



## Installation
Copy paste `sh -c "$(curl -fsSL https://git.io/Jthn5)"` in a terminal and press <kbd>enter</kbd>. If you don't know what I'm talking about look [here](https://ubuntu.com/tutorials/command-line-for-beginners#1-overview) because this is very important to running any server (not just Minecraft)


## Commands
- `mine -D` Will download and install the specified server (run `mine -S` to see all valid servers)
- `mine -A` Will send you to the specified servers console. Type <kbd>ctrl</kbd> + <kbd>a</kbd> + <kbd>d</kbd> to exit
- `mine -X` Will start the specified server
- `mine -XX` Will stop the specified server
- `mine -B` Will stop and backup the specifed server
- `mine -RB` Will recover the specified server


## Examples
I want to start a paper server so I would run `mine -D paper` to download and install all the necessary files. Then I would run `mine -X paper` to start it. Then I join the server locally and I realize I'm not op. I would run `mine -A paper` to enter the console and I would type `op yourName` to become op. Then I would type <kbd>ctrl</kbd> + <kbd>a</kbd> + <kbd>d</kbd> to exit the console. But I don't like paper and I want to try a modded server. I stop the server with `mine -XX paper` although the next commmand does that automatically. I would destroy the paper server with `mine -R paper` and when that's done I would install forge with `mine -D forge`. But forge is kind of slow so I want to use [aikars]https://aikar.co/2018/07/02/tuning-the-jvm-g1gc-garbage-collector-flags-for-minecraft() flags. I would run `cd /opt/mine-forge/server` and edit the file `start.sh` in a text editor. I would replace everything after `-server` but before `server.jar` and replace that with the flags from the link above.
