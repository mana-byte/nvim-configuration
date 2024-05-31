return {
    {
        "CopilotC-Nvim/CopilotChat.nvim",
        branch = "canary",
        dependencies = {
            { "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
            { "nvim-lua/plenary.nvim" },  -- for curl, log wrapper
        },
        opts = {
            debug = true, -- Enable debugging
            -- See Configuration section for rest
        },
        config = function()
            local copilotchat = require("CopilotChat")
            copilotchat.setup({
                mappings = {
                    show_user_selection = {
                        normal = 'gss',
                    },
                },
            })
            vim.keymap.set("n", "<leader>c", copilotchat.toggle)
        end
    },
}
