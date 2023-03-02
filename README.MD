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

### 