vim.opt.guicursor = ""
vim.opt.smartindent = true
vim.opt.scrolloff = 8

-- soft wrap text to window, broken by word
vim.opt.textwidth = 0
vim.opt.wrapmargin = 2
vim.opt.wrap = true
vim.opt.linebreak = true

-- this disables the mouse wheel (and also the arrow keys)
vim.keymap.set("", "<up>", "<nop>", { noremap = true })
vim.keymap.set("", "<down>", "<nop>", { noremap = true })
vim.keymap.set("i", "<up>", "<nop>", { noremap = true })
vim.keymap.set("i", "<down>", "<nop>", { noremap = true })
vim.opt.mouse = ""

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

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

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
