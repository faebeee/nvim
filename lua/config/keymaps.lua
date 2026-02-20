-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { desc = "Explorer" })
vim.keymap.set("n", "<leader>E", ":Neotree reveal<CR>", { desc = "Explorer: Reveal current file" })

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader><leader>", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

-- LSP keymaps
--vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
--vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
