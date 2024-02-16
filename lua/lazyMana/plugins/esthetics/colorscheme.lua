return {
    'rebelot/kanagawa.nvim',
    'folke/tokyonight.nvim',
    {
        'catppuccin/nvim',
        lazy = false,
        priority = 1000,
        as = 'catppuccin',
        config = function()
            vim.cmd('colorscheme catppuccin')
        end
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup({
                options = { theme = 'catppuccin' },
            })
        end
    }

}
