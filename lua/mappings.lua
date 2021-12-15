local map = vim.api.nvim_set_keymap

-- Exit insert mode with jj
map('i', 'jj', '<Esc>', {noremap = true})

-- Next/prev buffer
map('n', '<Tab>', ':bn<CR>', {noremap = true, silent = true})
map('n', '<S-Tab>', ':bp<CR>', {noremap = true, silent = true})

-- Switch between the most recently used buffers
map('n', ',,', '<C-^>', {noremap = true})

-- Save all files
map('n', '<leader>s', ':wall<CR>', {noremap = true})

-- Close current buffer and keep layout
map('n', '<leader>q', ':Sayonara!<CR>', {noremap = true})
-- Close current buffer and windows
map('n', '<leader>Q', ':Sayonara<CR>', {noremap = true})

-- Allows you to easily change the current word and all occurrences
map('n', '<leader>cw', ':%s/<C-r><C-w>/<C-r><C-w>', {noremap = true})
map('v', '<leader>cw', 'y:%s/<C-r>"/<C-r>"', {noremap = true})

-- Navigate between panes
map('n', '<C-j>', '<C-w><C-j>', {noremap = true})
map('n', '<C-k>', '<C-w><C-k>', {noremap = true})
map('n', '<C-l>', '<C-w><C-l>', {noremap = true})
map('n', '<C-h>', '<C-w><C-h>', {noremap = true})

-- Add blank line below/above
map('n', '<A-n>', ':set paste<CR>m`o<Esc>``:set nopaste<CR>', {noremap = true})
map('n', '<A-m>', ':set paste<CR>m`O<Esc>``:set nopaste<CR>', {noremap = true})

-- Clear search hightlight
map('n', '<leader>hs', ':nohlsearch<CR>', {noremap = true, silent = true})
