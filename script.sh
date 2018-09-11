#!/bin/sh
echo args are: $1, $2, $3 
#echo arguments to the shell
echo verifing correct input...
if [ "$#" -ne 1]; then
	echo "please add exectly 1 parameter!"
fi
