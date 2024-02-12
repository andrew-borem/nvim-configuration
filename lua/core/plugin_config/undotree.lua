vim.keymap.set("n", "<leader>ut", vim.cmd.UndotreeToggle)

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.api.nvim_exec2([[
		let g:undotree_SetFocusWhenToggle = 1	
	]],
	{}
)
