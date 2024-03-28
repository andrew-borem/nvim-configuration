vim.opt.guicursor = ""
vim.opt.smartindent = true
vim.opt.scrolloff = 8

-- soft wrap text to window, broken by word
vim.opt.textwidth = 0
vim.opt.wrapmargin = 2
vim.opt.wrap = true
vim.opt.linebreak = true

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.scrolloff = 999

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

vim.opt.tabstop = 3
vim.opt.shiftwidth = 3
vim.opt.shiftround = true
vim.opt.expandtab = false

vim.opt.number = true
vim.opt.relativenumber = true

-- clear search highlight on return
vim.keymap.set('n', '<leader>h', ':noh<CR><CR>')
vim.keymap.set('n', '<leader>fphp', ':!pint % <CR>')
