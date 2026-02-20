return {
  "pmizio/typescript-tools.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  opts = {
    settings = {
      tsserver_paths = {},
      tsserver = {
        disable = true,
      },
      ts_ls = {
        disable = true,
      },
    },
  },
}
