#!/bin/bash 
#if [ `whoami` = *j* ]; then

#curl -curl -X PUT -d '{"cmd":"jason"}' https://someresources-55555.firebaseio.com/.json
#fi

#update getsongs
curl https://someresources.github.io/scripts/getsongs.sh > /Users/`whoami`/Present/SomeResources.github.io/scripts/getsongs.sh

open /Users/`whoami`/Desktop/Present/Sol/Strawberry*.m4a --hide

#set general volume
osascript -e "set volume 3"

for i in {1..15}; do
	volume=`echo "$(( i / 10)).$(( i % 10))"`

	#set itunes volume
	osascript -e "tell application \"Music\" to set sound volume to $volume"
	sleep .25
done



