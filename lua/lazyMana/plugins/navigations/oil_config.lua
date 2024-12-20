return {
    {
        'stevearc/oil.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        config = function()
            local oil = require('oil')
            oil.setup({
                default_file_explorer = true,
                skip_confirm_for_simple_edits = true,
                float = {
                    padding = 6,
                    max_width = 40,
                    max_height = 0,
                    border = "rounded",
                    win_options = {
                        winblend = 0,
                    },
                    override = function(conf)
                        return conf
                    end,
                },
                keymaps = {
                    ["<esc>"] = "actions.close",
                    ["<C-p>"] = "actions.preview",
                    ["tg"] = "actions.toggle_hidden",
                },
                view_options = {
                    show_hidden = true,
                }
            })
            vim.keymap.set("n", "é", oil.open)
            vim.keymap.set("n", "-", oil.toggle_float)
        end
    },
}
