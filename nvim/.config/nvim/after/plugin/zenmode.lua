require("zen-mode").setup {
    plugins = {
        twilight = { enabled = false }
    }
}


vim.keymap.set("n", "<leader>zz", function()
    require("zen-mode").setup {
        window = {
            width = 90,
            options = {}
        },
        plugins = {
            twilight = { enabled = false },
        },
    }
    require("zen-mode").toggle()
    vim.wo.wrap = true
    vim.wo.number = true
    vim.wo.rnu = true
    ColorMyPencils()
end)

vim.keymap.set("n", "<leader>zl", function()
    require("zen-mode").setup {
        window = {
            width = 120,
            options = {}
        },
        plugins = {
            twilight = { enabled = false }
        },
    }
    require("zen-mode").toggle()
    -- vim.api.nvim_cmd("ScrollbarToggle", {})
    -- vim.api.nvim_create_cmd("togbar", {
    --     command="ScrollbarToggle"
    -- })
    vim.wo.wrap = true
    vim.wo.number = true
    vim.wo.rnu = true
    ColorMyPencils()
end)

vim.keymap.set("n", "<leader>zZ", function()
    require("zen-mode").setup {
        window = {
            width = 80,
            options = {}
        },
        plugins = {
            twilight = { enabled = false }
        },
    }
    require("zen-mode").toggle()
    vim.wo.wrap = true
    vim.wo.number = false
    vim.wo.rnu = false
    vim.opt.colorcolumn = "0"
    ColorMyPencils()
end)

vim.keymap.set("n", "<leader>zt", "<cmd> Twilight <CR>")
