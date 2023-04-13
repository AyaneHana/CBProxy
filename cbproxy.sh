ACTUAL="cbproxy"
read -s -p "Password: " enteredpass
echo ""

[ "$enteredpass" != "$ACTUAL" ] && echo "Sorry" && echo "exiting" || pkg update && pkg upgrade && pkg install wget openssl curl figlet && wget https://raw.githubusercontent.com/AyaneHana/CBProxy/main/install.sh && bash install.sh
