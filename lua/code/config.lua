main_init = "~/.config/nvim/init.lua"
vo = vim.opt
vg = vim.g
va = vim.api

map = va.nvim_set_keymap
msp = vim.keymap.set -- if this code error, you need neovim 0.8 version
opt = {noremap = true, silent = true }
bufopts = { noremap=true, silent=true, buffer=bufnr }

lsp_flags = {
  debounce_text_changes = 150
}
