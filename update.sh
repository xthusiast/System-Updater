#!/bin/bash

        cat <<-EOF
 _   _           _       _            
| | | |_ __   __| | __ _| |_ ___ _ __ 
| | | | '_ \ / _  |/ _' | __/ _ \ '__|
| |_| | |_) | (_| | (_| | ||  __/ |   
 \___/| .__/ \__,_|\__,_|\__\___|_|   
      |_|                           Version 1.1
EOF

read -r -p "Do you want to update your system? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    sudo apt -qq update && sudo apt full-upgrade -y
    
    # Delete the next line if you dont use Flatpak
    sudo flatpak update -y

    # Delete the next line if you dont use Snaps
    sudo snap refresh

    figlet "Done"
else
    echo "Ok"
fi
