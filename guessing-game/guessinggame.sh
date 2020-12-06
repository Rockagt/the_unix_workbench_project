#!/usr/bin/env bash
# File: guessingame.sh

function guessing {

   echo "How many files do you think are in this directory?"
    read response

   echo $response

    files=$(ls | wc -l)
   while true
   do
     if [ $response -eq $files ]
     then
	echo "Congratulations you got it right!"
        break

     elif [ $response -lt $files ]
       then 
       echo "low, try a higher number again"

     elif [ $response -gt $files ]
       then
       echo "Very high, try a lower number"

     fi
    read response
     
done
 
}

echo "Welcome to guessingame"
guessing

echo "The End, Thanks"
