require("telescope").setup {
    pickers = {
        colorscheme = {
            enable_preview = true
        }
    },
    extensions = {
        file_browser = {
            theme = "ivy",
            -- disables netrw and use telescope-file-browser in its place
            hijack_netrw = true,
        },
    },
}

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>fd', builtin.buffers, {})
vim.keymap.set('n', '<leader>fs', builtin.find_files, {})
vim.keymap.set('n', '<leader>fa', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fo', ":Telescope file_browser path=%:p:h select_buffer=true<CR>", {})

--vim.keymap.set('n', '<leader>fo', function()
--builtin.live_grep({ grep_open_files = true })
--end)

vim.keymap.set('n', '<C-p>', builtin.git_files, {})

require("telescope").load_extension "file_browser"

--if vim.fn.argv() == '' then builtin.find_files() end

-- vim.keymap.set('n', 'fs', function()
-- 	builtin.grep_string({ search = vim.fn.input("Grep > ") });
-- end)
