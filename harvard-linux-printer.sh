#!/bin/bash

# command check courtesy of https://stackoverflow.com/questions/592620/check-if-a-program-exists-from-a-bash-script
command -v smbclient >/dev/null 2>&1 || { echo >&2 "I require smbclient but it's not installed.  Aborting."; exit 1; }
command -v sudo lpadmin >/dev/null 2>&1 || { echo >&2 "I require sudo lpadmin but it's not installed.  Aborting."; exit 1; }
command -v cupsd >/dev/null 2>&1 || { echo >&2 "I require cupsd but it's not installed.  Aborting."; exit 1; }

if [ -f /etc/os-release ]; then
	. /etc/os-release
	ID=$ID
	if [ "$ID" == "arch" ]; then
		sudo systemctl enable org.cups.cupsd.service
		sudo systemctl start org.cups.cupsd.service
	fi
fi


echo 'HUIT Crimson Printer Installer'


function connect {
    sudo lpadmin -p "$1" -D "$1" -E -v smb://$2/$1 -u allow:all -o printer-is-shared=false -o sides=two-sided-long-edge -o APOptionalDuplexer="True" -o Duplex="DuplexTumble"

    echo "Installing Printer $1"
}

connect "RiverCP-BW" "10.35.2.26"
connect "RiverCP-Color" "10.35.2.27"
connect "QuadCP-BW" "10.35.2.26"
connect "QuadCP-Color" "10.35.2.27"
connect "ScienceCP-BW" "10.35.2.26"
connect "ScienceCP-Color" "10.35.2.27"
connect "YardCP-BW" "10.35.2.26"
connect "YardCP-Color" "10.35.2.27"


echo "Done. Enjoy!"
echo "You will be prompted for a username and password every time you print. Use \"university/{your-papercut-username}\" as your username and your papercut password for the password." 
echo "Please report any bugs to https://github.com/djsavvy/harvard-linux-printer/issues"
echo "Note that at this time, duplex printing does not work."
