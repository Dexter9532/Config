-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>rf", ":!ruff check --fix %<CR>", { desc = "Run Ruff auto-fix" })

-- Go to end of line with '9'
vim.keymap.set("n", "9", "$", { noremap = true, silent = true, desc = "Go to end of line" })

-- Buffer switching with Shift+J / Shift+K (Bufferline)
vim.keymap.set("n", "<S-j>", "<cmd>BufferLineCycleNext<CR>", { desc = "Next buffer", silent = true, noremap = true })
