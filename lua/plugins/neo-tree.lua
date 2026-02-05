-- lua/plugins/neo-tree.lua
return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = function(_, opts)
      local ok, mini = pcall(require, "mini.icons")
      if not ok then
        return
      end

      opts.default_component_configs = opts.default_component_configs or {}

      local icon = opts.default_component_configs.icon or {}

      icon.provider = function(icon, node)
        local kind = node.type == "directory" and "directory" or "file"
        local glyph, hl = mini.get(kind, node.name)

        if glyph then
          icon.text = glyph
          icon.highlight = hl
        end
      end

      opts.default_component_configs.icon = icon

      -- Show dot files by default
      opts.filesystem = opts.filesystem or {}
      opts.filesystem.filtered_items = opts.filesystem.filtered_items or {}
      opts.filesystem.filtered_items.visible = true
      opts.filesystem.filtered_items.hide_dotfiles = false
      opts.filesystem.filtered_items.hide_gitignored = false
    end,
  },
}
