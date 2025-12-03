return {
   {
      "williamboman/mason.nvim",
      config = function()
         require("mason").setup()
      end,
   },
   {
      "williamboman/mason-lspconfig.nvim",
      config = function()
         require("mason-lspconfig").setup({
            ensure_installed = {
               "lua_ls",
               "pyright",
               "jdtls",
               "ts_ls",
               "html",
               "cssls",
               "clangd",
            },
         })
      end,
   },
   {
      "neovim/nvim-lspconfig",
      config = function()
         local lsps = {
            { "lua_ls" },
            { "pyright" },
            { "jdtls" },
            { "ts_ls" },
            { "html" },
            { "cssls" },
            { "clangd" },
         }
         vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, {})
         vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, {})
         vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

         for _, lsp in pairs(lsps) do
            local name, config = lsp[1], lsp[2]
            vim.lsp.enable(name)
            if config then
               vim.lsp.config(name, config)
            end
         end
      end,
   },
}
