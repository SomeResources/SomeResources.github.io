#!/bin/bash
#setup for mac

cd /Users/`whoami` 

mkdir Present

cd Present

git clone https://github.com/SomeResources/SomeResources.github.io.git

chmod +x /Users/`whoami`/Present/SomeResources.github.io/scripts/getsongs.sh

cmd="/Users/`whoami`/Present/SomeResources.github.io/scripts/getsongs.sh"

crontab -l > cronSetup

#say hi at 8:00pm every day
echo "0 20 * * * $cmd" >> cronSetup

crontab cronSetup

rm cronSetup

#
echo $cmd | bash &

