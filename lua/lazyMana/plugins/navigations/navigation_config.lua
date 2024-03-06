return {
    {
        'yorickpeterse/nvim-window',
        config = function()
            vim.keymap.set('n', '<leader>w', require('nvim-window').pick)
        end
    },
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
        },
        tag = '0.1.5',
        config = function()
            local telescope = require('telescope')
            telescope.setup {
                defaults = {
                    mappings = {
                        i = {
                            ["<C-h>"] = "which_key"
                        }
                    },
                    path_display = {
                        "truncate",
                    },
                }
            }
            telescope.load_extension("noice")
            vim.keymap.set('n', '<leader>ff', '<cmd> Telescope find_files<cr>')
            vim.keymap.set('n', '<leader>fg', '<cmd> Telescope git_files<cr>')
            vim.keymap.set('n', '<leader>fb', '<cmd> Telescope buffers<cr>')
            vim.keymap.set('n', '<leader>fh', '<cmd> Telescope git_status<cr>')
            vim.keymap.set('n', '<leader>fv', '<cmd> Telescope git_branches<cr>')
            vim.keymap.set('n', '<leader>fm', '<cmd> Telescope noice theme=dropdown<cr>')
        end
    },

    {
        'ggandor/leap.nvim',
        config = function()
            require('leap').create_default_mappings() -- using defaults
        end
    },
    'tpope/vim-repeat',
    -- {
    --     'nvim-tree/nvim-tree.lua',
    --     config = function()
    --         local status_ok, tree = pcall(require, "nvim-tree")
    --         if not status_ok then
    --             return
    --         end
    --
    --         vim.opt.termguicolors = true
    --
    --         tree.setup({
    --             sort = {
    --                 sorter = "case_sensitive",
    --             },
    --             view = {
    --                 width = 35,
    --             },
    --             renderer = {
    --                 group_empty = true,
    --             },
    --             filters = {
    --                 dotfiles = true,
    --             },
    --         })
    --
    --         vim.keymap.set('n', '<C-t>', '<CMD>:NvimTreeToggle<CR>')
    --         vim.keymap.set('n', '<C-d>', require('nvim-tree.api').tree.change_root_to_node)
    --     end
    -- }
}
