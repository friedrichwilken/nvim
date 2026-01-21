-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.bo.expandtab = true -- Use spaces instead of tabs
    vim.bo.shiftwidth = 3 -- Number of spaces to use for each step of (auto)indent
    vim.bo.tabstop = 3 -- Number of spaces that a <Tab> in the file counts for
  end,
})
