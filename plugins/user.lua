return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  -- "PaterJason/cmp-conjure",
  -- {
  --   config = function()
  --     local cmp = require "cmp"
  --     local config = cmp.get_config()
  --     table.insert(config.sources, {
  --       name = "buffer",
  --       option = {
  --         sources = {
  --           { name = "conjure" },
  --         },
  --       },
  --     })
  --     cmp.setup(config)
  --   end,
  -- },

  {
    "Olical/conjure",

    ft = { "scheme", "fennel", "lua", "python", "rust", "hy", "scheme", "guile", "common-lisp" }, -- etc
    init = function()
      -- Set configuration options here
      vim.g["conjure#debug"] = true
    end,
  },
}
