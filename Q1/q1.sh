#!/bin/bash

script_dir=$(dirname "$0")

# Set the file paths relative to the script's directory
original="${script_dir}/quotes.txt"
file1="${script_dir}/quotes_empty.txt"
file2="${script_dir}/quotes_rdup.txt"
file3="${script_dir}/quotes_byperson.txt"

# Part 1 : Removing all the empty lines and putting them into quotes_empty.txt
awk NF $original > $file1

#Part 2 : Removing all the duplicate lines.
sort $original | uniq > $file2

#Part3 : Getting the number of quotes for each of the authors
awk -F'~' '{if ($NF!="") {gsub(/^ +| +$/, "", $NF); print $NF}}' $original | sort | uniq -c | sort -nr   > $file3

#Part4 : List all the words that start with s but does not follow by a
grep -o "\bs[^a ]\w*\b" $original | sort