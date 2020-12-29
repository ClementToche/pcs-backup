#!/bin/sh

for folder in $(ls -d /mnt/backup/*/)
do
    name=$(echo $folder | sed 's!/mnt/backup/\(.*\)/!\1!')
    tar -czf /mnt/sauv/$name.tar.gz -C $folder .
done