-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- buffer switching
    ["<Tab>"] = {
      function()
        if #vim.t.bufs > 1 then
          require("telescope.builtin").buffers { sort_mru = true, ignore_current_buffer = true }
        else
          require("astronvim.utils").notify "No other buffers open"
        end
      end,
      desc = "Switch Buffers",
    },

    ["<leader><tab>"] = {"<c-w><c-p>", desc = "Previous Pane"},

    ["<leader>tt"] = {":ToggleTerm<CR>", desc = "Toggle Terminal"},
    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    ["<leader>j"]  = { name = "󱋿 Jump" },
    ["<leader>js"] = {function() require("flash").jump() end,              desc = "Flash" },
    ["<leader>jj"] = {function() require("flash").jump() end,              desc = "Flash" },
    ["<leader>jS"] = {function() require("flash").treesitter() end,        desc = "Flash TreeSitter" },
    ["<leader>jk"] = {function() require("flash").treesitter() end,        desc = "Flash TreeSitter" },
    ["<leader>jr"] = {function() require("flash").remote() end,            desc = "Remote Flase" },
    ["<leader>jR"] = {function() require("flash").treesitter_search() end, desc = "TreeSitter Search" },
    ["<leader>jT"] = {function() require("flash").toggle() end,            desc = "Toggle Flash Search" },

    -- TODO: Override the Save file command
    ["<leader>w"]  = { name = " Windows" },
    ["<leader>wh"] = { ":sp<CR>",  desc = "Horizontal Split" },
    ["<leader>wv"] = { ":vsp<CR>", desc = "Vertical Split" },
    ["<leader>wc"] = { "<c-w>q",   desc = "Close Window" },
    ["<leader>wo"] = { "<c-w>o",   desc = "Close All Other Windows" },

  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
    ["<esc>"] = {[[<C-\><C-n>]]},
    ["jj"]    = {[[<C-\><C-n>]]},
    ["<c-h>"]    = {[[<Cmd>wincmd h<CR>]]},
    ["<c-j>"]    = {[[<Cmd>wincmd j<CR>]]},
    ["<c-k>"]    = {[[<Cmd>wincmd k<CR>]]},
    ["<c-l>"]    = {[[<Cmd>wincmd l<CR>]]},
    ["<c-w>"]    = {[[<C-\><C-n><C-w>]]},
  },
}
