require 'nvim-treesitter.configs'.setup {
	sync_install = false,
	ensure_installed = "all",
	auto_install = true,
	ignore_install = {},
	modules = {},
	highlight = {
		enable = true,
	},
	indent = {
		enable = true
	}
}
