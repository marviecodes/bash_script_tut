#!/bin/bash

# if
# if - else
# if -elif-else

x=10
y=2
z=3

# -eq = equal to
# -ne = not equal to
# -lt = less than
# -le = less than or equal to
# -gt = greater than
# -ge = greater than or equal to



if [[ $x -gt $y ]]; then
    echo "$x > $y"
elif [[ $x -gt $z ]]; then
    echo "$x > $z"
else
    echo "$x is the smallest number."
fi            
