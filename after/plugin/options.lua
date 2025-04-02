vim.api.nvim_create_autocmd("BufEnter", {
    pattern =  {
        "*.lua",
        "*.html",
        "*.scala",
        "*.sbt",
    },
    callback = function()
        vim.cmd "set tabstop=4"
        vim.cmd "set shiftwidth=4"
    end,
})

vim.api.nvim_create_autocmd("BufEnter", {
    callback = function()
        vim.cmd([[
            hi Comment cterm=NONE gui=NONE
            hi Keyword cterm=NONE gui=NONE
            hi Type cterm=NONE gui=NONE
            hi Function cterm=NONE gui=NONE
        ]])
    end,
})



