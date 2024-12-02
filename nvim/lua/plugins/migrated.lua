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
        vim.g.edge_transparent_background=0
        vim.g.edge_enable_italic = 1
        vim.o.background = 'light'
        vim.cmd.colorscheme('edge')
      end
    },
    -- { 'vim-airline/vim-airline' },
    -- { 'vim-airline/vim-airline-themes' },

    { 'godlygeek/tabular' },
    { 'rcarriga/nvim-notify' },
    { 'nvim-focus/focus.nvim' },

    -- { 'williamboman/mason.nvim' },
    -- { 'williamboman/mason-lspconfig.nvim' },
    -- { 'neovim/nvim-lspconfig' },

    { 'neoclide/coc.nvim', branch = 'release' },
    -- themes

    { 'itchyny/lightline.vim', init = function()
    --[[
       [      local function coc_status()
       [          local info = vim.b.coc_diagnostic_info or {}
       [          local str = ''
       [          if next(info) ~= nil then
       [              if info.error then
       [                  str = str .. ' ' .. info.error .. ' '
       [              end
       [              if info.warning then
       [                  str = str .. ' ' .. info.warning .. ' '
       [              end
       [              if info.hint then
       [                  str = str .. ' ' .. info.hint .. ' '
       [              end
       [          end
       [          return str
       [      end
       [
       [      local function nearest_method_or_function()
       [          return vim.b.vista_nearest_method_or_function or ''
       [      end
       [
       [      local function codeium_status()
       [          return vim.fn['codeium.virtual_text'].status_string()
       [      end
       [
       [      vim.opt.showtabline = 2
       [
       [      vim.g.lightline = {
       [          colorscheme = 'edge',
       [          separator = { left = '', right = '' },
       [          subseparator = { left = '', right = '' },
       [          tabline_separator = { left = '', right = '' },
       [          tabline_subseparator = { left = '', right = '' },
       [          bufferline = {
       [              show_number = 1,
       [          },
       [          active = {
       [              left = { { 'mode', 'paste' }, { 'readonly', 'filename', 'modified', 'method' }, { 'cocStatus' } },
       [          },
       [          tabline = {
       [              left = { { 'buffers' } },
       [              right = { { 'gitBranch', 'close' } },
       [          },
       [          component = {},
       [          component_function = {
       [              gitBranch = 'FugitiveHead',
       [              cocStatus = coc_status,
       [              method = nearest_method_or_function,
       [              codeiumStatus = codeium_status,
       [          },
       [          component_expand = {
       [              buffers = 'lightline#bufferline#buffers',
       [          },
       [          component_type = {
       [              buffers = 'tabsel',
       [          },
       [      }
       [
       [      vim.g.lightline_bufferline_show_number = 2
       [      vim.g.lightline_bufferline_enable_devicons = 1
       [      vim.g.lightline_bufferline_icon_position = 'first'
       [
       ]]
    end, dependencies="sainnhe/edge"},
    { 'mengelbrecht/lightline-bufferline', dependencies="itchyny/lightline.vim" },
    -- { 'ellisonleao/gruvbox.nvim' },
    -- { 'Luxed/ayu-vim' },
    -- { 'dylanaraps/wal.vim' },
    -- { 'uZer/pywal16.nvim', as = 'pywal16' },
    -- { '4513ECHO/vim-colors-hatsunemiku' },

    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
    { 'ryanoasis/vim-devicons' },
    { 'chrisbra/Colorizer' },
    { 'Yggdroot/indentLine' },
    -- { 'preservim/vim-indent-guides' },
    { 'mhinz/vim-startify' },
    { 'voldikss/vim-floaterm' },
    { 'liuchengxu/vim-which-key' },

    { 'andymass/vim-matchup' },
    { 'jiangmiao/auto-pairs' },
    { 'tpope/vim-surround' },
    { 'preservim/nerdcommenter' },
    -- { 'frazrepo/vim-rainbow' },
    { 'luochen1990/rainbow' },
    -- { 'rhysd/vim-clang-format' },
    -- { 'JBakamovic/cxxd-vim' },
    { 'skywind3000/asyncrun.vim' },
    { 'skywind3000/asynctasks.vim' },
    { 'karb94/neoscroll.nvim' },
    -- { 'ludovicchabant/vim-gutentags' },

    { 'https://codeberg.org/esensar/nvim-dev-container' },
    { 'nvim-telescope/telescope.nvim', dependencies = { 'nvim-lua/plenary.nvim' } },
    { 'MunifTanjim/nui.nvim' },
    { 'amitds1997/remote-nvim.nvim' },
    { '907th/vim-auto-save' },
    { 'tibabit/vim-templates' },

    { 'kana/vim-textobj-user' , lazy=false},
    { 'kana/vim-textobj-indent' , dependencies= {'kana/vim-textobj-user'}},
    { 'kana/vim-textobj-syntax',dependencies={'kana/vim-textobj-user'} },
    { 'kana/vim-textobj-function',dependencies={'kana/vim-textobj-user'} , ft = { 'c', 'cpp', 'vim', 'java' } },
    { 'sgur/vim-textobj-parameter',dependencies={'kana/vim-textobj-user'}  },

    { 'hrsh7th/nvim-cmp' },

    -- { 'CopilotC-Nvim/CopilotChat.nvim', branch = 'canary' },
    { 'Exafunction/codeium.nvim' },

    { 'liuchengxu/vista.vim' },
    { 'alvan/vim-closetag' },
    { 'imsnif/kdl.vim' },
    { 'octol/vim-cpp-enhanced-highlight' },
    -- { 'Shougo/echodoc.vim' },
    { 'plasticboy/vim-markdown' },
    { 'mzlogin/vim-markdown-toc' },
    { 'iamcco/markdown-preview.nvim', build = function() return vim.fn['mkdp#util#install']() end, ft = { 'markdown', 'vim-plug' } },

    { 'lervag/vimtex' },
    { 'chrisbra/vim-xml-runtime' },

    -- { 'SirVer/ultisnips' },
    { 'honza/vim-snippets' },
    -- { 'sillybun/zyt-snippet' },
    { 'ahmedkhalf/project.nvim' },
    -- { 'puremourning/vimspector' },
    -- { 'junegunn/fzf', build = function() return vim.fn['fzf#install']() end },
    -- { 'junegunn/fzf.vim' },
    -- { 'yuki-yano/fzf-preview.vim', branch = 'release/rpc' },

    { 'ekickx/clipboard-image.nvim' },

    { 'easymotion/vim-easymotion' },
    { 'justinmk/vim-sneak' },
    { 'unblevable/quick-scope', init=function()
      vim.g.qs_highlight_on_keys = {'f', 'F', 't', 'T','s',"S"}
    end,
  },

    { 'michaelb/sniprun', build = 'sh install.sh' },

    { 'tpope/vim-fugitive' },
    { 'tpope/vim-rhubarb' },
    { 'lewis6991/gitsigns.nvim' },

    { 'wakatime/vim-wakatime' },

    -- { 'luozhiya/fittencode.vim' },

    { 'Shougo/context_filetype.vim' },

    { 'mattn/emmet-vim' },
    -- js
    { 'neoclide/npm.nvim', build = 'npm install' },
    { 'leafOfTree/vim-svelte-plugin' },
    { 'wuelnerdotexe/vim-astro' },

    -- typst
    { 'chomosuke/typst-preview.nvim', build = ':TypstPreviewUpdate' },
    { 'kaarmu/typst.vim' },
}


