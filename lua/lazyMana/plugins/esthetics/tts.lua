return {
    {
        "mana-byte/time-to-sleep.nvim",
        config = function()
            local time_to_sleep = require("time-to-sleep")
            time_to_sleep.create_tab("alphabet", 'alphabet', 'markdown', '🍃', {
                "a",
                "b",
                "c",
            })
            time_to_sleep.setup({
                tts_toggle = false,
                lualine_tts_toggle = false,
                custom_journal_tabs = {
                    'alphabet'
                },
                journal_tabs = {
                    "emojis",
                    "history",
                    "titles",
                }
            })
        end
    }
}
