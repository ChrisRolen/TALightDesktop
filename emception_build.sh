#!/bin/sh
git clone https://github.com/jprendes/emception.git
cd emception
git checkout da323f9
sudo apt update
sudo apt install nodejs
sudo apt install npm
sudo wget -qO /usr/local/bin/ninja.gz https://github.com/ninja-build/ninja/releases/latest/download/ninja-linux.zip
sudo gunzip /usr/local/bin/ninja.gz
sudo chmod a+x /usr/local/bin/ninja
./build-with-docker.sh
pushd demo
npm install
npm run build
popd
