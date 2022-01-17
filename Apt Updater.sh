banner() {
        cat <<- EOF
                ${ORANGE}__        __   _                            _
                ${ORANGE}\ \      / /__| | ___ ___  _ __ ___   ___  | |
                ${ORANGE} \ \ /\ / / _ \ |/ __/ _ \| '_ ` _ \ / _ \ | __/ _ \
                ${ORANGE}  \ V  V /  __/ | (_| (_) | | | | | |  __/ | || (_) |
                ${ORANGE}   \_/\_/ \___|_|\___\___/|_| |_| |_|\___|  \__\___/ 
                ${ORANGE}
                ${ORANGE} ___ _   _ ___| |_ ___ _ __ ___    _   _ _ __   __| | __ _| |  ___ _ __
                ${ORANGE}/ __| | | / __| __/ _ \ '_ ` _ \  | | | | '_ \ / _` |/ _` | __/ _ \ '__|
                ${ORANGE}\__ \ |_| \__ \ ||  __/ | | | | | | |_| | |_) | (_| | (_| | ||  __/ |
                ${ORANGE}|___/\__, |___/\__\___|_| |_| |_|  \__,_| .__/ \__,_|\__,_|\__\___|_|
                ${ORANGE}     |___/                              |_|
                EOF

read -r -p "Do you want to update your system? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    sudo apt -qq update && sudo apt upgrade -y
    figlet "Done"
else
    echo "Ok"
fi
