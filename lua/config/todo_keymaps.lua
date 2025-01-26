-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- GitHub keybindings for gh.nvim using LazyVim
local map = vim.keymap.set

-- Todo
map("n", "<leader>tt", "<cmd>TodoTelescope<cr>", { desc = "Search through all project todos" })
map("n", "<leader>tq", "<cmd>TodoQuickFix<cr>", { desc = "Show all todos in your project" })
map("n", "<leader>tl", "<cmd>TodoLocList<cr>", { desc = "Show location list" })
map("n", "<leader>tn", function()
  require("todo-comments").jump_next()
end, { desc = "Next todo comment" })
map("n", "<leader>tp", function()
  require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })
