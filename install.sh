#!/bin/sh
function banner() {
echo '(       )\__   __/( (    /|(  ____ \
| () () |   ) (   |  \  ( || (    \/
| || || |   | |   |   \ | || (__    
| |(_)| |   | |   | (\ \) ||  __)   
| |   | |   | |   | | \   || (      
| )   ( |___) (___| )  \  || (____/\
|/     \|\_______/|/    )_)(_______/'
echo "Welcome to the mine installer"
}

banner
echo "Checking for required packages"
packagesNeeded='screen curl jq wget'
if [ -x "$(command -v apk)" ];       then sudo apk add --no-cache $packagesNeeded
elif [ -x "$(command -v apt-get)" ]; then sudo apt-get install $packagesNeeded
elif [ -x "$(command -v dnf)" ];     then sudo dnf install $packagesNeeded
elif [ -x "$(command -v zypper)" ];  then sudo zypper install $packagesNeeded
elif [ -x "$(command -v pacman)" ];  then sudo pacman -S $packagesNeeded
else echo "FAILED TO INSTALL PACKAGE: Package manager not found. You must manually install: $packagesNeeded">&2; fi
totalm=$(free -m | awk '/^Mem:/{print $2}')
if [[ $totalm -lt 1024 ]]; then
    echo "mine has detected that you have less than 1GB of RAM. This may be wrong but if not, you must edit all systemd files related to mine to have less than 1GB"
fi

sudo wget -O /usr/bin/mine "https://raw.githubusercontent.com/Henryws/mine/master/mine"
sudo chmod +x /usr/bin/mine

echo "To get started run mine -h for help"
exit
