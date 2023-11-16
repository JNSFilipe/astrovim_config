return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- Languages
  { import = "astrocommunity.pack.bash", enabled = true },
  { import = "astrocommunity.pack.cmake", enabled = true },
  { import = "astrocommunity.pack.cpp", enabled = true },
  { import = "astrocommunity.pack.lua", enabled = true },
  { import = "astrocommunity.pack.markdown", enabled = true },
  { import = "astrocommunity.pack.python", enabled = true },
  { import = "astrocommunity.pack.rust", enabled = true },

  -- Themes
  { import = "astrocommunity.colorscheme.catppuccin", enabled = true },
  { import = "astrocommunity.colorscheme.oxocarbon-nvim", enable = true },

  -- Aspect
  { import = "astrocommunity.bars-and-lines.vim-illuminate", enable = true },
  { import = "astrocommunity.diagnostics.lsp_lines-nvim", enable = true },

  -- Coding
  { import = "astrocommunity.motion.flash-nvim", enable = true },
  { import = "astrocommunity.motion.harpoon", enable = true },
  { import = "astrocommunity.motion.nvim-surround", enable = true },
  { import = "astrocommunity.editing-support.todo-comments-nvim", enable = true },
  { import = "astrocommunity.debugging.nvim-dap-virtual-text", enable = true },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },

  -- Utility
  { import = "astrocommunity.project.project-nvim", enable = true },
  { import = "astrocommunity.terminal-integration.vim-tpipeline", enable = true },
}
