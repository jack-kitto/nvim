-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- GitHub keybindings for gh.nvim using LazyVim
local map = vim.keymap.set

-- GitHub Commits
map("n", "<leader>gHcc", "<cmd>GHCloseCommit<cr>", { desc = "Close Commit" })
map("n", "<leader>gHce", "<cmd>GHExpandCommit<cr>", { desc = "Expand Commit" })
map("n", "<leader>gHco", "<cmd>GHOpenToCommit<cr>", { desc = "Open To Commit" })
map("n", "<leader>gHcp", "<cmd>GHPopOutCommit<cr>", { desc = "Pop Out Commit" })
map("n", "<leader>gHcz", "<cmd>GHCollapseCommit<cr>", { desc = "Collapse Commit" })

-- GitHub Issues
map("n", "<leader>gHip", "<cmd>GHPreviewIssue<cr>", { desc = "Preview Issue" })

-- GitHub Litee
map("n", "<leader>gHlt", "<cmd>LTPanel<cr>", { desc = "Toggle Litee Panel" })

-- GitHub Review
map("n", "<leader>gHrb", "<cmd>GHStartReview<cr>", { desc = "Begin Review" })
map("n", "<leader>gHrc", "<cmd>GHCloseReview<cr>", { desc = "Close Review" })
map("n", "<leader>gHrd", "<cmd>GHDeleteReview<cr>", { desc = "Delete Review" })
map("n", "<leader>gHre", "<cmd>GHExpandReview<cr>", { desc = "Expand Review" })
map("n", "<leader>gHrs", "<cmd>GHSubmitReview<cr>", { desc = "Submit Review" })
map("n", "<leader>gHrz", "<cmd>GHCollapseReview<cr>", { desc = "Collapse Review" })

-- GitHub Pull Requests
map("n", "<leader>gHpc", "<cmd>GHClosePR<cr>", { desc = "Close PR" })
map("n", "<leader>gHpd", "<cmd>GHPRDetails<cr>", { desc = "PR Details" })
map("n", "<leader>gHpe", "<cmd>GHExpandPR<cr>", { desc = "Expand PR" })
map("n", "<leader>gHpo", "<cmd>GHOpenPR<cr>", { desc = "Open PR" })
map("n", "<leader>gHpp", "<cmd>GHPopOutPR<cr>", { desc = "Pop Out PR" })
map("n", "<leader>gHpr", "<cmd>GHRefreshPR<cr>", { desc = "Refresh PR" })
map("n", "<leader>gHpt", "<cmd>GHOpenToPR<cr>", { desc = "Open To PR" })
map("n", "<leader>gHpz", "<cmd>GHCollapsePR<cr>", { desc = "Collapse PR" })

-- GitHub Threads
map("n", "<leader>gHtc", "<cmd>GHCreateThread<cr>", { desc = "Create Thread" })
map("n", "<leader>gHtn", "<cmd>GHNextThread<cr>", { desc = "Next Thread" })
map("n", "<leader>gHtt", "<cmd>GHToggleThread<cr>", { desc = "Toggle Thread" })
