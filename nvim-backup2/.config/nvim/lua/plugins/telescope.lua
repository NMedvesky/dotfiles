return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")

			vim.keymap.set("n", "<leader>fd", builtin.buffers, {})
			vim.keymap.set("n", "<leader>fs", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fa", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>fo", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", {})

			--vim.keymap.set('n', '<leader>fo', function()
			--builtin.live_grep({ grep_open_files = true })
			--end)

			vim.keymap.set("n", "<C-p>", builtin.git_files, {})

			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
					file_browser = {
						theme = "ivy",
						hijack_netrw = true,
					},
				},
			})

            require("telescope").load_extension("ui-select")
			require("telescope").load_extension("file_browser")
		end,
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
}
