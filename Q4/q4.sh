#!/bin/bash

script_dir=$(dirname "$0")
mkdir $script_dir/temp_activity
touch $script_dir/temp_activity/temp{1..50}.sh

for i in $(seq 1 25);
do
    mv $script_dir/temp_activity/temp$i.sh $script_dir/temp_activity/temp$i.txt
done