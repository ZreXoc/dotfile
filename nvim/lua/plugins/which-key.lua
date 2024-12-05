return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      local wk = require('which-key')
      wk.add(
        {
          {
            "<Leader>bc",
            group = "close buffer",
            expand = function()
              return require("which-key.extras").expand.buf()
            end
          },
          { "<Leader>f", group = "program" },
          {
            { "<Leader>f",   group = "find" },
            { "<Leader>ff",  desc = "quick find all",      mode = { "n" } },
            { "<Leader>fp",  desc = "project-mru & git" },
            { "<Leader>fo",  desc = "project-mru & buffer" },
            { "<Leader>fb",  desc = "file buffers" },
            { "<Leader>fB",  desc = "all buffers" },
            { "<Leader>f*",  desc = "current word" },
            { "<Leader>f/",  desc = "word" },
            { "<Leader>fgs", desc = "GitStatus" },
            { "<Leader>fga", desc = "GitActions" },
            { "<Leader>fgr", desc = "project grep" },
            { "<Leader>ft",  desc = "buffer tags" },
            { "<Leader>fq",  desc = "QuickFix" },
            { "<Leader>fl",  desc = "LocationList" },
          },
          { "<Leader>p", group = "program" },
          {
            { "<Leader>pb", desc = "build" },
            { "<Leader>pr", desc = "run" },
            { "<Leader>pq", desc = "quick run" },
          }
        }
      )
    end,
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
      { "<Leader>w",  group = "window" },
      { "<Leader>wr", "<C-W>w",        desc = 'other-window' },
      { "<Leader>wd", "<C-W>c",        desc = 'delete-window' },
      { "<Leader>w-", "<C-W>s",        desc = 'split-window-below' },
      { "<Leader>w|", "<C-W>v",        desc = 'split-window-right' },
      { "<Leader>w2", "<C-W>v",        desc = 'layout-double-columns' },
      { "<Leader>wh", "<C-W>h",        desc = 'window-left' },
      { "<Leader>wj", "<C-W>j",        desc = 'window-below' },
      { "<Leader>wl", "<C-W>l",        desc = 'window-right' },
      { "<Leader>wk", "<C-W>k",        desc = 'window-up' },
      { "<Leader>wH", "<C-W>5<",       desc = 'expand-window-left' },
      { "<Leader>wJ", ":resize +5",    desc = 'expand-window-below' },
      { "<Leader>wL", "<C-W>5>",       desc = 'expand-window-right' },
      { "<Leader>wK", ":resize -5",    desc = 'expand-window-up' },
      { "<Leader>w=", "<C-W>=",        desc = 'balance-window' },
      { "<Leader>ws", "<C-W>s",        desc = 'split-window-below' },
      { "<Leader>wv", "<C-W>v",        desc = 'split-window-below' },
      { "<Leader>w?", "Windows",       desc = 'fzf-window' },
    },
  },
}
