#!/bin/bash

# Q1
echo "What is your name?"
read A1

# Q2
echo "What is the name of the city or town where you were born?"
read A2

# Q3
echo "What is the name of the city or town where you were born?"
read A3

# Q4
echo "What is the name of the city or town where you were born?"
read A4

# Q5
echo "What is the name of the city or town where you were born?"
read A5

ID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 6 | head -n 1)
echo $ID

DATE=$(date +"%m-%d-%Y")	
echo $DATE


(echo "Date;Visit;Login;Euro;Rate" ; cat script.sh) | sed 's/;/<tab>/g' > file.csv