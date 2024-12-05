return {
  { 'tpope/vim-fugitive' },
  { 'tpope/vim-rhubarb' },
  { 'lewis6991/gitsigns.nvim' },

  { 'nvim-telescope/telescope.nvim',                  dependencies = { 'nvim-lua/plenary.nvim' } },
  { 'amitds1997/remote-nvim.nvim', dependencies='nvim-telescope/telescope.nvim' },
  { 'MunifTanjim/nui.nvim' },

  { 'wakatime/vim-wakatime' },
  -- { 'puremourning/vimspector' },
}
