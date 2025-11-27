return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = true, -- låter pluginet använda sin default setup
    keys = {
      { "<leader>ft", "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Open horizontal terminal" },
      { "<leader>fT", "<cmd>ToggleTerm direction=vertical<cr>", desc = "Open vertical terminal" },
    },
    opts = {
      open_mapping = [[<leader>t]],
      direction = "horizontal",
      size = 20,
    },
  },
}
