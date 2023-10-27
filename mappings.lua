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
        if #vim.t.bufs > 2 then
          require("telescope.builtin").buffers { sort_mru = true, ignore_current_buffer = true }
        elseif #vim.t.bufs > 1 then
          vim.api.nvim_command('bprevious')
        else
          require("astronvim.utils").notify "No other buffers open"
        end
      end,
      desc = "Switch Buffers",
    },

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
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    ["<leader>j"]  = { name = "󱋿 Jump" },
    ["<leader>js"] = {function() require("flash").jump() end,              desc = "Flash" },
    ["<leader>jj"] = {function() require("flash").jump() end,              desc = "Flash" },
    ["<leader>jS"] = {function() require("flash").treesitter() end,        desc = "Flash TreeSitter" },
    ["<leader>jk"] = {function() require("flash").treesitter() end,        desc = "Flash TreeSitter" },
    ["<leader>jr"] = {function() require("flash").remote() end,            desc = "Remote Flase" },
    ["<leader>jR"] = {function() require("flash").treesitter_search() end, desc = "TreeSitter Search" },
    ["<leader>jT"] = {function() require("flash").toggle() end,            desc = "Toggle Flash Search" },

    ["<leader>w"]  = { name = " Windows", desc = " Windows"  },
    ["<leader>wh"] = { ":sp<CR>",  desc = "Horizontal Split" },
    ["<leader>wv"] = { ":vsp<CR>", desc = "Vertical Split" },
    ["<leader>wc"] = { "<c-w>q",   desc = "Close Window" },
    ["<leader>wo"] = { "<c-w>o",   desc = "Close All Other Windows" },

    ["<leader>:"] = {"<cmd>Telescope command_history<cr>", desc = "Command History"},

    -- Find word in files
    ["<C-p>"]  = { function() require("telescope.builtin").git_files() end, desc = "Search in Files"},


    -- Plugin Manager
    ["<leader>a"] = { name = " Astro", desc = " Astro"},
    ["<leader>ai"] = { function() require("lazy").install() end, desc = "Plugins Install" },
    ["<leader>as"] = { function() require("lazy").home() end, desc = "Plugins Status" },
    ["<leader>aS"] = { function() require("lazy").sync() end, desc = "Plugins Sync" },
    ["<leader>au"] = { function() require("lazy").check() end, desc = "Plugins Check Updates" },
    ["<leader>aU"] = { function() require("lazy").update() end, desc = "Plugins Update" },
    -- AstroNvim
    ["<leader>aa"] = { "<cmd>AstroUpdatePackages<cr>", desc = "Update Plugins and Mason Packages" },
    ["<leader>aA"] = { "<cmd>AstroUpdate<cr>", desc = "AstroNvim Update" },
    ["<leader>av"] = { "<cmd>AstroVersion<cr>", desc = "AstroNvim Version" },
    ["<leader>al"] = { "<cmd>AstroChangelog<cr>", desc = "AstroNvim Changelog" },
    -- Package Manager
    -- if is_available "mason.nvim" then -- TODO: Make this if work
      ["<leader>am"] = { "<cmd>Mason<cr>", desc = "Mason Installer" },
      ["<leader>aM"] = { "<cmd>MasonUpdateAll<cr>", desc = "Mason Update" },
    -- end


    -- Project
    ["<leader>p"] = { function() require("telescope").extensions.projects.projects{} end, desc = "Change Project"},
    ["<leader>pi"] = false,
    ["<leader>ps"] = false,
    ["<leader>pS"] = false,
    ["<leader>pu"] = false,
    ["<leader>pU"] = false,
    ["<leader>pa"] = false,
    ["<leader>pA"] = false,
    ["<leader>pv"] = false,
    ["<leader>pl"] = false,
    -- if is_available "mason.nvim" then -- TODO: Make this if work
      ["<leader>pm"] = false,
      ["<leader>pM"] = false,
    -- end




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
