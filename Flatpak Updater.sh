figlet "Welcome to flatpak updater!"

read -r -p "Do you want to update your flatpak apps? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    sudo flatpak update -y
    figlet "Done" 
else
    echo "Ok"
fi
