return {
    {
        'startup-nvim/startup.nvim',
        dependecies = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim"
        },
        config = function()
            local startup = require('startup')
            startup.setup({
                theme = 'evil',
                options = {
                    mapping_keys = true,
                    empty_line_between_mappings = true,
                },
                mappings = {
                    execute_command = "<CR>",
                    open_file = "o",
                    open_file_split = "<c-o>",
                    open_section = "<TAB>",
                    open_help = "?",
              },
            })
        end
    },

    -- {
    --     'goolord/alpha-nvim',
    --     config = function ()
    --         require'alpha'.setup(require'alpha.themes.dashboard'.config)
    --     end
    -- },
}
