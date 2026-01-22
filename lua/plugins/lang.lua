-- broad language support: treesitter + lsp + formatting + completion helpers
-- drop this file into: ~/.config/nvim/lua/plugins/lang.lua

return {
  -- syntax + highlighting (treesitter)
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}

      -- add lots of common languages
      vim.list_extend(opts.ensure_installed, {
        -- basics
        "bash",
        "lua",
        "vim",
        "vimdoc",
        "regex",
        "markdown",
        "markdown_inline",

        -- web
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "jsonc",
        "yaml",
        "toml",

        -- c/cpp/embedded
        "c",
        "cpp",
        "cmake",
        "make",
        "asm",

        -- scripting
        "python",
        "go",
        "rust",
        "java",
        "kotlin",
        "c_sharp",
        "php",
        "ruby",

        -- misc
        "dockerfile",
        "gitignore",
        "gitattributes",
        "gitcommit",
        "diff",
        "sql",
      })

      opts.auto_install = true
      opts.highlight = opts.highlight or {}
      opts.highlight.enable = true
      opts.indent = opts.indent or {}
      opts.indent.enable = true
    end,
  },

  -- lsp servers via mason (auto-install)
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}

      vim.list_extend(opts.ensure_installed, {
        -- lua
        "lua-language-server",

        -- web/json
        "typescript-language-server",
        "eslint-lsp",
        "json-lsp",
        "html-lsp",
        "css-lsp",

        -- python
        "pyright",

        -- go / rust
        "gopls",
        "rust-analyzer",

        -- c/cpp
        "clangd",

        -- misc
        "bash-language-server",
        "yaml-language-server",
        "dockerfile-language-server",
      })
    end,
  },

  -- formatting tools (optional but nice)
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      opts.formatters_by_ft.lua = { "stylua" }
      opts.formatters_by_ft.python = { "ruff_format" }
      opts.formatters_by_ft.javascript = { "prettier" }
      opts.formatters_by_ft.typescript = { "prettier" }
      opts.formatters_by_ft.json = { "prettier" }
      opts.formatters_by_ft.yaml = { "prettier" }
      opts.formatters_by_ft.html = { "prettier" }
      opts.formatters_by_ft.css = { "prettier" }
      opts.formatters_by_ft.markdown = { "prettier" }
    end,
  },

  -- make sure formatters are available in mason too
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "prettier",
        "ruff",
      })
    end,
  },
}
