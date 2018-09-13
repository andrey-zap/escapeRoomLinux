#!/bin/bash
#preparation tasks:
echo "root:escaperoom" | chpasswd
echo "escape:escape" | chpasswd
apt-get update
apt-get install -y vim
apt-get install -y sudo
apt-get install -y cowsay
sudo adduser escape sudo

echo "Preparation process COMPLETED"

#room1 preparation
// ls -lah sort all files and get phrase from first letters of each one
// read permissions to all only

chmod -R agou-w ~/escapeRoom/room_1/

#room2 preparation , pass to readme : whatsupman

chmod -R agou-w ~/escapeRoom/room_2/

//create white_rabbit user with id 521
useradd -M -s /bin/false white_rabbit
usermod -u 521 white_rabbit

#room3 prep. pass to readme : 472


chmod -R agou-w ~/escapeRoom/room_3/

chmod -R agou-x ~/escapeRoom/room_3/creature.sh

//pass for treasure box :1195723

#room4 prep pass to readme: 











Print every 5th line starting with the second