require('telescope').setup {
    defaults = {
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        layout_config = {
            horizontal = {mirror = false, prompt_position = "top"},
            vertical = {mirror = false}
        },

        file_ignore_patterns = {},
        file_sorter = require'telescope.sorters'.get_fuzzy_file,
        generic_sorter = require'telescope.sorters'.get_generic_fuzzy_sorter,
        file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
        grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
        qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new
    },

    extensions = {
        fzf = {
            fuzzy = true, -- false will only do exact matching
            override_generic_sorter = false, -- override the generic sorter
            override_file_sorter = true, -- override the file sorter
            case_mode = "smart_case" -- or "ignore_case" or "respect_case". the default case_mode is "smart_case"
        }
    }
}

require('telescope').load_extension('fzf')

local map = vim.api.nvim_set_keymap
map('n', "<C-p>", "<cmd>lua require('telescope.builtin').find_files()<CR>",
    {silent = true, noremap = true})
map('n', "<leader>r", "<cmd>lua require('telescope.builtin').live_grep()<CR>",
    {silent = true, noremap = true})
map('n', "<leader>rw",
    "<cmd>lua require('telescope.builtin').grep_string()<CR>",
    {silent = true, noremap = true})
