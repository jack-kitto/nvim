return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      "nvim-neotest/neotest-python",
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-python")({
            -- Runner to use. Will use pytest if available by default.
            runner = "pytest",
            -- Python path. Will use poetry/virtualenv path by default
            -- python = ".venv/bin/python",
          }),
        },
      })
    end,
  },
}
