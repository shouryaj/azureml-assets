#!/bin/sh -x
pwd
echo "Downloading azcopy ...."
wget https://aka.ms/downloadazcopy-v10-linux -O azcopy.tar
tar -xvf azcopy.tar
sudo rm /opt/azcopy
sudo cp ./azcopy_linux_amd64_*/azcopy /opt/
sudo rm azcopy.tar
sudo rm -rf ./azcopy_linux_amd64_*
alias azcopy=/opt/azcopy
echo "Installed azcopy ...."
