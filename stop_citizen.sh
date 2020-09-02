#!/bin/bash

if [[ -z $1 ]]; then
    echo "Usage: $0 <pid>"
    exit 1
fi

kill $1 || exit 1

echo "Stopping iconservice..."
iconservice stop -c ./conf/iconservice_mainnet.json
