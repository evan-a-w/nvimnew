cd ~/dev

curl -L https://github.com/rust-analyzer/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.local/bin/rust-analyzer
chmod +x ~/.local/bin/rust-analyzer

git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

curl -LO https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb
sudo dpkg -i ripgrep_13.0.0_amd64.deb

sudo apt install fd-find

cd ~/dev
git clone https://github.com/tree-sitter/tree-sitter && cd tree-sitter && make && sudo make install && cd ..

# https://github.com/belluzj/fantasque-sans#installation
cd `mktemp -d`
curl -LO https://github.com/belluzj/fantasque-sans/releases/download/v1.8.0/FantasqueSansMono-Normal.tar.gz
tar -xzvf FantasqueSansMono-Normal.tar.gz
cd OTF
mkdir -p ~/.local/share/fonts
mv Fantasque* ~/.local/share/fonts
fc-cache -f -v
