-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.g.smooth_scroll = false

-- Se till att filer alltid skrivs med en newline på slutet
vim.opt.endofline = true
vim.opt.fixendofline = true
