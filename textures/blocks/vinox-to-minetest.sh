#!/bin/bash
input="./minetest-mappings"
output_dir="minetest-vinox"
[ ! -d $output_dir ] && echo "Making output directory as it doesn't exist" && mkdir $output_dir
while IFS= read -r line
do
  combo=($line)
  output="$output_dir/${combo[1]}"
  directory=$(dirname $output)
  [ ! -d $directory ] && echo "Making directory $directory for texture" && mkdir $directory
  echo "Copying ${combo[0]} to $output"
  cp ${combo[0]} $output

done < "$input"