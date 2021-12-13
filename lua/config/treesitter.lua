require'nvim-treesitter.configs'.setup {
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "i",
            scope_incremental = "+",
            node_decremental = "-"
        }
    },
    highlight = {enable = true}
}
