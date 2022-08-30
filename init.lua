require('settings')
require('mappings')

local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
        'git', 'clone', 'https://github.com/wbthomason/packer.nvim',
        install_path
    })
    execute 'packadd packer.nvim'
end

require('packer').startup {
    function()
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'

        use {
           'morhetz/gruvbox',
           config = [[ require('config/gruvbox') ]]
        }

        use 'mhinz/vim-sayonara'

        use 'arkav/lualine-lsp-progress'

        use 'kyazdani42/nvim-web-devicons'

        use {
           'ray-x/lsp_signature.nvim',
            config = [[ require('config/signature') ]]
        }

        use {
            'hoob3rt/lualine.nvim',
            config = [[ require('config/lualine') ]]
        }

        use {
            'kyazdani42/nvim-tree.lua',
            config = [[ require('config/tree') ]]
        }

        use {
            'phaazon/hop.nvim',
            branch = 'v1',
            config = [[ require('config/hop') ]]
        }

        use {
            'nvim-treesitter/nvim-treesitter',
            run = ':TSUpdate',
            config = [[ require('config/treesitter') ]]
        }

        use { 'junegunn/fzf', run = './install --bin', }

        use {
            'ibhagwan/fzf-lua',
            config = [[ require('config/fzf-lua') ]]
        }

        use {
            'neovim/nvim-lspconfig',
            config = [[ require('config/lspconfig') ]]
        }

        use {
            'hrsh7th/nvim-cmp',
            requires = {
                'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-path', 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-cmdline'
            },
            config = [[ require('config/cmp') ]]
        }

        use 'saadparwaiz1/cmp_luasnip'

        use {
            'L3MON4D3/LuaSnip',
            config = [[ require('config/luasnip') ]]
        }

        use {
           'sakhnik/nvim-gdb',
            config = [[ require('config/gdb') ]]
        }

        use {
           'tveskag/nvim-blame-line',
           config = [[ require('config/blame-line') ]]
        }

        use 'tpope/vim-fugitive'

    end,
    config = {
        -- Move to lua dir so impatient.nvim can cache it
        compile_path = vim.fn.stdpath('config') .. '/plugin/packer_compiled.lua'
    }
}
