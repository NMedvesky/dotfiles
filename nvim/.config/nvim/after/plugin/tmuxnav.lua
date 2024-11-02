local tmux_nav = require("nvim-tmux-navigation")

tmux_nav.setup {}

-- Tmux Nav
vim.keymap.set("n", "<C-k>", tmux_nav.NvimTmuxNavigateUp)
vim.keymap.set("n", "<C-h>", tmux_nav.NvimTmuxNavigateLeft)
vim.keymap.set("n", "<C-l>", tmux_nav.NvimTmuxNavigateRight)
vim.keymap.set("n", "<C-j>", tmux_nav.NvimTmuxNavigateDown)
