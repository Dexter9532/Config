return {
  {
    "Mofiqul/vscode.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("vscode").setup({
        transparent = false,
        italic_comments = true,
      })
      require("vscode").load("dark") -- eller "light"
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "vscode" },
  },
}
