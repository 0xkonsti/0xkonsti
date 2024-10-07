return {
	{
		"nvim-telescope/telescope.nvim",
		version = false,

		dependencies = { "nvim-lua/plenary.nvim" },

		keys = {
			{ "<leader>ff", "<cmd>Telescope find_files<CR>" },
			{ "<leader>fg", "<cmd>Telescope live_grep<CR>" },
			{ "<C-p>", "<cmd>Telescope git_files<CR>" },
			{
				"<leader>fs",
				function()
					local builtin = require("telescope.builtin")
					builtin.grep_string({ search = vim.fn.input("Grep > ") })
				end,
			},
		},
	},
}
