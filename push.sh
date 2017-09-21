#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "USAGE:"
    echo "      ./push.sh <username>"
    echo ""
    echo "Where <username> is your w3.cs.jmu.edu username."
else
    git pull && hugo && rsync -a --omit-dir-times --exclude=.DS_Store public/ $1@w3.cs.jmu.edu:/data/www/cs149
fi
