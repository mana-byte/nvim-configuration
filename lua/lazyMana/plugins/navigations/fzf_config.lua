return {
    {
        'junegunn/fzf',
        setup = function()
            vim.cmd("silent! FzfInstall")
        end
    },
    {
        'junegunn/fzf.vim',
    }
}
