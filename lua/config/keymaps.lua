-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set

map("n", "<leader>çp", function()
  local lsp = require("lspconfig")
  local client = vim.lsp.get_active_clients({ name = "ltex" })[1]

  if client then
    client.config.settings.ltex.language = "pt-BR"
    client.notify("workspace/didChangeConfiguration", { settings = client.config.settings })
    vim.notify("LTeX language set")
  else
    vim.notify("Could not find LTeX client")
  end
end, { desc = "Set LTeX language to pt-BR" })

map("n", "<leader>çe", function()
  local lsp = require("lspconfig")
  local client = vim.lsp.get_active_clients({ name = "ltex" })[1]

  if client then
    client.config.settings.ltex.language = "en-US"
    client.notify("workspace/didChangeConfiguration", { settings = client.config.settings })
    vim.notify("LTeX language set")
  else
    vim.notify("Could not find LTeX client")
  end
end, { desc = "Set LTeX language to en-US" })

map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
