vim.cmd("set expandtab")
vim.cmd("set number")
vim.cmd("set tabstop=3")

vim.cmd("set softtabstop=3")

vim.cmd("set shiftwidth=3")

vim.g.mapleader = " "

-- ########################################## Window Manipulation Keybinds
-- Split Window
vim.keymap.set('n', '<leader>swh', ':split<CR>')
vim.keymap.set('n', '<leader>swv', ':vsplit<CR>')
-- Close Current Window
vim.keymap.set('n', '<leader>cw', ':close<CR>')
-- ########################################## Move Cursor
vim.keymap.set('n' , '<leader>mr', ':wincmd l<CR>')
vim.keymap.set('n', '<leader>ml', ':wincmd w<CR>')
vim.keymap.set('n', '<leader>mu', ':wincmd j<CR>')
vim.keymap.set('n', '<leader>md', ':wincmd k<CR>')
-- ########################################## 


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath
    })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
