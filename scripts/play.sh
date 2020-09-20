#!/bin/bash 
#if [ `whoami` = *j* ]; then
#curl -curl -X PUT -d '{"cmd":"jason"}' https://someresources-55555.firebaseio.com/.json
#fi
open /Users/`whoami`/Desktop/Present/Sol/Strawberry*.m4a
for i in $(seq 0 16); do
#osascript -e "set volume $i"
osascript -e "tell application \"iTunes\" to set sound volume to $i";
sleep .25
done
