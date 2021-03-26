/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
npm install -g esy
brew install cmake libpng ragel libtool gettext git npm
PATH='/usr/local/bin:$PATH'
ulimit -Sn 4096 

git clone https://github.com/onivim/oni2
cd oni2
npm install -g node-gyp
node install-node-deps.js
esy install
esy bootstrap
esy build
esy run -f --checkhealth

esy '@release' install
esy '@release' run -f --checkhealth
esy '@release' run --help
esy '@release' create

cp -R _release/Onivim2.app ..
