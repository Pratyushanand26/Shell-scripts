#!/bin/bash

#monitoring the free fs space disk

FU= $(df -H | egrep -v "Filesystem|tmpfs|none" | grep "drivers" | awk '{print $5}' | tr -d %)

if [[ FU -ge 80 ]]
then 
    echo "Warning, drivers space is low"
else
    echo "All good"
fi
