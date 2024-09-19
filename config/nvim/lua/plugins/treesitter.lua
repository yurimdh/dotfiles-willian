return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "RRethy/nvim-treesitter-endwise",
  },
  opts = {
    auto_install = true,
    indent = {
      enable = true,
      disable = { "ruby" },
    },
    endwise = {
      enable = true,
    },
  },
}
