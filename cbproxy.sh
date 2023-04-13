ACTUAL="cbproxy"
read -s -p "Password: " enteredpass
echo ""

[ "$enteredpass" != "$ACTUAL" ] && echo "Sorry" && echo "exiting" || pkg update -y && pkg upgrade -y && pkg install wget openssl curl figlet -y && wget https://raw.githubusercontent.com/AyaneHana/CBProxy/main/install.sh && bash install.sh
