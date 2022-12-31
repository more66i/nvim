main_init = "~/.config/nvim/init.lua"
vo = vim.opt
vg = vim.g
va = vim.api

map = va.nvim_set_keymap
<<<<<<< HEAD
msp = vim.keymap.set -- if this code error, you need neovim 0.8 version
opt = {noremap = true, silent = true }
bufopts = { noremap=true, silent=true, buffer=bufnr }

lsp_flags = {
  debounce_text_changes = 150
}
=======
opt = {noremap = true, silent = true }
>>>>>>> 44bdc6891bc2f264f148319c72ee6b0327201e8a
