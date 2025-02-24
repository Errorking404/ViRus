echo "INSTALLATION SCRIPT"

toilet Error

sleep 1


apt update && apt upgrade -y
apt install git python ruby php espeak pulseaudio -y
apt autoclean -y
sleep 1


if [ ! -d "/data/data/com.termux/files/usr/opt/metasploit-framework" ]; then
    echo "Installing Metasploit framework"
    
    ./installmsf.sh
else
    echo "Metasploit framework is already installed."
fi


pulseaudio --start
espeak "Installation Successful"

sleep 1

chmod +x MakeVirus.sh

echo "Now Run ./MakeVirus.sh"
