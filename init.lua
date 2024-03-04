if vim.loader then
    vim.loader.enable()
end
vim.g.mapleader = ','
vim.opt.number = true
vim.opt.autoindent = true
vim.opt.autoread = true
vim.opt.mouse = 'a'
vim.opt.encoding = 'utf-8'
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.foldmethod = 'indent'
vim.opt.foldlevel = 99
vim.opt.relativenumber = true

require("lazyMana.lazy")

vim.keymap.set('n', '<c-l>', ':vsplit<CR>', { silent = true })
vim.keymap.set('n', '<leader>lp', '<cmd> vsplit <bar> split ')
