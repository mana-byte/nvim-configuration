return {
    {
        'stevearc/oil.nvim',
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
                },
            })

            vim.keymap.set("n", "-", "<cmd>Oil<CR>")
            vim.keymap.set("n", "è", oil.toggle_float)
        end
    },

}