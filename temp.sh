#!/bin/env bash

for FILE in ~/debian/initialization/*
do
	sed -i 's/#!\/bin\/bash/#!\/bin\/env bash/g' $FILE
	echo "Done for $FILE"
done
