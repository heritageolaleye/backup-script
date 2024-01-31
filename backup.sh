#!/bin/bash

source_dir=/etc
dest_dir=/opt/backups
backup_date=$(date +%y%m%d)
dest_server=ec2-user@35.177.150.147

#create a new directory if it does not exist.
if [ ! -d "$dest_dir" ]; then
	echo "$dest_dir"
	mkdir -p $dest_dir

fi

#backup and compress the file to the directory.
tar -czf $dest_dir/binary$backup_date.tar.gz --absolute-name $source_dir

#sync to the remote server.
rsync -a $dest_dir $dest_server:~/backups

