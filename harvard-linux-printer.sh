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
echo 'Installing Printer RiverCP-BW'


NAME="RiverCP-BW" 

DESCRIPTION="RiverCP-BW" 

LOCATION="RiverCP" 

ADDRESS="10.35.2.26" 

FINISHER="FinRUBICONB" 

OPTIONTRAY="2Cassette" 

DUPLEX=“DuplexTumble” 

APOptionalDuplexer="True"
   

sudo lpadmin -p "$NAME" -D "$DESCRIPTION" -L "$LOCATION" -E -v smb://"$ADDRESS"/"$NAME" -P "/System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/PrintCore.framework/Versions/A/Resources/generic.ppd" -u allow:all -o printer-is-shared=false -o APOptionalDuplexer="$APOptionalDuplexer" -o Duplex="$DUPLEX"


echo 'Installing Printer RiverCP-Color'

NAME="RiverCP-Color" 

DESCRIPTION="RiverCP-Color" 

LOCATION="RiverCP" 

ADDRESS="10.35.2.27" 

FINISHER="FinRUBICONB" 

OPTIONTRAY="2Cassette" 

DUPLEX="DuplexTumble"

APOptionalDuplexer="True"


sudo lpadmin -p "$NAME" -D "$DESCRIPTION" -L "$LOCATION" -E -v smb://"$ADDRESS"/"$NAME" -P "/System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/PrintCore.framework/Versions/A/Resources/generic.ppd" -u allow:all -o printer-is-shared=false -o APOptionalDuplexer="$APOptionalDuplexer" -o Duplex="$DUPLEX"

echo 'Installing Printer QuadCP-BW'

# Printer information


NAME="QuadCP-BW" 

DESCRIPTION="QuadCP-BW" 

LOCATION="Quad" 

ADDRESS="10.35.2.26" 

FINISHER="FinRUBICONB" 

OPTIONTRAY="2Cassette" 

DUPLEX=“DuplexTumble” 

APOptionalDuplexer="True"
   

sudo lpadmin -p "$NAME" -D "$DESCRIPTION" -L "$LOCATION" -E -v smb://"$ADDRESS"/"$NAME" -P "/System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/PrintCore.framework/Versions/A/Resources/generic.ppd" -u allow:all -o printer-is-shared=false -o APOptionalDuplexer="$APOptionalDuplexer" -o Duplex="$DUPLEX"


echo 'Installing Printer QuadCP-Color'

NAME="QuadCP-Color" 

DESCRIPTION="QuadCP-Color" 

LOCATION="Quad" 

ADDRESS="10.35.2.27" 

FINISHER="FinRUBICONB" 

OPTIONTRAY="2Cassette" 

DUPLEX="DuplexTumble"

APOptionalDuplexer="True"


sudo lpadmin -p "$NAME" -D "$DESCRIPTION" -L "$LOCATION" -E -v smb://"$ADDRESS"/"$NAME" -P "/System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/PrintCore.framework/Versions/A/Resources/generic.ppd" -u allow:all -o printer-is-shared=false -o APOptionalDuplexer="$APOptionalDuplexer" -o Duplex="$DUPLEX"



echo 'Installing Printer ScienceCP-BW'

# Printer information


NAME="ScienceCP-BW" 

DESCRIPTION="ScienceCP-BW" 

LOCATION="Science Center" 

ADDRESS="10.35.2.26" 

FINISHER="FinRUBICONB" 

OPTIONTRAY="2Cassette" 

DUPLEX=“DuplexTumble” 

APOptionalDuplexer="True"
   

sudo lpadmin -p "$NAME" -D "$DESCRIPTION" -L "$LOCATION" -E -v smb://"$ADDRESS"/"$NAME" -P "/System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/PrintCore.framework/Versions/A/Resources/generic.ppd" -u allow:all -o printer-is-shared=false -o APOptionalDuplexer="$APOptionalDuplexer" -o Duplex="$DUPLEX"


echo 'Installing Printer ScienceCP-Color'

NAME="ScienceCP-Color" 

DESCRIPTION="ScienceCP-Color" 

LOCATION="Science Center" 

ADDRESS="10.35.2.27" 

FINISHER="FinRUBICONB" 

OPTIONTRAY="2Cassette" 

DUPLEX="DuplexTumble"

APOptionalDuplexer="True"


sudo lpadmin -p "$NAME" -D "$DESCRIPTION" -L "$LOCATION" -E -v smb://"$ADDRESS"/"$NAME" -P "/System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/PrintCore.framework/Versions/A/Resources/generic.ppd" -u allow:all -o printer-is-shared=false -o APOptionalDuplexer="$APOptionalDuplexer" -o Duplex="$DUPLEX"


echo 'Installing Printer YardCP-BW'

# Printer information


NAME="YardCP-BW" 

DESCRIPTION="YardCP-BW" 

LOCATION="Yard" 

ADDRESS="10.35.2.26" 

FINISHER="FinRUBICONB" 

OPTIONTRAY="2Cassette" 

DUPLEX=“DuplexTumble” 

APOptionalDuplexer="True"
   

sudo lpadmin -p "$NAME" -D "$DESCRIPTION" -L "$LOCATION" -E -v smb://"$ADDRESS"/"$NAME" -P "/System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/PrintCore.framework/Versions/A/Resources/generic.ppd" -u allow:all -o printer-is-shared=false -o APOptionalDuplexer="$APOptionalDuplexer" -o Duplex="$DUPLEX"


echo 'Installing Printer YardCP-Color'

NAME="YardCP-Color" 

DESCRIPTION="YardCP-Color" 

LOCATION="Yard" 

ADDRESS="10.35.2.27" 

FINISHER="FinRUBICONB" 

OPTIONTRAY="2Cassette" 

DUPLEX="DuplexTumble"

APOptionalDuplexer="True"


sudo lpadmin -p "$NAME" -D "$DESCRIPTION" -L "$LOCATION" -E -v smb://"$ADDRESS"/"$NAME" -P "/System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/PrintCore.framework/Versions/A/Resources/generic.ppd" -u allow:all -o printer-is-shared=false -o APOptionalDuplexer="$APOptionalDuplexer" -o Duplex="$DUPLEX"


echo "Done. Enjoy!"
echo "Please report any bugs to https://github.com/djsavvy/harvard-linux-printer/issues"
