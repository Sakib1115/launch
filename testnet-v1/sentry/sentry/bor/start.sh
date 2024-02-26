#!/usr/bin/env sh

set -x #echo on

BOR_DIR=${BOR_DIR:-~/.bor}
DATA_DIR=$BOR_DIR/data

bor --datadir $DATA_DIR \
  --port 30303 \
  --http --http.addr '0.0.0.0' \
  --http.vhosts '*' \
  --http.corsdomain '*' \
  --syncmode 'full' \
  --http.port 8545 \
  --http.api 'eth,net,web3,txpool,bor,admin' \
  --ipcpath $DATA_DIR/bor.ipc \
  --networkid '1377' \
  --miner.gasprice '1000000000' \
  --maxpeers 200 \
  --metrics \
  --pprof --pprof.port 7071 --pprof.addr '0.0.0.0'
