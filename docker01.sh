#!/bin/sh
# chkconfig:
# desciption:
#

#: Script Name  :  docker01.sh
#: Version      : 1.03
#: Author       : Chris Bloemker - homelabguy.com
#: Date Created : June 11, 2018
#: Date Updated : June 16, 2018
#: Description  : installs the latest version of docker after a fresh ubuntu installation, updates and upgrades local packages, removes unneccessary packages. Installs my most used utilities. Creates the /mnt/public folder. Then finally installs docker and adds the username "chris" to the docker group.
#: Example      : `./docker01.sh`



# Clean Install Script [Docker] #

# sets the sudo user variable
currentuser=$SUDO_USER
# update and upgrade
apt-get update
apt-get upgrade -y
# Make the mount dirs
sudo mkdir /mnt/public
# REMOVE some unneeded apps #
apt remove gnome-games -gnome-games-common empathy
# Install some favorite utils #
apt install -y screen ncdu htop cifs-utils screenfetch tree
# Time to install docker #
curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh
# applies the usergroup "chris" to the docker group admin #
usermod -aG docker $currentuser
apt-get autoremove
# Install Webmin #
echo "Your device has been setup successfully!"
echo "You now have the latest version of Docker-CE installed: $(docker --version)"
echo "Thank you for using chrisbloemker's bash script! :)"
