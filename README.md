# mine
<p align="center">
<a href="https://minecraft.net"><img src="https://i.redd.it/lhyfpzbifpo21.png" width="200" height="200"></a>
</p>
Quick start your minecraft server with mine! You can one command install many types of servers, backup and rollback servers with ease, easily destroy servers, and much more. Look at Installation to start


## Features
* Uses an easy to read configuration that is accesible by the user so you don't have to edit the service files in root
* Uses the screen program to enter your servers console from anywhere.
* It's okay if you don't understand any of this and you just have the need to _craft_. Just look at installation.



## Installation
You will need a server or computer running some form of Linux with systemd. You can check if you are using systemd with the command `pstree -p | grep 'systemd'`

Copy paste `bash -c "$(curl -fsSL https://raw.githubusercontent.com/Henryws/mine/master/install.sh)"` in a terminal and press <kbd>enter</kbd>. If you don't know what I'm talking about look [here](https://ubuntu.com/tutorials/command-line-for-beginners#1-overview) because this is very important to running any server (not just Minecraft)


## Commands
- `mine -D`/`mine --download` Will download and install the specified server (run `mine -S` to see all valid servers)
- `mine -A`/`mine --attach` Will send you to the specified servers console. Type <kbd>ctrl</kbd>+<kbd>a</kbd>+<kbd>d</kbd> to exit
- `mine -start` Will start the specified server
- `mine -stop` Will stop the specified server
- `mine -B`/`mine --backup` Will stop and backup the specifed server
- `mine -RB`/`mine --recover-backup` Will recover the specified server
- `mine -R`/`mine --remove` Will destroy the specifed server
- `mine -DM`/`mine --download-mod` Will download a mod
- `mine -SM`/`mine --search-mod` Will search for a mod


## Example
I first install mine then run `mine -S`/`mine --servers` to find valid servers, I decide I want to start a paper server so I would run `mine -D paper` to download and install all the necessary files. Then I would run `mine -start paper` to start it. Then I join the server locally and I realize I'm not op. I would run `mine -A paper` to enter the console and I would type `op yourName` to become op. Then I would type <kbd>ctrl</kbd> + <kbd>a</kbd> + <kbd>d</kbd> to exit the console. But I don't like paper and I want to try a modded server. I stop the server with `mine -stop paper` although the next command does that automatically. I would destroy the paper server with `mine -R paper` and when that's done I would install forge with `mine -D forge`. I want to install a mod, I choose [Vampirism](https://www.curseforge.com/minecraft/mc-mods/vampirism-become-a-vampire). I install it with `mine -DM vampirism forge`.
