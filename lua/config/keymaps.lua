-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local telescope_builtin = require("telescope.builtin")

-- local function map(mode, left, right)
--   vim.api.nvim_set_keymap(mode, left, right, { noremap = true, silent = true })
-- end
vim.keymap.set("n", "<Leader>fs", telescope_builtin.lsp_document_symbols, {})
