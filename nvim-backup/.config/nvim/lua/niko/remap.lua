vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<BS>", "^", { desc = "Move to the first non-black character" })

vim.keymap.set("n", "x", "\"_x")
vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "Q", "<nop>")
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>fr", function()
    vim.lsp.buf.format()
end)

-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "[c", function()
    require("treesitter-context").go_to_context(vim.v.count1)
end, { silent = true })

-- Debug
vim.keymap.set("n", "<leader>bb", "<cmd> DapToggleBreakpoint <CR>")
vim.keymap.set("n", "<leader>br", function()
    require('dap-python').test_method()
end)

-- Neo tree
vim.keymap.set("n", "<C-f>", "<cmd> Neotree toggle reveal right <CR>")
vim.keymap.set("n", "<C-b>", "<cmd> Neotree toggle buffers reveal right <CR>")

-- Buffers
vim.keymap.set("n", "<leader>x", "<cmd> bd <CR>")
-- vim.keymap.set("n", "<leader-Tab>", "<cmd> bnext <CR>")
-- vim.keymap.set("n", "<S-Tab>", "<cmd> bprev <CR>")

-- Quick Replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>cx", "<cmd>!chmod +x %<CR>", { silent = true })


-- Cellular Automation
vim.keymap.set("n", "<leader>ze", "<cmd> CellularAutomaton make_it_rain<CR>")
vim.keymap.set("n", "<leader>zw", "<cmd> CellularAutomaton game_of_life<CR>")
vim.keymap.set("n", "<leader>zq", "<cmd> CellularAutomaton scramble<CR>")

-- Obsidian
vim.keymap.set("n", "<leader>o", "<cmd> ObsidianQuickSwitch <CR>")
