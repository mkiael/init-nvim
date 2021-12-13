local map = vim.api.nvim_set_keymap

require'hop'.setup {keys = 'asdfghjkl,qwertyuiopzxcvbnmj'}

map('n', 's',
    "<cmd>lua require'hop'.hint_char2({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false })<CR>",
    {})
map('n', 'S',
    "<cmd>lua require'hop'.hint_char2({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false })<CR>",
    {})
