return {
  -- Treesitter grammar for MDX
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "markdown", "markdown_inline", "mdx" })
    end,
  },
  -- Extend render-markdown to handle mdx filetype
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      file_types = { "markdown", "mdx" },
    },
    ft = { "markdown", "mdx" },
  },
}
