-- ============================================================================
-- Which-Key - Keybinding Help
-- ============================================================================

return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			delay = 100,
			plugins = {
				marks = true,
				registers = true,
				spelling = {
					enabled = true,
					suggestions = 9,
				},
				presets = {
					operators = true,
					motions = true,
					text_objects = true,
					windows = true,
					nav = true,
					z = true,
					g = true,
				},
			},
			layout = {
				height = { min = 4, max = 25 },
				width = { min = 20, max = 50 },
				spacing = 3,
				align = "left",
			},
			show_help = true,
			show_keys = true,
			win = {
				border = "single",
				padding = { 1, 2 },
			},
		},
		config = function(_, opts)
			local wk = require("which-key")
			wk.setup(opts)

			-- Register keybinding groups and descriptions using new spec format
			wk.add({
				{ "<leader>ft", group = "File Tree" },
				{ "<leader>ff", desc = "Find files" },
				{ "<leader>lg", desc = "Live grep" },
				{ "<leader>fc", desc = "Format Code" },
				{ "<leader>ca", desc = "Code Actions" },
				{ "<leader>h", desc = "Hover" },
				{ "<leader>cd", desc = "Code Definition" },
				{ "<leader>swh", desc = "Split Window Horizontally" },
				{ "<leader>swv", desc = "Split Window Vertically" },
				{ "<leader>c ", desc = "Close Current Window" },
				{ "<leader>mr", desc = "Move Cursor Right" },
				{ "<leader>ml", desc = "Move Cursor Left" },
				{ "<leader>mu", desc = "Move Cursor Up" },
				{ "<leader>md", desc = "Move Cursor Down" },
			})
		end,
	},
}
