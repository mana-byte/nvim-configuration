return {
    'nvim-treesitter/nvim-treesitter',
    config = function()
        local treesitter = require'nvim-treesitter.configs'
        treesitter.setup {
            ensure_installed = {"java", "c", "lua", "vim", "vimdoc", "json", "python", "comment", "sql", "markdown" },
            sync_install = false,
            ignore_install={},
            modules= {},
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        }
    end
}
