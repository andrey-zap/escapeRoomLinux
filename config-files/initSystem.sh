#!/bin/bash
#preparation tasks:
echo "root:escaperoom" | chpasswd
echo "escape:escape" | chpasswd
apt-get update
apt-get install -y apt-utils vim sudo cowsay man
echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
sudo apt-get install -y -q
sudo adduser escape sudo
sudo apt-get install bash-completion
echo "source /etc/profile.d/bash_completion.sh" >> ~/.bashrc
echo "Preparation process COMPLETED"