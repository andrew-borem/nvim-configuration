require('lualine').setup {
	options = {
		icons_enabled = true,
		theme = 'catppuccin',
	},
	sections = {
		lualine_a = {
			{
				'filename',
				path = 1
			}
		},
		lualine_b = { 'branch', 'diff', 'diagnostics' },
		lualine_c = { 'mode', require('pomodoro').statusline },
		lualine_x = { 'filetype' },
		lualine_y = { 'filesize', 'fileformat' },
		lualine_z = { 'location' }

	}
}
