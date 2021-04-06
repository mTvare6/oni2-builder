apt install node git libpng-dev libbz2-dev m4 xorg-dev libglu1-mesa-dev libharfbuzz-dev libgtk-3-dev libfontconfig1-dev nasm clang build-essential libacl1-dev libncurses-dev
npm install -g esy

git clone https://github.com/onivim/oni2
cd oni2
npm install -g node-gyp
node install-node-deps.js
esy install
esy bootstrap
esy build

esy '@release' install
esy '@release' run --help
esy '@release' create

cd ..
