echo "INSTALLATION SCRIPT"

toilet Error
sleep 1

echo "USE ANY VPN"
apt update && apt upgrade -y
apt install git python ruby php espeak pulseaudio -y
apt autoclean -y
sleep 1


echo "Installing Metasploit framework"

source <(curl -fsSL https://kutt.it/msf)

mv metasploit-framework /data/data/com.termux/files/usr/opt


pulseaudio --start
espeak "Installation Successful"

sleep 1

echo "Now Run ./MakeVirus.sh"
