require("code.config")
<<<<<<< HEAD
require('hlslens').setup()
require'lspconfig'.jdtls.setup{ cmd = {'jdtls'} }
require("nvim-lsp-installer").setup {}
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
require('lualine').setup{
	options = {
		theme = 'gruvbox'
	}
}
require('lualine').get_config()
require("bufferline").setup{
	options = {
		mode = "buffers",
		numbers = "buffer_id",
		close_command = "bdelete! %d",
    right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
    left_mouse_command = "buffer %d",    -- can be a string | function, see "Mouse actions"
  	indicator = {
        icon = '▎',
				style = 'icon',
    },
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    diagnostics ="nvim_lsp",
	}
}


=======
>>>>>>> 44bdc6891bc2f264f148319c72ee6b0327201e8a
vo.nu = true
vo.cursorline = true
vo.rnu = true
vo.exrc = true
vo.hidden = true
vo.expandtab = false
vo.tabstop = 2
vo.shiftwidth = 2
vo.softtabstop = 2
vo.backspace = "indent,eol,start"
vo.autoindent = true
vo.ttimeoutlen = 0
vo.timeout = false
vo.viewoptions = "cursor,folds,slash,unix"
<<<<<<< HEAD
vo.wrap = false
=======
vo.wrap = true
>>>>>>> 44bdc6891bc2f264f148319c72ee6b0327201e8a
vo.backup = false
vo.swapfile = false
vo.showmode = false
vo.autochdir = true
vo.showcmd = false
vo.wildmenu = true
vo.compatible = false
<<<<<<< HEAD
vo.shell = "fish -i"
=======
vo.shell = "bash -i"
>>>>>>> 44bdc6891bc2f264f148319c72ee6b0327201e8a
vo.ignorecase = true
vo.smartcase = true
vo.shortmess = "c"
vo.inccommand = "split"
vo.completeopt = "longest,noinsert,menuone,noselect,preview"
<<<<<<< HEAD
vo.termguicolors = true
=======
>>>>>>> 44bdc6891bc2f264f148319c72ee6b0327201e8a

undotree_DiffAutoOpen = 1
undotree_SetFocusWhenToggle = 1
undotree_ShortIndicators = 1
undotree_WindowLayout = 2
undotree_DiffpanelHeight = 8
undotree_SplitWidth = 24
airline_powerline_fonts = 0
OmniSharp_server_stdio = 0
any_jump_window_width_ratio  = 0.8
any_jump_window_height_ratio = 0.9
NERDTreeShowHidden=1


<<<<<<< HEAD
vim.lsp.set_log_level("debug")

local has_words_before = function()
  unpack = unpack or table.unpack
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local feedkey = function(key, mode)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end
local cmp = require'cmp'

cmp.setup({
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  window = {
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
		['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'plugins' },
		{ name = 'nvim_lua' },
		{ name = 'treesitter' },
    { name = 'path' },
    { name = 'luasnip',option = { show_autosnippets = true } }, -- For luasnip users.
  }, {
    { name = 'buffer' },
  })
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig')['tsserver'].setup{
	  on_attach = on_attach,
		flags = lsp_flags,
}

require('lspconfig')['jdtls'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')['sumneko_lua'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}

diagnostics_indicator = function(count, level, diagnostics_dict, context)
if context.buffer:current() then
  return ''
end

return ''
end



=======
>>>>>>> 44bdc6891bc2f264f148319c72ee6b0327201e8a
vim.cmd[[filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
syntax enable
colorscheme gruvbox

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
autocmd BufEnter * silent! lcd %:p:h


<<<<<<< HEAD
=======
noremap <LEADER>r :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		set splitbelow
		:sp
		:res -5
		term gcc % -o %< && time ./%<
	elseif &filetype == 'cpp'
		set splitbelow
		exec "!g++ -std=c++11 % -Wall -o %<"
		:sp
		:res -15
		:term ./%<
	elseif &filetype == 'cs'
		set splitbelow
		silent! exec "!mcs %"
		:sp
		:res -5
		:term mono %<.exe
	elseif &filetype == 'java'
		set splitbelow
		:sp
		:res -5
		term javac % && time java %<
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		set splitbelow
		:sp
		:term python3 %
	elseif &filetype == 'html'
		silent! exec "!".g:mkdp_browser." % &"
	elseif &filetype == 'markdown'
		exec "InstantMarkdownPreview"
	elseif &filetype == 'tex'
		silent! exec "VimtexStop"
		silent! exec "VimtexCompile"
	elseif &filetype == 'dart'
		exec "CocCommand flutter.run -d ".g:flutter_default_device." ".g:flutter_run_args
		silent! exec "CocCommand flutter.dev.openDevLog"
	elseif &filetype == 'javascript'
		set splitbelow
		:sp
		:term export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings .
	elseif &filetype == 'racket'
		set splitbelow
		:sp
		:res -5
		term racket %
	elseif &filetype == 'go'
		set splitbelow
		:sp
		:term go run .
	endif
endfunc

>>>>>>> 44bdc6891bc2f264f148319c72ee6b0327201e8a
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
syntax on
syntax enable
if has("persistent_undo")
   let target_path = expand('~/.undohis')

    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif

    let &undodir=target_path
    set undofile
endif

autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
<<<<<<< HEAD
let NERDTreeMenuDown='s'
let NERDTreeMenuUp='w'

source ~/.config/nvim/run.vim
=======
let g:NERDTreeMenuDown='s'
let g:NERDTreeMenuUp='w'
>>>>>>> 44bdc6891bc2f264f148319c72ee6b0327201e8a
]]
