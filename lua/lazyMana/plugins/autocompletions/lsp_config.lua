return {
    {
        'williamboman/mason.nvim',
        config = function()
            require('mason').setup()         -- using defaults
        end
    },
    {
        'williamboman/mason-lspconfig.nvim',
        config = function()
            local mason_lsp_config = require('mason-lspconfig')
            mason_lsp_config.setup({
                ensure_installed = {"jdtls", "pylsp", "lua_ls", "vimls"},
            })

            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require('lspconfig')

            lspconfig.lua_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.jdtls.setup({
                capabilities = capabilities,
            })
            lspconfig.pylsp.setup({
                capabilities = capabilities,
            })
            lspconfig.vimls.setup({
                capabilities = capabilities,
            })

        end
    },
    {
        'neovim/nvim-lspconfig',
        config = function()
            vim.keymap.set('n', '<leader>a', vim.lsp.buf.code_action)
        end
    },
}
