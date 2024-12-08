vim.g.mapleader=' '

vim.keymap.set('n','<leader>pv',vim.cmd.Ex);


vim.keymap.set('n', '<leader>pf', require('telescope.builtin').find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>ps', require('telescope.builtin').live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, { desc = 'Telescope help tags' })
