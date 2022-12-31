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
vo.wrap = false
vo.wrap = true
vo.wrap = false
vo.wrap = true
vo.backup = false
vo.swapfile = false
vo.showmode = false
vo.autochdir = true
vo.showcmd = false
vo.wildmenu = true
vo.compatible = false
vo.shell = "fish -i"
vo.ignorecase = true
vo.smartcase = true
vo.shortmess = "c"
vo.inccommand = "split"
vo.completeopt = "longest,noinsert,menuone,noselect,preview"


vo.termguicolors = true


vo.termguicolors = true

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

vim.cmd[[filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
syntax enable
colorscheme gruvbox
noremap <LEADER>r :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype  'c'
		set splitbelow
		:sp
		:res -5
		term gcc % -o %< && time ./%<
	elseif &filetype  'cpp'
		set splitbelow
		exec "!g++ -std=c++11 % -Wall -o %<"
		:sp
		:res -15
		:term ./%<
	elseif &filetype  'cs'
		set splitbelow
		silent! exec "!mcs %"
		:sp
		:res -5
		:term mono %<.exe
	elseif &filetype  'java'
		set splitbelow
		:sp
		:res -5
		term javac % && time java %<
	elseif &filetype  'sh'
		:!time bash %
	elseif &filetype  'python'
		set splitbelow
		:sp
		:term python3 %
	elseif &filetype  'html'
		silent! exec "!".g:mkdp_browser." % &"
	elseif &filetype  'markdown'
		exec "InstantMarkdownPreview"
	elseif &filetype  'tex'
		silent! exec "VimtexStop"
		silent! exec "VimtexCompile"
	elseif &filetype  'dart'
		exec "CocCommand flutter.run -d ".g:flutter_default_device." ".g:flutter_run_args
		silent! exec "CocCommand flutter.dev.openDevLog"
	elseif &filetype  'javascript'
		set splitbelow
		:sp
		:term export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings .
	elseif &filetype  'racket'
		set splitbelow
		:sp
		:res -5
		term racket %
	elseif &filetype  'go'
		set splitbelow
		:sp
		:term go run .
	endif
endfunc



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
source ~/.config/nvim/run.vim
]]
