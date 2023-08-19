#!/bin/bash

# reading an array 

persons={ "$1" "$2" }
echo "First Person: ${persons[0]}"

echo "First Person: ${persons[@]}"