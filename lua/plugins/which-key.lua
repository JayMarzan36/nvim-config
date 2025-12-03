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
				{ "<leader>fb", desc = "Find buffers" },
				{ "<leader>fh", desc = "Help tags" },
				{ "<leader>fs", desc = "Fuzzy search buffer" },
				{ "<leader>fo", desc = "Old files" },
				{ "<leader>fc", desc = "Format Code" },
				{ "<leader>fd", desc = "Diagnostics" },
				{ "<leader>b", group = "buffers" },
				{ "<leader>bn", desc = "New buffer" },
				{ "<leader>bp", desc = "Previous buffer" },
				{ "<leader>s", group = "splits" },
				{ "<leader>e", desc = "Toggle file explorer" },
				{ "<leader>n", desc = "New buffer" },
				{ "<leader>d", desc = "Delete buffer" },
				{ "<leader>ca", desc = "Code Actions" },
				{ "<leader>h", desc = "Hover" },
				{ "<leader>cd", desc = "Code Definition" },
				{ "<leader>swh", desc = "Split Window Horizontally" },
				{ "<leader>swv", desc = "Split Window Vertically" },
				{ "<leader>c ", desc = "Close Current Window" },
				{ "<leader>gr", desc = "Go Right" },
				{ "<leader>gl", desc = "Go Left" },
				{ "<leader>gu", desc = "Go Up" },
				{ "<leader>gd", desc = "Go Down" },
				{ "g", group = "goto" },
				{ "gd", desc = "Definition" },
				{ "gr", desc = "References" },
				{ "gi", desc = "Implementation" },
				{ "[", group = "prev" },
				{ "[d", desc = "Diagnostic" },
				{ "]", group = "next" },
				{ "]d", desc = "Diagnostic" },
				{ "K", desc = "Hover" },
			})
		end,
	},
}
