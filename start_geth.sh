#!/bin/bash

geth \
  --verbosity=6 \
  --password ./password \
  --allow-insecure-unlock \
  --unlock $BLOCK_SIGNER_ADDRESS \
  --mine \
  --miner.etherbase $BLOCK_SIGNER_ADDRESS \
  --nodiscover --http --http.addr 0.0.0.0