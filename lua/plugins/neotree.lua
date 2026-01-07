return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    filesystem = {
      hide_dotfiles = false,
      hide_gitignored = false,
      hidden = true,
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
        visible = true,
        show_hidden_count = true,
        never_show = {},
      },
      window = {
        mappings = {
          ["<space>"] = "none",
        },
      },
    },
  },
}
