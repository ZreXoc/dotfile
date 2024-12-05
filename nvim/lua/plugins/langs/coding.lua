return {
  { 'michaelb/sniprun',          build = 'sh install.sh' },
  { 'preservim/nerdcommenter' },
  { 'tibabit/vim-templates' },
  { 'jiangmiao/auto-pairs' },

  { 'skywind3000/asyncrun.vim' },
  { 'skywind3000/asynctasks.vim' },

  { 'neoclide/coc.nvim',         branch = 'release' },

  { 'liuchengxu/vista.vim' },
  {
    'andymass/vim-matchup',
  },


  { 'alvan/vim-closetag' },

  --[[languages]] --
  { 'imsnif/kdl.vim' },

  { 'mattn/emmet-vim' },
  { 'chrisbra/vim-xml-runtime' },

  { 'lervag/vimtex' },
  -- markdown
  { 'plasticboy/vim-markdown',       ft = 'markdown' },
  { 'mzlogin/vim-markdown-toc',      ft = 'markdown' },
  { 'iamcco/markdown-preview.nvim',  build = function() return vim.fn['mkdp#util#install']() end, ft = { 'markdown', 'vim-plug' } },

  -- js
  { 'neoclide/npm.nvim',             build = 'npm install' },
  { 'leafOfTree/vim-svelte-plugin',  ft = 'svelte' },
  { 'wuelnerdotexe/vim-astro',       ft = 'astro' },

  -- typst
  { 'chomosuke/typst-preview.nvim',  build = ':TypstPreviewUpdate', ft = 'typst',  },
  { 'kaarmu/typst.vim',              ft = 'typst' },
}
