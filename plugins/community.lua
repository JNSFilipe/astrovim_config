return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin", enabled = true },
  { import = "astrocommunity.bars-and-lines.vim-illuminate", enable = true },
  { import = "astrocommunity.motion.flash-nvim", enable = true },
  { import = "astrocommunity.motion.harpoon", enable = true },
  { import = "astrocommunity.motion.nvim-surround", enable = true },
  { import = "astrocommunity.editing-support.todo-comments-nvim", enable = true },
  { import = "astrocommunity.debugging.nvim-dap-virtual-text", enable = true},
  { import = "astrocommunity.diagnostics.lsp_lines-nvim", enable = true},
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
