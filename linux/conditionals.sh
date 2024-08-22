#!/bin/bash

score=15

if [ $score -ge 90 ]; then
    echo "point A"
elif [ $score -ge 80 ]; then
    echo "point B"
elif [ $score -ge 70 ]; then
    echo "point C"
elif [ $score -ge 60 ]; then
    echo "point D"
else
    echo "point F"
fi
