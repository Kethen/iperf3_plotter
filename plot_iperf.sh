#!/bin/bash

SCRIPT_DIR=$(realpath $(dirname $0))

if [ $# -ne 1 ]; then
	echo "***************************************"
	echo "Usage: $0 <iperf_json_file>"
	echo "***************************************"
fi

"$SCRIPT_DIR"/preprocessor.sh $1 .

if [ $? -ne 0 ]; then
	exit 1
fi

cd results
gnuplot "$SCRIPT_DIR"/*.plt

