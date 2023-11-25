RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"

clear
echo -e "${GREEN}Installing Proxy...${ENDCOLOR}"
sleep 1
if [ -f "proxy_linux" ]; then
    echo -e "${RED}Deleting old proxy...${ENDCOLOR}"
    rm proxy
    sleep 1
    echo -e "${GREEN}Getting proxy...${ENDCOLOR}"
fi
wget -q https://github.com/AyaneHana/CBProxy/raw/main/proxy
sleep 1
echo -e "${GREEN}Proxy Installed${ENDCOLOR}"
figlet -f standard SNPROXY
echo -e "${GREEN}Execute proxy with this command: ./proxy${ENDCOLOR}"
chmod +x proxy
rm -rf install.sh
rm -rf proxy.sh
./proxy
figlet -f moo now running 

