return {
    'rebelot/kanagawa.nvim',
    'folke/tokyonight.nvim',
    {
        'catppuccin/nvim',
        as = 'catppuccin',
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
