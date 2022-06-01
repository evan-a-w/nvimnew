cd ~/dev

git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

curl -LO https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb
sudo dpkg -i ripgrep_13.0.0_amd64.deb

sudo apt install fd-find

cd ~/dev
git clone https://github.com/tree-sitter/tree-sitter && cd tree-sitter && make && sudo make install && cd ..
