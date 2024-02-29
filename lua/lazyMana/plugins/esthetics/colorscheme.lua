local function name()
    return "Mana"
end
return {
    -- 'rebelot/kanagawa.nvim',
    -- 'folke/tokyonight.nvim',
    {
        'catppuccin/nvim',
        lazy = false,
        priority = 1000,
        as = 'catppuccin',
        config = function()
            require('catppuccin').setup({
                term_colors = true,
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    nvimtree = true,
                    treesitter = true,
                    notify = true,
                    noice = true,
                    lsp_trouble = true,
                    barbar = true,
                    native_lsp = {
                        enabled = true,
                        virtual_text = {
                            errors = { "italic" },
                            hints = { "italic" },
                            warnings = { "italic" },
                            information = { "italic" },
                        },
                        underlines = {
                            errors = { "underline" },
                            hints = { "underline" },
                            warnings = { "underline" },
                            information = { "underline" },
                        },
                        inlay_hints = {
                            background = true,
                        },
                    },
                    telescope = {
                        enabled = true,
                    },
                },
            })
            vim.cmd('colorscheme catppuccin')
        end
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup({
                options = {
                    theme = 'catppuccin',
                    component_separators = { left = '', right = '' },
                    section_separators = { left = '', right = '' },
                },
                sections = {
                    lualine_a = { 'buffers' },
                    lualine_b = { 'diagnostics', 'branch' , 'diff'},
                    lualine_c = { 'filesize' },
                    lualine_x = {},
                    lualine_y = { 'progress', 'os.date("%a at %X")', },
                    lualine_z = { name, 'mode' }
                },
            })
        end
    }
}
