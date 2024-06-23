return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    skip_confirm_for_simple_edits = true,
  },
  init = function()
    vim.keymap.set("n", "-", require("oil").open, { desc = "Open parent directory" })
  end,
}
