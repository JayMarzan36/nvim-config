return {
	{
		"olimorris/codecompanion.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
		opts = {
			interactions = {
				chat = {
					adapter = "ollama",
					model = "opencoder:8b",
				},
			},
			adapters = {
				ollama = function()
					return require("codecompanion.adapters").extend("ollama", {
						env = {
							url = "http://localhost:11434",
						},
					})
				end,
			},
			opts = {
				log_level = "ERROR",
			},
		},
		config = function(_, opts)
			require("codecompanion").setup(opts)

			local map = vim.keymap.set

			-- Chat with AI
			map({ "n", "v" }, "<leader>ac", "<cmd>CodeCompanionChat<cr>", { noremap = true, silent = true, desc = "AI Chat" })

			-- Toggle chat
			map({ "n", "v" }, "<leader>at", "<cmd>CodeCompanionChat Toggle<cr>", { noremap = true, silent = true, desc = "Toggle AI Chat" })

			-- Code refactoring
			map({ "n", "v" }, "<leader>ar", "<cmd>CodeCompanionChat Refactor<cr>", { noremap = true, silent = true, desc = "AI Refactor" })

			-- Generate code
			map({ "n", "v" }, "<leader>ag", "<cmd>CodeCompanionChat Generate<cr>", { noremap = true, silent = true, desc = "AI Generate" })

			-- Code explanation
			map({ "n", "v" }, "<leader>ae", "<cmd>CodeCompanionChat Explain<cr>", { noremap = true, silent = true, desc = "AI Explain" })

			-- Quick chat (inline)
			map({ "n", "v" }, "<leader>aq", "<cmd>CodeCompanionChat Quick<cr>", { noremap = true, silent = true, desc = "AI Quick Chat" })

			-- Actions
			map({ "n", "v" }, "<leader>aa", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true, desc = "AI Actions" })
		end,
	},
	{
		"MeanderingProgrammer/render-markdown.nvim",
		ft = { "markdown", "codecompanion" },
	},
}

