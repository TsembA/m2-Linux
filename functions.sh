#!/bin/bash

#echo "All params: $*"
#echo "Number of params: $#"

for param in "$@"
do
  if [ -d "$param" ]
   then
    echo "Executing scripts in the config folder"
    ls -l "$param"
  fi

  echo "$param"
done

#Define the function
function score_sum {
  sum=25
  while true
  do
    read -p "enter a score: " score

    if [ "$score" == "q" ] #Condition check
    then
     break
    fi

    sum=$(($sum+$score))
    echo "total score: $sum"
  done
}

#Call the function
#score_sum


#Pass param inb to the function
function create_file() {
    file_name=$1
    is_shell_script=$2
    touch $file_name #Execute command
    echo "File $file_name created"

    if [ "$is_shell_script" = true ] #Adding boolean meaning
    then
     chmod u+x $file_name
     echo "Added execute permission"
    fi

}

create_file test.txt

create_file myfile.yaml

create_file myscript.sh true 

function sum(){
  total=$(($1+$2))
  return $total
}

sum 2 10
result=$?  # "$?" command captures value returned by last command 
echo "sum of 2 and 10 is $result"



# DON'T USE TO MANY PARAMETERS
# Apply the Single Responsibility Principle:-"A function should only do one thing"
# Declare variables with a MEANINGFUL NAME for positional parameters within a function
# Boolean- A data type that can only have two values TRUE or FALSE