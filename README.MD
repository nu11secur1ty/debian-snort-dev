# debian-snort-dev

![](https://github.com/nu11secur1ty/debian-snort-dev/blob/master/logo/586e6b2cc2d41da57a33ca0d.png)

Snort++ build quick start (inside the container) with unit test support:

- - - - - debian-snort-dev
```bash
docker run -t -i nu11secur1ty/debian-snort-dev /bin/bash
```

```
cd $HOME
git clone https://github.com/snort3/libdaq.git
cd libdaq
./bootstrap
./configure
make install
ldconfig

cd $HOME
git clone https://github.com/snort3/snort3.git
cd snort3
./configure\_cmake.sh --prefix=$HOME/install/snort3 --enable-unit-tests
cd build
make -j$(nproc) install
make -j$(nproc) check

$HOME/install/snort3/bin/snort -V
$HOME/install/snort3/bin/snort --catch-test all
```
