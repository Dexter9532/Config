return {
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    keys = function()
      local builtin = require("telescope.builtin")

      return {
        {
          "<leader>ff",
          function()
            builtin.find_files({
              hidden = true, -- visa dotfiles
              no_ignore = true, -- ignorera inte .gitignore
              file_ignore_patterns = {
                "%.venv/", -- göm .venv
                "%.git/",
                "%.ruff_cache/",
                "%.pytest_cache/",
                "%__pycache__/",
              },
            })
          end,
          desc = "Find files (incl. dotfiles, hide .venv)",
        },
        { "<leader>fg", builtin.live_grep, desc = "Search in files" },
        { "<leader>fb", builtin.buffers, desc = "Find buffers" },
        { "<leader>fh", builtin.help_tags, desc = "Help" },
        { "<leader>ct", builtin.colorscheme, desc = "Choose colorscheme" },
      }
    end,
  },
}
