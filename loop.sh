#!/bin/bash

echo "All params: $*"
echo "Number of params: $#"

for param in "$*"
do
  if [ -d "$param" ]
   then
    echo "Executing scripts in the config folder"
    ls -l "$param"
  else
    echo "$param is not a directory"
  fi

  echo "$param"
done

sum=25

while true
  do
    read -p "enter a score " score

    if [ "$score" == "q" ] #Condition check
    then
     break
    fi

    sum=$(($sum+$score))
    echo "total score: $sum"
  done