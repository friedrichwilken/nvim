-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Disable formatting and diagnostics for .env files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "sh", "bash" },
  callback = function()
    local filename = vim.fn.expand("%:t")
    if filename:match("^%.env") or filename == ".env" then
      vim.b.autoformat = false
      vim.diagnostic.enable(false, { bufnr = 0 })
    end
  end,
})

-- Also handle when opening files directly
vim.api.nvim_create_autocmd("BufRead", {
  pattern = { ".env*", "*.env" },
  callback = function()
    vim.b.autoformat = false
    vim.diagnostic.enable(false, { bufnr = 0 })
  end,
})
