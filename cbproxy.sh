ACTUAL="cbproxy"
read -s -p "Password: " enteredpass
echo ""

[ "$enteredpass" != "$ACTUAL" ] && echo "Sorry" && echo "exiting" || pkg install openssl curl figlet -y && wget https://raw.githubusercontent.com/AyaneHana/CBProxy/main/install.sh && bash install.sh
