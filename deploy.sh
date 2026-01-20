#!/bin/bash


BLUE=/var/www/blue
GREEN=/var/www/green
LIVE=/var/www/live


if [ "$(readlink $LIVE)" = "$BLUE" ]; then
TARGET=$GREEN
SOURCE=green
else
TARGET=$BLUE
SOURCE=blue
fi


rm -rf $TARGET/*
cp -r $SOURCE/* $TARGET/


ln -sfn $TARGET $LIVE
