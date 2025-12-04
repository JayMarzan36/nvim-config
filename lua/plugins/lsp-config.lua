return {
   {
      "williamboman/mason.nvim",
      config = function()
         require("mason").setup()
      end,
   },

   {
      "williamboman/mason-lspconfig.nvim",
      dependencies = { "neovim/nvim-lspconfig" },
      config = function()
         local capabilities = require("cmp_nvim_lsp").default_capabilities()

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

            handlers = {
               -- Default handler for all servers
               function(server)
                  require("lspconfig")[server].setup({
                     capabilities = capabilities,
                  })
               end,

               -- Example: custom config for lua_ls
               ["lua_ls"] = function()
                  require("lspconfig").lua_ls.setup({
                     capabilities = capabilities,
                     settings = {
                        Lua = {
                           diagnostics = { globals = { "vim" } },
                           workspace = { checkThirdParty = false },
                        },
                     },
                  })
               end,
            },
         })

         vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover)
         vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition)
         vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
      end,
   },
}

