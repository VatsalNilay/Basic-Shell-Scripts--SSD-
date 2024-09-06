# Assignment 1: Software System Development


## Student Information
--------------------

* **Name:** Nilay Vatsal


## Setup
- Download project and extract in the desired location.
- Open the terminal in the extracted folder.
- There should be 4 folders, `Q1` `Q2` `Q3` `Q4`.
- To run a desired part, run the following commands in the project directory.

    ``` bash
        cd ./Q<part>
        ./q<part>.sh
    ```
    where `<part>` is the question number.
- Before running each script, give permission to the script to by executing  the following command in its respective directory.
    ```
    chmod +x ./q<file>.sh
    ```
    where `<file>` is the question number.
    

## Question 1
- For question 1, it is expected that the `quotes.txt` is present in the same directory as of the script.
- Execute `./q1.sh` to obtain the desired files and output.
- Part A
    - Empty lines are removed and stored in `quotes_empty.txt` file in the same directory as of the script.
- Part B
    - For removing the duplicate quotes, this script will sort the quotes and then with the help of `uniq` function all duplicates are removed.
    - Output is stored in `quotes_rdup.txt` in the same directory.
- Part C
    - For getting the number of quotes by person, we will sort by author name then counting the occurance, sorting it by the occurance and then storing it `quotes_byperson.txt`.
- Part D
    - The script extracts all the words that start with `s` and is not immediately followd by `a`.
    - Output of this command is printed in the terminal itself.

## Question 2
- Output of the following two parts will be shown on the console by using `./q2.sh`.
- Part A
    - Script generates password of length 8, 9 or 10. 
    - Password will be combination of small letter, capital letter and special characters.

- Part B
    - The script will create an account number of length 12, 13 or 14.
    - It will ensure that no fibonacci sequence is formed in any part of the account number by making the use of some pre defined patterns.

## Question 3
- This can be executed `./q3.sh`.
- Output to both the part of this question is printed as one.
- Make sure that the directory from which it is executed is not empty as error will be generated.
- First all the directories are listed and then with the help of awk and printf commands.
- Output is then sorted in arranging fashion of size of directory.

## Question 4
- Obtain the files by executing the `./q4.sh`.
- Script will create a directory `temp_activity`.
- Inside `temp_activity`, 50 files will be created with name `temp<i>.sh` where `<i>` is replaced by number from `1` to `50`.
- Then files from `1`to `25` are changed to `.txt` format.