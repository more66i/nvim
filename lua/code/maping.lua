require("code.config")

vg.mapleader = " "
vg.maplocalleader = " "

map('n','w','k',opt)
map('v','w','k',opt)
map('n','a','h',opt)
map('v','a','h',opt)
map('n','s','j',opt)
map('v','s','j',opt)
map('n','d','l',opt)
map('v','d','l',opt)
map('n','W','5k',opt)
map('n','A','5h',opt)
map('n','S','5j',opt)
map('n','D','5l',opt)
map('v','W','5k',opt)
map('v','A','5h',opt)
map('v','S','5j',opt)
map('v','D','5l',opt)
map('n','<LEADER>s',':w<CR>',opt)
map('n','Q',':q<CR>',opt)
map('n','<LEADER>i','I',opt)
map('n','<LEADER>a','A',opt)
map('n','<LEADER>o','O',opt)
map('n','<LEADER>d','dd',opt)
map('n','<LEADER>dd',':set splitright<CR>:vsplit<CR>',{noremap = true})
map('n','<LEADER>da',':set splitright<CR>:vsplit<CR>',{noremap = true})
map('n','<LEADER>dw',':set nosplitbelow<CR>:split<CR>',{noremap = true})
map('n','<LEADER>ds',':set splitbelow<CR>:split<CR>',{noremap = true})
<<<<<<< HEAD
map('n','<leader>pi',':PackerInstall<CR>',{noremap = true})
=======
>>>>>>> 44bdc6891bc2f264f148319c72ee6b0327201e8a
map('n','<LEADER>n','Nzz',opt)
map('n','bc','bcw',opt)
map('n','n','nzz',opt)
map('n','ma','<C-w>h',opt)
map('n','md','<C-w>l',opt)
map('n','mw','<C-w>k',opt)
map('n','ms','<C-w>j',opt)
map('n','ta',':-tabnext<CR>',opt)
map('n','td',':+tabnext<CR>',opt)
map('n','tt',':tabe<CR>',opt)
<<<<<<< HEAD
map('n','lt',':bdelete<CR>',opt)
=======
>>>>>>> 44bdc6891bc2f264f148319c72ee6b0327201e8a
map('n','te',':terminal<CR>',opt)
map('n','R',':source  %<CR>', {noremap = true})
map("n", "<A-o>", "<cmd>lua require'jdtls'.organize_imports()<CR>", opt)
map('n','<up>',':res +5<CR>',opt)
map('n','<down>',':res -5<CR>',opt)
map('n','<left>',':vertical resize-5<CR>',opt)
map('n','<right>',':vertical resize+5<CR>',opt)
<<<<<<< HEAD
map('n','hh',':UndotreeToggle<CR>',opt)
map('n','<LEADER>j',':AnyJump<CR>',opt)
map('n','tf',':NvimTreeToggle<CR>',opt)
map('n','th',':NvimTreeFindFile<CR>',opt)
map('n','<LEADER><CR>',':noh<CR>',{silent = true})
-- lsp configure

msp('n', '<LEADER>e', vim.diagnostic.open_float, opts)
msp('n', '[d', vim.diagnostic.goto_prev, opts)
msp('n', ']d', vim.diagnostic.goto_next, opts)
msp('n', '<LEADER>q', vim.diagnostic.setloclist, opts)

msp('n', 'gD', vim.lsp.buf.declaration, bufopts)
msp('n', 'gd', vim.lsp.buf.definition, bufopts)
msp('n', 'K', vim.lsp.buf.hover, bufopts)
msp('n', 'gi', vim.lsp.buf.implementation, bufopts)
msp('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
msp('n', '<LEADER>D', vim.lsp.buf.type_definition, bufopts)
msp('n', '<LEADER>rn', vim.lsp.buf.rename, bufopts)
msp('n', '<LEADER>ca', vim.lsp.buf.code_action, bufopts)
msp('n', 'gr', vim.lsp.buf.references, bufopts)
msp('n', '<LEADER>f', function() vim.lsp.buf.format { async = true } end, bufopts)
=======

map('n','hh',':UndotreeToggle<CR>',opt)
map('n','<LEADER>j',':AnyJump<CR>',opt)
map('n','nt',':NERDTree<CR>',opt)
map('n','tf',':NERDTreeToggle<CR>',opt)
map('n','th',':NERDTreeFind<CR>',opt)
>>>>>>> 44bdc6891bc2f264f148319c72ee6b0327201e8a
