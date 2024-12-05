return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    lazy = false
  },
  { 'junegunn/fzf',               build = function() return vim.fn['fzf#install']() end },
  { 'ahmedkhalf/project.nvim' },
  { 'Shougo/context_filetype.vim' },
  { 'kana/vim-textobj-user',      lazy = false },
  { 'kana/vim-textobj-indent',    dependencies = { 'kana/vim-textobj-user' } },
  { 'kana/vim-textobj-syntax',    dependencies = { 'kana/vim-textobj-user' } },
  { 'kana/vim-textobj-function',  dependencies = { 'kana/vim-textobj-user' },           ft = { 'c', 'cpp', 'vim', 'java' } },
  { 'sgur/vim-textobj-parameter', dependencies = { 'kana/vim-textobj-user' } },
  { 'tpope/vim-surround' },
  { 'voldikss/vim-floaterm' },
  { 'liuchengxu/vim-which-key',   cond = false },
  { 'godlygeek/tabular' },
  { 'ekickx/clipboard-image.nvim' },

  { '907th/vim-auto-save' },
  { 'easymotion/vim-easymotion' },
  { 'justinmk/vim-sneak' },
  {
    'unblevable/quick-scope',
    init = function()
      vim.g.qs_highlight_on_keys = { 'f', 'F', 't', 'T', 's', "S" }
    end,
  },
  { 'honza/vim-snippets' },
  { 'sillybun/zyt-snippet' },
  {
    '3rd/image.nvim',
    opt={}
  } }
