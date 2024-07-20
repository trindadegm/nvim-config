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

require('neo-tree').setup({
  filesystem = {
    filtered_items = {
      visible = true, -- When this is set to true, hiding just means making it dim
      hide_dotfiles = false, -- So this will show fully visible
      hide_gitignored = true, -- And this will be dimmed out
    }
  }
})
