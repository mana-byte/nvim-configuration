return {
	{
        'ray-x/guihua.lua',
        setup = function()
            vim.cmd("cd lua/fzy && make")
        end
	},
    {
        'ray-x/navigator.lua',
        config = function()
            require'navigator'.setup()
        end
    }
}
