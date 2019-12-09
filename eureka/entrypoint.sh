#!/bin/bash

set -e

# set hosts
cat >> /etc/hosts <<- EOM
EOM

if [ -z $MEM_MIN ]; then
	export MEM_MIN=1024M
fi
if [ -z $MEM_MAX ]; then
	export MEM_MAX=1024M
fi

if [ "$1" = "java-run" ]; then
	java \
		-Djava.security.egd=file:/dev/./urandom \
		-Xms$MEM_MIN -Xmx$MEM_MAX \
		-jar /*.jar
fi
#echo $MEM_MIN
#echo $MEM_MAX
exec "$@"
