#!/bin/bash
docker stop nextcloud &&
	echo stoped || echo Erorr
docker rm nextcloud &&
	echo delete || echo Erorr
docker run -d -p 9999:80 --name nextcloud -v /home/sadjin/nextcloud/:/var/www/html nextcloud &&
	echo let go || echo Erorr
