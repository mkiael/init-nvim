local map = vim.api.nvim_set_keymap

map('n', '<leader>gb', ':ToggleBlameLine<CR>', {
    noremap = true,
    silent = true
})
