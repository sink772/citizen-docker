#!/bin/bash

echo "Run citizen with port 7100..."
loopchain -o ./conf/citizen_mainnet.json &

echo "Run iconservice for citizen 7100 start!"
iconservice start -c ./conf/iconservice_mainnet.json

#echo "Run iconrpcserver for citizen 7100 start!"
#iconrpcserver start -c conf/iconrpcserver_mainnet.json
