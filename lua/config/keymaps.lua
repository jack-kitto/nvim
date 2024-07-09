-- local harpoon = require("harpoon")
-- harpoon:setup()
-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>ml", "<cmd>CellularAutomaton make_it_rain<CR>")
vim.keymap.set("n", "<leader>cw", ":vsp | term npm run test:watch<CR>", { desc = "npm run test:watch" })
vim.keymap.set("n", "<leader>cc", ":vsp | term cargo run<CR>", { desc = "cargo run" })
vim.keymap.set("n", "<leader>vl", "love .", { desc = "Run Love2d In Root" })

-- vim.keymap.set("n", "<leader>ha", function()
--   harpoon:list():add()
-- end, { desc = "Add current file to Harpoon" })
--
-- vim.keymap.set("n", "<leader>hj", function()
--   harpoon.ui:toggle_quick_menu(harpoon:list())
-- end, { desc = "Toggle Harpoon menu" })
--
-- vim.keymap.set("n", "<leader>hp", function()
--   harpoon:list():prev()
-- end, { desc = "Harpoon previous" })
--
-- vim.keymap.set("n", "<leader>hn", function()
--   harpoon:list():next()
-- end, { desc = "Harpoon next" })
--
-- vim.keymap.set("n", "<leader>hh", function()
--   harpoon:list():select(1)
-- end, { desc = "Harpoon home" })
--
-- vim.keymap.set("n", "<leader>ht", function()
--   harpoon:list():select(2)
-- end, { desc = "Harpoon Terminal" })
--
-- vim.keymap.set("n", "<leader>hn", function()
--   harpoon:list():select(3)
-- end, { desc = "Harpoon notes" })
--
-- vim.keymap.set("n", "<leader>hs", function()
--   harpoon:list():select(4)
-- end, { desc = "Harpoon scratch" })

-- vim.keymap.set("n", "<C-e>", function()
--   harpoon.ui:toggle_quick_menu(harpoon:list())
-- end)

-- vim.keymap.set("n", "<C-h>", function()
--   harpoon:list():select(1)
-- end)
-- vim.keymap.set("n", "<C-t>", function()
--   harpoon:list():select(2)
-- end)
-- vim.keymap.set("n", "<C-n>", function()
--   harpoon:list():select(3)
-- end)
-- vim.keymap.set("n", "<C-s>", function()
--   harpoon:list():select(4)
-- end)
--
-- -- Toggle previous & next buffers stored within Harpoon list
-- vim.keymap.set("n", "<C-S-P>", function()
--   harpoon:list():prev()
-- end)
-- vim.keymap.set("n", "<C-S-N>", function()
--   harpoon:list():next()
-- end)
