require('pomodoro').setup({
	time_work = 25,
	time_break_short = 5,
	time_break_long = 20,
	timers_to_long_break = 4
})

vim.keymap.set('n', '<leader>pos', ':PomodoroStart<CR>', { desc = '[po]modoro [s]tart' })
vim.keymap.set('n', '<leader>postop', ':PomodoroStop<CR>', { desc = '[po]modoro [stop]' })
