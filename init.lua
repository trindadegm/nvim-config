-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.filetype.add({
  extension = {
    vert = "glsl",
    frag = "glsl",
  },
})

require('lspconfig').ltex.setup({
  filetypes = { "markdown", "md" },
  flags = { debounce_text_changes = 300 },
  settings = {
    ltex = {
      -- language = "en"
      language = "pt-BR"
    }
  },
  on_attach = function()
    vim.cmd("set nospell")
  end,
})
