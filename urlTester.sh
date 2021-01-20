#!/bin/sh
INPUT="Urls.txt"
OUTPUT="result.txt"
while read line ;
do
  if curl -s --head --max-time 3  --request GET $line  | grep "200 OK" > /dev/null;
  then
    echo "$line is UP"
    echo "$line is UP" >> $OUTPUT
  else
    echo "$line is down"
   	echo "$line is down" >> $OUTPUT
  fi
done < $INPUT
exit

