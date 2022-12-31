<<<<<<< HEAD
local install_path = vim.fn.stdpath("data") .. '/site/pack/packer/start/packer.nvim' 
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	PACK_BOOTSTARAP = vim.fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path
	})

	print("Installing package manager packer.nvim into" .. install_path)

	vim.cmd [[packadd packer.nvim]]
end

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	--use 'vim-airline/vim-airline'
	use 'wbthomason/packer.nvim'
	use 'vim-airline/vim-airline-themes'
	use 'morhetz/gruvbox'
	use 'pechorin/any-jump.vim'
-- use 'theniceboy/eleline.vim'
	use 'neovim/nvim-lspconfig'
=======
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'vim-airline/vim-airline-themes'
	use 'morhetz/gruvbox'
	use 'pechorin/any-jump.vim'
	use 'theniceboy/eleline.vim'
>>>>>>> 44bdc6891bc2f264f148319c72ee6b0327201e8a
	use 'mbbill/undotree'
	use 'OmniSharp/omnisharp-vim'
	use 'jiangmiao/auto-pairs'
	use 'kevinhwang91/nvim-hlslens'
	use 'mg979/vim-visual-multi'
	use 'uiiaoo/java-syntax.vim'
<<<<<<< HEAD
	use 'mfussenegger/nvim-jdtls'
	use 'tpope/vim-commentary'
	use 'williamboman/nvim-lsp-installer'
	use 'nvim-lualine/lualine.nvim'
	use 'sumneko/lua-language-server'
	use {
		'akinsho/bufferline.nvim',
		tag = "v3.*",
		requires = 'nvim-tree/nvim-web-devicons'
	}	

	-- vim cmp configure	
	use {
		'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-vsnip',
    'hrsh7th/vim-vsnip',
		'mtoohey31/cmp-fish',
		'hrsh7th/cmp-nvim-lua',
		'L3MON4D3/LuaSnip',
    'KadoBOT/cmp-plugins',
		'ray-x/cmp-treesitter',
		'saadparwaiz1/cmp_luasnip'
	}

	use{ 
		'nvim-tree/nvim-tree.lua',
		require = {
				'nvim-tree/nvim-web-devicons',
		},
		tag=nightly
	}
=======
	use 'preservim/nerdtree'
	use 'mfussenegger/nvim-jdtls'
	use 'tpope/vim-commentary'
--	use 'vim-airline/vim-airline'
>>>>>>> 44bdc6891bc2f264f148319c72ee6b0327201e8a
end)
