vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'vim-airline/vim-airline-themes'
	use 'morhetz/gruvbox'
	use 'itchyny/vim-cursorword'
	use 'pechorin/any-jump.vim'
	use 'theniceboy/eleline.vim'
	use 'mbbill/undotree'
	use 'OmniSharp/omnisharp-vim'
	use 'jiangmiao/auto-pairs'
	use 'kevinhwang91/nvim-hlslens'
	use 'mg979/vim-visual-multi'
	use 'uiiaoo/java-syntax.vim'
	use 'mfussenegger/nvim-jdtls'
--	use 'vim-airline/vim-airline'
end)
