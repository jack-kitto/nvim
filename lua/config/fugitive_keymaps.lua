local map = vim.keymap.set

map("n", "<leader>gs", "<cmd>Git<cr>", { desc = "Open Git status" })
map("n", "<leader>gd", "<cmd>Gdiffsplit<cr>", { desc = "Open Git diff" })
map("n", "<leader>gc", "<cmd>Git commit<cr>", { desc = "Commit changes" })
map("n", "<leader>gl", "<cmd>Git log<cr>", { desc = "View Git log" })
map("n", "<leader>gp", "<cmd>Git push<cr>", { desc = "Push changes" })
map("n", "<leader>gr", "<cmd>Git pull<cr>", { desc = "Pull changes" })

return {}
