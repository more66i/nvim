sudo apt install git
apt install git
apt install nvim

echo "Installing packer.vim"

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# if you use windows:
# git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"

git clone https://github.com/more66i/nvim ~/.config/
