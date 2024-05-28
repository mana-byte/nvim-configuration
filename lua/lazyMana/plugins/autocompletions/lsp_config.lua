return {
    {
        'williamboman/mason.nvim',
        config = function()
            require('mason').setup()
        end
    },
    {
        'williamboman/mason-lspconfig.nvim',
        config = function()
            local mason_lsp_config = require('mason-lspconfig')
            mason_lsp_config.setup({
                ensure_installed = { "jdtls", "pylsp", "lua_ls", "vimls", "clangd", "tsserver", 'arduino_language_server', 'html', 'biome', 'intelephense' },
            })

            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require('lspconfig')
            -- WARNING: SET UP LANGUAGE SERVER HERE

            lspconfig.lua_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.clangd.setup({
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
            lspconfig.tsserver.setup({
                capabilities = capabilities,
            })
            lspconfig.arduino_language_server.setup({
                capabilities = capabilities,
            })
            lspconfig.html.setup({
                capabilities = capabilities,
            })
            lspconfig.biome.setup({
                capabilities = capabilities,
                single_file_support = true,
                -- root_dir = lspconfig.util.root_pattern('biome.json', 'biome.jsonc'),
            })
            lspconfig.intelephense.setup({
                capabilities = capabilities,
                -- root_dir = lspconfig.util.root_pattern("composer.json", ".git"),
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
