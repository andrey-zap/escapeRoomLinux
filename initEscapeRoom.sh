#!/bin/sh
#preparation tasks:
echo "root:escaperoom" | chpasswd
echo "escape:escape" | chpasswd
apt-get update
apt-get install -y apt-utils vim sudo cowsay man
sudo adduser escape sudo

echo "Preparation process COMPLETED"

#room1 preparation
#remove all "*.txt" files from room_files folder
# ls -lah sort all files by size and get pass from first letters of each one
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

#room4 prep pass to readme: linuxisfun

chmod -R agou-w escapeRoom/room_4/
chmod -R agou-r escapeRoom/room_4/crazyText
#PhenixFire.jar
#sed  -e 's/zing/H/g' crazyText     -i to overwrite
#sed  -e 's/zing/H/g' crazyText
#sed  -e 's/zing/H/g' crazyText

#key to key file : linuxisstillfun

#room number 5 : pass to readme crazyroom
chmod -R agou-w escapeRoom/room_5/
chmod -R agou-x escapeRoom/room_5/PhoenixFire.jar

#room number 6 : pass to readme fireofthephoenix

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


#room 7 - pass to readme: linuxpro
chmod -R agou-w escapeRoom/room_7/
#ps, find, awk OR cut
#2 ways:
#awk -F , '{print $4}' table.csv | grep "png" | sort | sed s/junk//g | sed s/.png//g | cut -c 2-


#room 8 - pass to readme: linuxmagic
# run with other user: sudo su testUser -c ./dragonfly.sh &
useradd -M -s /bin/bash testUser
chmod -R agou-w escapeRoom/room_8/
#dragonfly.sh:
#!/bin/bash
#while true
#do
#        sleep 1
#done
#





#room_9 - pass to readme: coolproc :
#!/bin/bash
#if [ "$1" = "" ]; then
#    echo "argument is not a number"
#else
 #   key="$1"
 #   for (( n=0; n< $key; n++ ))
 #       do
 #        echo "I like to bugiWugi every day!"
 #        done
#fi


#room 10 -  shutupanddance
#    pass to open treasure chest geniuslinuxuser
#questions.add("lets start with something simple: a symbol to comment a row in script or a command? (1 char)");
#        answers.put(0, Arrays.asList("#"));
#        questions.add("parameter in 'cd' command which takes you to the previous working directory you have been? (1 char)");
#        answers.put(1, Arrays.asList("-"));
#        questions.add(" which  symbol tell the shell to append to file? (2 chars)");
#        answers.put(2, Arrays.asList(">>"));
#        questions.add("One of the shell commands you use to show actual command behind the alias (4 chars)");
#        answers.put(3, Arrays.asList("type"));
#        questions.add(" 'cd' to home directory symbol (1 char)");
#        answers.put(4, Arrays.asList("~"));
#        questions.add(" alias of 'ls -alF'? (2 chars)");
#        answers.put(5, Arrays.asList("ll"));
#        questions.add("command to keep listing the currently running processes, sorted by cpu usage (3 chars)");
#        answers.put(6, Arrays.asList("top"));
#        questions.add(" on command line,while executing multiple commands, symbol which make sure that the next command will only run when the previous command was successful (2 chars)");
#        answers.put(7, Arrays.asList("&&"));
#        questions.add(" on cmd, Reuse the previous command in present command shortcut(2 chars)");
#        answers.put(8, Arrays.asList("!!"));
#        questions.add(" convert '546' numeric permission convention to letters(r-xw...) (9 chars)");
#        answers.put(9, Arrays.asList("r-xr--rw-"));
#        questions.add("Displays the file system disk space usage (2 chars)");
#        answers.put(10, Arrays.asList("df"));
#        questions.add("name of file which is used to keep track of every registered user that has access to the system (6 chars)");
#        answers.put(11, Arrays.asList("passwd"));
#        questions.add("operating system command to read files, which doesn’t need to load the full file while opening and allow to scroll up and down on the content.(4 chars)");
#        answers.put(12, Arrays.asList("less"));
#        questions.add("command to edit the sudoers file (6 chars)");
#        answers.put(13, Arrays.asList("visudo"));
#        questions.add(" partition reserved for the installation of add-on application software packages (3 chars)");
#        answers.put(14, Arrays.asList("opt"));

#final pass to treasurechest - geniuslinuxuser