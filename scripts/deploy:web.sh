#!/bin/bash

BRANCH=$(git branch --show-current)

if [ -z $BRANCH ] || [ $BRANCH != "dev" ]; then
    echo "switch branch to dev"
    exit 1
fi

gh-pages -d web-build --remote=gh-pages
git checkout master
git merge dev
git checkout dev