return {
    'gorbit99/codewindow.nvim',
    config = function()
        local codewindow = require('codewindow')
        codewindow.setup() -- using defaults
        codewindow.apply_default_keybinds() -- using defaults
    end

}
