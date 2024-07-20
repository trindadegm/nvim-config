vim.o.guifont = "Source Code Pro:h11"
vim.g.editorconfig = true
vim.g.autoformat = false

vim.api.nvim_create_user_command("Format", function(args)
  local range = nil
  if args.count ~= -1 then
    local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
    range = {
      start = { args.line1, 0 },
      ["end"] = { args.line2, end_line:len() },
    }
  end
  require("conform").format({ async = true, lsp_fallback = true, range = range })
end, { range = true })

return {
  { "jay-babu/mason-nvim-dap.nvim" },
  { "ellisonleao/gruvbox.nvim" },
  { "kepano/flexoki-neovim", name = "flexoki" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  { "echasnovski/mini.pairs", enabled = false },
  -- { "stevearc/conform.nvim",  enabled = false },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "typescript",
        "rust",
        "vim",
        "yaml",
      },
    },
  },
  {
    "numToStr/Comment.nvim",
    opts = {
      -- add any options here
    },
    lazy = false,
  },
}
