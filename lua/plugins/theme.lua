return {
  "akai54/2077.nvim",
  lazy = false, -- Load during startup
  priority = 1000, -- Load before other plugins
  config = function()
    vim.cmd.colorscheme("2077")
  end,
}
