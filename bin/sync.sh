#!/bin/bash

SOURCE=`git remote | grep upstream`
DESTINATION=`git remote | grep origin`

if [ -z "$SOURCE" ]; then
    echo "Unknown SOURCE"
    exit 1
else
    echo "SOURCE:$SOURCE"
fi

if [ -z "$DESTINATION" ]; then
    echo "Unknown DESTINATION"
    exit 1
else
    echo "DESTINATION:$DESTINATION"
fi

if git pull $SOURCE master; then
    git push $DESTINATION master
fi
