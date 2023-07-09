#!/bin/bash
input="./minecraft-mappings"
output_dir="minecraft-vinox/assets"

# Reset
rm -rf $output_dir
mkdir -p $output_dir

while IFS= read -r line
do
  combo=($line)
  output="$output_dir/${combo[1]}"
  directory=$(dirname $output)
  [ ! -d $directory ] && echo "Making directory $directory for texture" && mkdir -p $directory
  echo "Copying ${combo[0]} to $output"
  cp ${combo[0]} $output

done < "$input"