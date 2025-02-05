#!/bin/bash
echo "Setup and configure server"

file_name=config.yaml

config_dir=$1 # Pass the parameter while executing script

if [ -d "$config_dir" ] # File conditions. Checks if file is a directory; if yes, then the condition becomes true
then
  echo "Reading config directory contents"
  config_files=$(ls "$config_dir")
else
  echo "config dir not found. Creating one"
  mkdir "$config_dir"
  touch "$config_dir/config.sh"
fi

user_group=$2 # Pass the parameter while executing script

if [ "$user_group" == "tsemb" ]
then
  echo "Configure the server"
elif [ "$user_group" == "admin" ]
then
  echo "Administer the server"
else
  echo "No premission to configure server. Wrong user group"
fi

echo "Using file $file_name to configure something"
echo "Contents of config file: $config_files"
