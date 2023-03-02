# scroll-geth-init

This project is used to initialized the scroll/go-ethereum quickly.

### golang install

```shell
# Linux typically has wget installed
wget -q -O - https://git.io/vQhTU | bash

# macOS typically has curl installed
curl -L https://git.io/vQhTU | bash
```

or

```shell
wget -q -O - https://raw.githubusercontent.com/canha/golang-tools-install-script/master/goinstall.sh | bash

# or...
curl https://raw.githubusercontent.com/canha/golang-tools-install-script/master/goinstall.sh | bash
```


### build special geth
```shell
git clone https://github.com/bradyjoestar/scroll-geth-init.git
cd scroll-geth-init

git clone https://github.com/bradyjoestar/go-ethereum.git
cd go-ethereum

make all
rm -rf /usr/bin/geth
cp -r build/bin/geth /usr/bin/
cd ..
```

### generate data
```shell
geth init genesis.json
```

### export block_signer_address and block_signer_key
```shell
export BLOCK_SIGNER_KEY=6587ae678cf4fc9a33000cdbf9f35226b71dcc6a4684a31203241f9bcfd55d27
export BLOCK_SIGNER_ADDRESS=0x00000398232E2064F896018496b4b44b3D62751F
```

### generate keystore
```shell
echo "Importing private key"
echo $BLOCK_SIGNER_KEY > key.prv
echo "pwd" > password
geth account import --password ./password ./key.prv
```


### start geth
```shell
geth \
  --verbosity=6 \
  --password ./password \
  --allow-insecure-unlock \
  --unlock $BLOCK_SIGNER_ADDRESS \
  --mine \
  --miner.etherbase $BLOCK_SIGNER_ADDRESS \
  --no-discover
```


### start geth2
```shell
geth \
  --verbosity=6 \
  --password ./password \
  --allow-insecure-unlock \
  --unlock $BLOCK_SIGNER_ADDRESS \
  --mine \
  --miner.etherbase $BLOCK_SIGNER_ADDRESS \
  --nodiscover --http --http.addr 0.0.0.0
```