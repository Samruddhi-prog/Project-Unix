#!/usr/bin/env bash

function guess {
	echo "Guess the number of files in the current directory..."  ##promp>
        read response

        if [[ $response -ge 0 ]] ##check for positive numbers
        then
                if [[ $response -gt $file_count ]]
                then
                        echo "too high"
                elif [[ $response -lt $file_count ]]
                then
                        echo "too low"
                else
                        echo "Congratulations!!!"
                        exit;
                fi
	else
		exit;
	fi
}
file_count=$( ls -1a | wc -l )
response=0

while [ $response -ne $file_count ]
do

	guess

done
