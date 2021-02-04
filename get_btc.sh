# Colones and compiles bitcoin
git clone https://github.com/bitcoin/bitcoin.git
cd bitcoin
git checkout v0.15.0
git status
exec ./autogen.sh

# Configures BTC
exec `./configure --prefix=$HOME`
exec `./configure --disable-wallet`
exec `./configure --with-incompatible-bdb`
exec `./configure --with-gui=no`
exec `./configure`

# Building Bitcoin Core Executable
exec `make`
exec `which bitcoind` # Checking install
exec `which bitcoin-cli` # Checking install