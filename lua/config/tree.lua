vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeToggle<CR>', {
    noremap = true
})
vim.api.nvim_set_keymap('n', '<F2>', ':NvimTreeFindFile<CR>', {
    noremap = true
})
vim.api.nvim_set_keymap('n', '<F5>', ':NvimTreeRefresh<CR>', {
    noremap = true
})

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require'nvim-tree'.setup({
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true
    },
    renderer = {
        group_empty = true,
        symlink_destination = false,
    },
    filters = {
        dotfiles = true
    }
})
