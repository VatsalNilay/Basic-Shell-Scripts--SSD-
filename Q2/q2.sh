#!/bin/bash


echo "Part A"

lowercase="abcdefghijklmnopqrstuvwxyz"
uppercase="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
special="%&#$()@!"

length=$((RANDOM % 3 + 8))

pick_random_char() 
{
  local chars=$1
  echo "${chars:RANDOM % ${#chars}:1}"
}

password=$(pick_random_char "$lowercase")
password+=$(pick_random_char "$uppercase")
password+=$(pick_random_char "$special")

remaining_length=$((length - ${#password}))
all_chars="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ%&#$()@!"

for _ in $(seq 1 $remaining_length); 
do
  password+=$(pick_random_char "$all_chars")
done

password=$(echo "$password" | fold -w1 | shuf | tr -d '\n')

echo "Password = $password  : Length = $length"


#part b
echo "Part B"

length2=$((RANDOM % 3 + 12))

pattern1="987654321"
pattern2="357986124"
pattern3="468213579"
pattern4="975318642"

combos=($pattern1 $pattern2 $pattern3 $pattern4)

idx_pattern=$((RANDOM % 4))
idx_start=$((RANDOM % 10))
pattern=${combos[$idx_pattern]}

account_num=""
for ((i=0; i < length2; i++)); 
do
    account_num+="${pattern:((idx_start + i) % 10):1}"
done

echo "Account Number: $account_num : Length : $length2"