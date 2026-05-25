#!/bin/bash

<<info 
this script file is take backup on daily basis

info

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%H:%M')

zip -r "$dest/backup-$timestamp.zip" $src > /dev/null

aws s3 sync "$dest" s3://bhaskar-backup-v1

echo "Backup completed and uploading the backups to s3!!"
