-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim

return {
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "catppuccin",
    },
  },
  {
    "hrsh7th/nvim-cmp",
    enabled = true,
    dependencies = { "hrsh7th/cmp-emoji" },
    -- opts = function(_, opts)
    --   table.insert(opts.sources, { name = "emoji" })
    -- end,
  },
  {
    "rafamadriz/friendly-snippets",
    enabled = false,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = false,
      },
    },
    config = function()
      local lspconfig = require("lspconfig")

      lspconfig.ltex.setup({
        settings = {
          ltex = {
            checkFrequency = "save",
            language = "en-US",
          },
        },
      })

      --vim.notify("Ran through LSP configurations!")
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "rust",
        "cpp",
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
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
      {
        "mason-org/mason.nvim",
        opts = {
          ensure_installed = {
            "stylua",
            "shellcheck",
            "shfmt",
            "flake8",
          },
        },
      },
    },
  },
  {
    "snacks.nvim",
    opts = {
      scroll = { enabled = false },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    cmd = "Neotree",
    opts = {
      filesystem = {
        filtered_items = {
          visible = true, -- This means hiding means making id dim
          hide_dotfiles = false,
          hide_gitignored = true,
        },
      },
    },
  },
  {
    "nvim-mini/mini.pairs",
    enabled = true,
  },
  {
    "mfussenegger/nvim-dap",
    enabled = true,
  },
}
