return {
    'honza/vim-snippets',
    {
        'SirVer/ultisnips',
        config = function()
            vim.g.UltiSnipsExpandTrigger = '<tab>'
            vim.g.UltiSnipsJumpForwardTrigger = '<c-b>'
            vim.g.UltiSnipsJumpBackwardTrigger = '<c-z>'
        end
    },
    'VundleVim/Vundle.vim',
}
