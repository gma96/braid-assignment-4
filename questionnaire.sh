#!/bin/bash

echo "What is your name?"

read varname

echo "What is the name of the city or town where you were born?"

read varcity

echo "How many siblings do you have?"

read varsibs

echo "How old are you?"

read varage

echo "What is the name of your major or program?"

read varmajor

# add random string as identifier

varid=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 6 | head -n 1)

vardate=$(date +"%m-%d-%Y")

echo $varname, $varcity, $varsibs, $varage, $varmajor, $varid, $vardate >> answers.csv 