return {
  "williamboman/mason.nvim",
  opts = {
    ui = {
      border = "rounded",
      icons = {
        package_installed = " ",
        package_pending = "󰌚 ",
        package_uninstalled = "󰢤 ",
      },
    },
    ensure_installed = {
      "css-lsp",
      "emmet-ls",
      "isort",
      "prisma-language-server",
      "rubocop",
      "ruby-lsp",
      "stimulus-language-server",
      -- "tsserver",
    },
  },
}
