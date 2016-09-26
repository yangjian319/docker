#!/bin/bash
check_ok(){
    if [ $? != 0 ]
    then
        echo "Error,check the error log."
        exit 1
    fi
}
sudo apt-get -y install curl
sudo sh -c "echo deb https://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
sudo apt-get update
check_ok
sudo apt-get install linux-headers-3.8.0-29-generic linux-image-3.8.0-29-generic linux-headers-3.8.0-29
check_ok
sudo update-grub
check_ok
sudo reboot
