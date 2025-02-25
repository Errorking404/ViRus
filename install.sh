echo "INSTALLATION SCRIPT"
sleep 1
toilet Error

sleep 1


apt update && apt upgrade -y
apt install git python ruby php espeak pulseaudio -y
apt autoclean -y
sleep 1


if [ ! -d "/data/data/com.termux/files/usr/opt/metasploit-framework" ]; then
  echo "Installing Metasploit framework"
  if [ "$(uname -m)" = "armv7l" ]; then
    echo "Your device is 32-bit."
    ./installmsf.sh
  else
    echo "Your device is 64-bit."
    ./installmsf_64.sh
  fi
else
  echo "Metasploit framework is already installed."
fi


pulseaudio --start
espeak "Installation Successful"

sleep 1

espeak "Running Tool"

chmod +x MakeVirus.sh
chmod +x MakeVirus_64.sh

clear

  if [ "$(uname -m)" = "armv7l" ]; then
    echo "Your device is 32-bit."
    ./MakeVirus.sh
  else
    echo "Your device is 64-bit."
    ./MakeVirus_64.sh
  fi
