M = {
	"nvim-neorg/neorg",
	build = ":Neorg sync-parsers",
	opts = {
		load = {
			["core.defaults"] = {},
			["core.concealer"] = {
                config = {
                    folds = false,
                    icon_preset = "varied",
                    -- init_open_folds = "always",
                }
            },
			["core.export"] = {
                config = {
                    export_dir = "~/notes/"
                }
            },
			["core.export.markdown"] = {},
			["core.dirman"] = {
				config = {
					workspaces = {
						notes = "~/notes",
					},
					default_workspace = "notes",
					-- open_last_workspace = true,
				},
			},
			["core.completion"] = {
				config = {
					engine = "nvim-cmp",
				},
			},
		},
	},
}

vim.keymap.set("n", "<LocalLeader>ni", "<cmd>Neorg index<CR>", {})
vim.keymap.set("n", "<LocalLeader>nj", "<cmd>Neorg journal<CR>", {})
vim.keymap.set("n", "<LocalLeader>nt", "<cmd>Neorg journal today<CR>", {})

vim.api.nvim_create_autocmd("Filetype", {
	pattern = "norg",
	callback = function()
		-- vim.keymap.set("n", "my-key-here", "<Plug>(neorg.pivot.list.toggle)", { buffer = true })
        vim.opt.spell = true
        vim.opt.conceallevel = 2
        vim.keymap.set("n", "<LocalLeader>r", "<cmd>Neorg toc right<CR>", {})
	end,
})

return { M }
