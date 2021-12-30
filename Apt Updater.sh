figlet "Welcome to system updater!"

read -r -p "Do you want to update your system? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    sudo apt -qq update && sudo apt upgrade -y
    figlet "Done"
else
    echo "Ok"
fi
