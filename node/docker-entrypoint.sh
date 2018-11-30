#!/bin/sh

set -e

REPOSITORY=${REPOSITORY}
BRANCH=${BRANCH:-'master'}

if ! [ -d app ]; then
    echo "Project sources not found. Cloning $BRANCH branch..."
    git clone -b "$BRANCH" "$REPOSITORY" app
    cd app
else
    echo "Project sources found. Updating $BRANCH branch..."
    cd app
    git pull origin "$BRANCH"
fi

npm install
npm start
