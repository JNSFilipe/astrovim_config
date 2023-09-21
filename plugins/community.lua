return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin", enabled = true },
  { import = "astrocommunity.bars-and-lines.vim-illuminate", enable = true },
  { import = "astrocommunity.motion.flash-nvim", enable = true },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
