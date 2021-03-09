#!/bin/sh
function banner() {
echo '(       )\__   __/( (    /|(  ____ \
| () () |   ) (   |  \  ( || (    \/
| || || |   | |   |   \ | || (__    
| |(_)| |   | |   | (\ \) ||  __)   
| |   | |   | |   | | \   || (      
| )   ( |___) (___| )  \  || (____/\
|/     \|\_______/|/    )_)(_______/
https://github.com/Henryws/mine'
echo "Welcome to the mine installer"
}

banner
echo "Installing required packages"
packagesNeeded='screen curl jq wget'
if [ -x "$(command -v apk)" ];       then sudo apk add --no-cache $packagesNeeded
elif [ -x "$(command -v apt-get)" ]; then sudo apt-get install $packagesNeeded
elif [ -x "$(command -v dnf)" ];     then sudo dnf install $packagesNeeded
elif [ -x "$(command -v zypper)" ];  then sudo zypper install $packagesNeeded
elif [ -x "$(command -v pacman)" ];  then sudo pacman -S $packagesNeeded
elif [ -x "$(command -v brew)" ];  then brew install $packagesNeeded
else echo "FAILED TO INSTALL PACKAGE: Package manager not found. You must manually install: $packagesNeeded">&2; fi
totalm=$(free -m | awk '/^Mem:/{print $2}')
if [[ $totalm -lt 1024 ]]; then
    echo "mine has detected that you have less than 1GB of RAM. This may be wrong but if not, you must edit all systemd files related to mine to have less than 1GB"
fi
echo "Checking for java"
if java ; then
    echo "You have java installed"
else
    echo "You don't have java installed. Installing openjdk11"
    if [ -x "$(command -v apk)" ];       then sudo apk add --no-cache openjdk11
    elif [ -x "$(command -v apt-get)" ]; then sudo apt-get install openjdk-11-jre-headless
    elif [ -x "$(command -v dnf)" ];     then sudo dnf install java-11-openjdk
    elif [ -x "$(command -v zypper)" ];  then sudo zypper install java-11-openjdk
    elif [ -x "$(command -v pacman)" ];  then sudo pacman -S jre11-openjdk-headless
    elif [ -x "$(command -v brew)" ];  then brew install "openjdk@11"
    else echo "FAILED TO INSTALL PACKAGE: Package manager not found. You must manually install: openjdk-11">&2; fi
fi
sudo wget -q -O /usr/bin/mine "https://raw.githubusercontent.com/Henryws/mine/master/mine"
sudo chmod +x /usr/bin/mine

echo "To get started run mine -h for help"
exit
