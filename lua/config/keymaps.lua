-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("v", "<leader>wc", function()
  local selected = vim.fn.getreg("v")
  vim.cmd('normal! "vd')

  vim.api.nvim_put({
    "Container(",
    "  child: " .. selected,
    ")",
  }, "l", true, true)
end, { desc = "Wrap with Container" })

vim.keymap.set("v", "<leader>wp", function()
  local selected = vim.fn.getreg("v")
  vim.cmd('normal! "vd')

  vim.api.nvim_put({
    "Padding(",
    "  child: " .. selected,
    ")",
  }, "l", true, true)
end, { desc = "Wrap with Padding" })

vim.keymap.set("v", "<leader>wr", function()
  local selected = vim.fn.getreg("v")
  vim.cmd('normal! "vd')

  vim.api.nvim_put({
    "Row(\n children: [" .. selected .. "],\n)",
  }, "l", true, true)
end, { desc = "Wrap with Row" })

vim.keymap.set("v", "<leader>wl", function()
  local selected = vim.fn.getreg("v")
  vim.cmd('normal! "vd')

  vim.api.nvim_put({
    " Column(\n children: [" .. selected .. "],\n)",
  }, "l", true, true)
end, { desc = "Wrap with Column" })
