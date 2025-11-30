return {
    {
   'williamboman/mason.nvim',
    config = function()
        require('mason').setup()
    end
    },
    {
    'williamboman/mason-lspconfig.nvim',
    config = function()
        require('mason-lspconfig').setup({
            ensure_installed = {
                    "lua_ls",
                    "pyright",
                    "jdtls",
                    "ts_ls",
                    "html",
                    "cssls",
                    "clangd",
                }
        })
    end
    },
    {
    'neovim/nvim-lspconfig',
    config = function()
        local lspconfig = require('lspconfig')
        vim.keymap.set('n', '<leader>h', vim.lsp.buf.hover, {})
        vim.keymap.set('n', '<leader>cd', vim.lsp.buf.definition, {})
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
        lspconfig.lua_ls.setup({})
        lspconfig.pyright.setup({})
        lspconfig.jdtls.setup({})
        lspconfig.ts_ls.setup({})
        lspconfig.html.setup({})
        lspconfig.cssls.setup({})
        lspconfig.clangd.setup({})
    end
    },
}
