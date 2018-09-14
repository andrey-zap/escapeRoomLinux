#!/bin/sh
#preparation tasks:
echo "root:escaperoom" | chpasswd
echo "escape:escape" | chpasswd
apt-get update
apt-get install -y apt-utils vim sudo cowsay
sudo adduser escape sudo

echo "Preparation process COMPLETED"

#room1 preparation
# ls -lah sort all files and get phrase from first letters of each one
# read permissions to all only

chmod -R agou-w escapeRoom/room_1

#room2 preparation , pass to readme : whatsupman

chmod -R agou-w escapeRoom/room_2/

#create white_rabbit user with id 521
useradd -M -s /bin/false white_rabbit
usermod -u 521 white_rabbit

#room3 prep. pass to readme : 472


chmod -R agou-w escapeRoom/room_3/

chmod -R agou-x escapeRoom/room_3/creature.sh

#pass for treasure box :1195723

#room4 prep pass to readme: linuxIsFun

chmod -R agou-w escapeRoom/room_4/
chmod -R agou-r escapeRoom/room_4/crazyText
#PhenixFire.jar
#sed  -e 's/zing/H/g' crazyText     -i to overwrite
#sed  -e 's/zing/H/g' crazyText
#sed  -e 's/zing/H/g' crazyText

#key to key file : linuxisstillfun

#room number 5 : pass to readme crazyroom
chmod -R agou-w escapeRoom/room_4/
chmod -R agou-x escapeRoom/room_5/PhenixFire.jar

#room number 6 : pass to readme fireofthephenix

#script to run:
#!/bin/bash
#for ((a=1; a <= 100 ; a++))
#do
#    if [  $(($a%7)) == 0 ]; then
#    echo "7" >> check.txt
#  else
#   echo "$a" >> check.txt
#fi
#done


#