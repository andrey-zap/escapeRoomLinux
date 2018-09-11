#/bin/bash
if [ ! -f ./food ]; then
    echo "No No! I am hungry,
I Dont see any 'food' files around"
exit 1
fi

if  ! ls -l food | awk '{ print $4 }'| grep -q "vagrant" 
 then
	echo "What? Sorry, I eat only vegan group"
fi

