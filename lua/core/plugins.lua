local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
	{
		"ellisonleao/gruvbox.nvim",
		"nvim-lualine/lualine.nvim",
		"nvim-tree/nvim-tree.lua",
		"nvim-tree/nvim-web-devicons",
		"mbbill/undotree",
		{
			{ 'williamboman/mason.nvim', config = true },
			{ 'williamboman/mason-lspconfig.nvim',
				{ 'j-hui/fidget.nvim', opts = {} },
				'folke/neodev.nvim',
			},
		},
		{
			'hrsh7th/nvim-cmp',
			{
				'L3MON4D3/LuaSnip',
				build = (function()
					if vim.fn.has 'win32' == 1 then
						return
					end
					return 'make install_jsregexp'
				end)(),
			},
			'saadparwaiz1/cmp_luasnip',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-path',
			'rafamadriz/friendly-snippets',
		},
		{
			'nvim-treesitter/nvim-treesitter',
			dependencies = {
				'nvim-treesitter/nvim-treesitter-textobjects',
			},
			build = ':TSUpdate',
		},
		{
			'nvim-telescope/telescope.nvim',
			tag = '0.1.5',
			dependencies = {
				'nvim-lua/plenary.nvim'
			}
		},
		{ 'folke/which-key.nvim', opts = {} },
		require 'core.autoformat'
	}
}

local opts = {}

require("lazy").setup(plugins, opts)

require 'core.lsp'
