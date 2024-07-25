return {
  {
    "vuki656/package-info.nvim",
    ft = "json",
    dependencies = { "MunifTanjim/nui.nvim" },
    keys = {
      { "<leader>cnt", "<cmd>lua require('package-info').toggle()<CR>", desc = "Toggle" },
      { "<leader>cnd", "<cmd>lua require('package-info').delete()<CR>", desc = "Delete package" },
      { "<leader>cnu", "<cmd>lua require('package-info').update()<CR>", desc = "Update package" },
      { "<leader>cni", "<cmd>lua require('package-info').install()<CR>", desc = "Install a new package" },
      { "<leader>cnc", "<cmd>lua require('package-info').change_version()<CR>", desc = "Change package version" },
    },
    config = function()
      local palettes = {
        latte = require("catppuccin.palettes").get_palette("latte"),
        frappe = require("catppuccin.palettes").get_palette("frappe"),
        macchiato = require("catppuccin.palettes").get_palette("macchiato"),
        mocha = require("catppuccin.palettes").get_palette("mocha"),
      }

      local flavour = os.getenv("TERM_IS_DARK") == "true" and "frappe" or "latte"

      require("package-info").setup({
        package_manager = "npm",
        colors = {
          outdated = palettes[flavour].peach,
        },
        hide_up_to_date = true,
      })
    end,
  },
}
