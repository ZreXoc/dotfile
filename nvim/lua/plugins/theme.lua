return {
  {
    'sainnhe/edge',
    --lazy = false,
    --priority = 100000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.edge_enable_italic = true
      vim.g.edge_style = 'neon'
      vim.g.edge_better_performance = 1
      vim.g.edge_transparent_background = 0
      vim.g.edge_enable_italic = 1
      vim.o.background = 'light'
      vim.cmd.colorscheme('edge')
    end
  },

  {
    'itchyny/lightline.vim',
    dependencies = "sainnhe/edge"
  },
  { 'mengelbrecht/lightline-bufferline', dependencies = "itchyny/lightline.vim" },
  -- { 'ellisonleao/gruvbox.nvim' },
  -- { 'Luxed/ayu-vim' },
  -- { 'dylanaraps/wal.vim' },
  -- { 'uZer/pywal16.nvim', as = 'pywal16' },
  -- { '4513ECHO/vim-colors-hatsunemiku' },

  { 'chrisbra/Colorizer' },
  { 'Yggdroot/indentLine' },
  { 'luochen1990/rainbow' },
  { 'octol/vim-cpp-enhanced-highlight' },
  { 'ryanoasis/vim-devicons' },
  { 'nvim-focus/focus.nvim' },
  { 'karb94/neoscroll.nvim' },
  { 'mhinz/vim-startify' },
  { 'rcarriga/nvim-notify', opts={} },
}
