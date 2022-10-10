vim.cmd('command! LspActiveClients :lua print(vim.inspect(vim.lsp.get_active_clients()))')
vim.cmd('command! LspRestart :lua vim.lsp.stop_client(vim.lsp.get_active_clients())')

local on_attach = function(client, bufnr)
    local function buf_set_keymap(...)
        vim.api.nvim_buf_set_keymap(bufnr, ...)
    end

    -- Mappings.
    local opts = {noremap = true, silent = true}

    -- See `:help vim.lsp.*` for documentation on any of the below functions
    buf_set_keymap('n', '<leader>f', '<cmd>lua vim.lsp.buf.declaration()<CR>',
                   opts)
    buf_set_keymap('n', "<leader>fd",
                   "<cmd>lua require('fzf-lua').lsp_definitions()<CR>",
                   {silent = true, noremap = true})
    buf_set_keymap('n', '<leader>fh', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', "<leader>fi",
                   "<cmd>lua require('fzf-lua').lsp_implementations()<CR>",
                   {silent = true, noremap = true})
    buf_set_keymap('n', "<leader>fr",
                   "<cmd>lua require('fzf-lua').lsp_references()<CR>",
                   {silent = true, noremap = true})
    buf_set_keymap('n', '<leader>fx', '<cmd>lua vim.lsp.buf.code_action()<CR>',
                   opts)
    buf_set_keymap('n', '<localleader>fs',
                   '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    buf_set_keymap('n', '<localleader>ft',
                   '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', '<space>e',
                   '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>',
                   opts)
    buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>',
                   opts)
    buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>',
                   opts)
    buf_set_keymap('n', 'g=', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
    buf_set_keymap('x', 'g=', '<cmd>lua vim.lsp.buf.range_formatting()<CR>',
                   opts)

end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local lsp = require 'lspconfig'

if vim.fn.executable('clangd') > 0 then
    lsp.clangd.setup {
        on_attach = on_attach,
        capabilities = capabilities,
        cmd = {
            "clangd", "--background-index=true", "--clang-tidy=true",
            "--completion-style=detailed", "--all-scopes-completion=true"
        }
    }
end

if vim.fn.executable('rls') > 0 then
    lsp.rls.setup {
        on_attach = on_attach,
        capabilities = capabilities,
        settings = {
            rust = {
                unstable_features = true,
                build_on_save = false,
                all_features = true
            }
        }
    }
end

if vim.fn.executable('rust_analyzer') > 0 then
    lsp.rust_analyzer.setup {on_attach = on_attach, capabilities = capabilities}
end

if vim.fn.executable('pyright') > 0 then
    lsp.pyright.setup {on_attach = on_attach, capabilities = capabilities}
end

if vim.fn.executable('typescript-language-server') > 0 then
   lsp.tsserver.setup {on_attach = on_attach, capabilities = capabilities}
end
