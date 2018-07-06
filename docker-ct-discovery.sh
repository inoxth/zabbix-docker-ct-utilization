#!/bin/bash
TMPFILE=/tmp/docker.ctlist
docker ps -a --no-trunc --format '{{ .ID }} {{ .Names }}' > $TMPFILE

FIRST="yes"
echo "{";
echo "	\"data\":["

while read ctid ctname; do
	if [ "$FIRST" = "no" ]; then
		echo ","
	fi
	echo -n "	{\"{#CTID}\":\"$ctid\","
	echo -n "	\"{#CTNAME}\":\"$ctname\"}"
	FIRST="no"
done < $TMPFILE
echo 
echo "	]"
echo "}"

rm -f $TMPFILE
