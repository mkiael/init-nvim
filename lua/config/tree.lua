vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeToggle<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<F2>', ':NvimTreeFindFile<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<F5>', ':NvimTreeRefresh<CR>', {noremap = true})

require'nvim-tree'.setup{}
