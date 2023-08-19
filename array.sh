#!/bin/bash

# reading an array 

persons={"$1""$2"}
echo "First Person: ${PERSONS[0]}"

echo "First Person: ${PERSONS[@]}"