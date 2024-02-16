return {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
    },
    config = function()
        local noice = require("noice")
        -- FIX:
        -- `vim.lsp.handlers["textDocument/hover"]` has been overwritten by another plugin?
        -- Either disable the other plugin or set `config.lsp.hover.enabled = false` in your **Noice** config.
        --   - plugin: unknown
        --   - file: D:\Program file\dev\nvim\share\nvim\runtime/lua/vim/lsp.lua
        --   - line: 2318

        noice.setup({
            lsp = {
                override = {
                    ["vim.lsp.util.convert_input_to_markdown_lines"] = false,
                    ["vim.lsp.util.stylize_markdown"] = false,
                    ["cmp.entry.get_documentation"] = false,
                },
                hover = {
                    enable = false,
                },
            },
        })
        vim.keymap.set("n", "<leader>nd", "<cmd>NoiceDismiss<cr>")
    end,
    presets = {
        long_message_to_split = true, -- long messages will be sent to a split
    },
}
