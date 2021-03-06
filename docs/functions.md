# Functions
This is a list of functions used in mine

## fancy_message
This is a function that creates fancy messages like `[+] INFO: message`. You can source mine and use it like `fancy_message {info,warn,error} message`. Your message can contain colors sourced by mine when you use it like this: `fancy_message info ${RED}test${NC}`. NC is nocolor

## initmine
initmine is what is called when you initialize a server in /opt/mine-SERVER/. You call it by entering /opt and creating a directory `mine-SERVER` , cd'ing into it and running initmine SERVER. It will run the function `mine-jar`. That downloads the server in question from https://github.com/Henryws/mine/blob/release.json and runs the fancy install jar or not and saves the final jar as server.jar with the exception of fabric as server.jar is necessary for fabric and shouldn't be messed with.

## mine-jar
Downloads the server in question and runs the install stuff

## progressfilt
When run like `wget --progress=bar:force -O server.jar link 2>&1 | progressfilt` it will make wget have a nice progress bar and no other things that might freak out a newbie and think his/her computer had a stroke.

## spinner (unused)
When run like `longtask & ; spinner $!` It will do the task and show a spinner while it's doing it.

## ask
If you run something like:
`if ask "Are you sure about this task?" Y; then
do whatever if they accept
fi` It will ask the user if they want to do something. The Y means if they press enter without giving a y or n it will automatically choose y. Swap with N for the opposite effect
