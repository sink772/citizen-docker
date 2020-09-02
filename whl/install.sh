#!/bin/bash

WORKDIR=$(dirname $0)
FILES=$(echo *.whl)
for f in $FILES; do
    pip3 install $WORKDIR/$f
done

cp $WORKDIR/icon_rc /usr/local/bin
