local telescope = require("telescope")

telescope.setup({
  defaults = {
    hidden = true,
    no_ignore = true,
    file_ignore_patterns = { "%.venv/" },
  },
  pickers = {
    find_files = {
      hidden = true,
      no_ignore = true,
    },
  },
})
