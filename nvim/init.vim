
" quick-scope
"let g:qs_highlight_on_keys = ['f', 'F', 't', 'T','s',"S"]

 execute 'source' globpath(stdpath('config'),'_init.lua', 0, 1, 0)[0]
"execute 'source' globpath(stdpath('config'),'plug.vim', 0, 1, 0)[0]


let g:python3_host_prog = '/bin/python'
set termguicolors
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030
set ai              " 自动缩进
set si              " 智能缩进
set cindent         " C/C++风格缩进
" tab转化为4个字符
set smarttab
set shiftwidth=2
set tabstop=2
set expandtab
set history=500  " vim记住的历史操作的数量，默认的是20
set autoread     " 当文件在外部被修改时，自动重新读取
set mouse=a      " 在所有模式下都允许使用鼠标，还可以是n,v,i,c等

set conceallevel=2
set concealcursor=

set list
"如果行尾有多余的空格(包括 Tab 键),该配置将让这些空格显示成可见的小方块
"set listchars=tab:»■,trail:■
"set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
set listchars=tab:»-,trail:·,extends:»,precedes:«
set noshowmode
set updatetime=300
" set signcolumn=yes
set number relativenumber

" ==== Clipboard Settings ==================

" set clipboard+=unnamedplus
let g:clipboard = {
      \   'name': 'wl-clipboard',
      \   'copy': {
      \      '+': 'wl-copy',
      \      '*': 'wl-copy',
      \    },
      \   'paste': {
      \      '+': 'wl-paste',
      \      '*': 'wl-paste',
      \   },
      \   'cache_enabled': 0,
      \ }


" ==== end Clipboard Settings ==================

"ctags
set tags=./.tags;,.tags;$HOME/.cache/tags
set autochdir


" tex for md
" This gets rid of the nasty _ italic bug in tpope's vim-markdown
" block $$...$$
syn region math start=/\$\$/ end=/\$\$/
" inline math
syn match math '\$[^$].\{-}\$'

" actually highlight the region we defined as "math"
"hi link math Statement

"call plug#begin()
  "Plug 'neoclide/coc.nvim', {'branch': 'release'}
  ""Plug 'vim-airline/vim-airline'
  ""Plug 'vim-airline/vim-airline-themes'

  "Plug 'godlygeek/tabular'
  "Plug 'rcarriga/nvim-notify'

  "Plug 'nvim-focus/focus.nvim'

  ""Plug 'williamboman/mason.nvim'
  ""Plug 'williamboman/mason-lspconfig.nvim'
  ""Plug 'neovim/nvim-lspconfig'

  ""themes
  "Plug 'itchyny/lightline.vim'
  "Plug 'mengelbrecht/lightline-bufferline'
  ""Plug 'ellisonleao/gruvbox.nvim'
  ""Plug 'Luxed/ayu-vim'
  "Plug 'sainnhe/edge'
  ""Plug 'dylanaraps/wal.vim'
  ""Plug 'uZer/pywal16.nvim', { 'as': 'pywal16' }
  ""Plug '4513ECHO/vim-colors-hatsunemiku'

  "Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  "Plug 'ryanoasis/vim-devicons'
  "Plug 'chrisbra/Colorizer'
  "Plug 'Yggdroot/indentLine'
  ""Plug 'preservim/vim-indent-guides'
  "Plug 'mhinz/vim-startify'
  "Plug 'voldikss/vim-floaterm'
  "Plug 'liuchengxu/vim-which-key'

  "Plug 'andymass/vim-matchup'
  "Plug 'jiangmiao/auto-pairs'
  "Plug 'tpope/vim-surround'
  "Plug 'preservim/nerdcommenter'
  ""Plug 'frazrepo/vim-rainbow'
  "Plug 'luochen1990/rainbow'
  ""Plug 'rhysd/vim-clang-format'
  "" Plug 'JBakamovic/cxxd-vim'
  "Plug 'skywind3000/asyncrun.vim'
  "Plug 'skywind3000/asynctasks.vim'
  "Plug 'karb94/neoscroll.nvim'
  ""Plug 'ludovicchabant/vim-gutentags'
  ""
  
  "Plug 'https://codeberg.org/esensar/nvim-dev-container'
  "Plug 'nvim-telescope/telescope.nvim'
  "Plug 'nvim-lua/plenary.nvim',
  "Plug 'MunifTanjim/nui.nvim',
  "Plug 'amitds1997/remote-nvim.nvim'
  "Plug '907th/vim-auto-save'
  "Plug 'tibabit/vim-templates'

  "Plug 'kana/vim-textobj-user'
  "Plug 'kana/vim-textobj-indent'
  "Plug 'kana/vim-textobj-syntax'
  "Plug 'kana/vim-textobj-function', { 'for':['c', 'cpp', 'vim', 'java'] }
  "Plug 'sgur/vim-textobj-parameter'

  "Plug 'hrsh7th/nvim-cmp'

  ""Plug 'CopilotC-Nvim/CopilotChat.nvim', { 'branch': 'canary' }
  "Plug 'Exafunction/codeium.nvim'

  "Plug 'liuchengxu/vista.vim'

  "Plug 'alvan/vim-closetag'

  "Plug 'imsnif/kdl.vim'

  "Plug 'octol/vim-cpp-enhanced-highlight'
  "" Plug 'Shougo/echodoc.vim'
  "Plug 'plasticboy/vim-markdown'
  "Plug 'mzlogin/vim-markdown-toc'
  "Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

  "Plug 'lervag/vimtex'
  "Plug 'chrisbra/vim-xml-runtime'

  ""Plug 'SirVer/ultisnips'
  "Plug 'honza/vim-snippets'
  ""Plug 'sillybun/zyt-snippet'
  "Plug 'ahmedkhalf/project.nvim'
  "" Plug 'puremourning/vimspector' Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } Plug 'junegunn/fzf.vim' Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }

  "Plug 'ekickx/clipboard-image.nvim'

  "Plug 'easymotion/vim-easymotion'
  "Plug 'justinmk/vim-sneak'
  "Plug 'unblevable/quick-scope'

  "Plug 'michaelb/sniprun', {'do': 'sh install.sh'}

  "Plug 'tpope/vim-fugitive'
  "Plug 'tpope/vim-rhubarb'
  "Plug 'lewis6991/gitsigns.nvim'

  "Plug 'wakatime/vim-wakatime'


  ""Plug 'luozhiya/fittencode.vim'

  "Plug 'Shougo/context_filetype.vim'

  "Plug 'mattn/emmet-vim'
  "" js
  "Plug 'neoclide/npm.nvim', {'do' : 'npm install'}
  "Plug 'leafOfTree/vim-svelte-plugin'
  "Plug 'wuelnerdotexe/vim-astro'

  "" typst
  "Plug 'chomosuke/typst-preview.nvim', {'do': ':TypstPreviewUpdate'}
  "Plug 'kaarmu/typst.vim'
"call plug#end()
" ==== Plug Settings ==================

"set background=light
" colorscheme
"colorscheme gruvbox
"let ayucolor="mirage"


"colorscheme edge
"colorscheme pywal16

" context_filetype
if !('g:context_filetype#filetypes'->exists())
  let g:context_filetype#filetypes = {}
endif
let g:context_filetype#filetypes.vim = [
      \   #{
      \     filetype: 'python',
      \     start: '^\s*python <<\s*\(\h\w*\)',
      \     end: '^\1',
      \   },
      \   #{
      \     filetype: 'lua',
      \     start: '^\s*lua <<\s*\(\h\w*\)',
      \     end: '^\1',
      \   },
      \ ]


" vim-sneak
highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline


" neoscroll
lua require('neoscroll').setup()

" rainbow
let g:rainbow_active = 1

autocmd FileType markdown nnoremap <silent> <C-p> :call mdip#MarkdownClipboardImage()<CR>
let g:mdip_imgdir = 'image'
let g:mdip_imgname = 'image'


" vim-markdown
let g:vim_markdown_math = 1

" vim-auto-save
let g:auto_save = 1
nmap \s :AutoSaveToggle<CR>

" vim-clang-format
let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11"}

" map to <Leader>cf in C++ code
"autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>

"autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
"" if you install vim-operator-user
"autocmd FileType c,cpp,objc map <buffer><Leader>x <Plug>(operator-clang-format)
"" Toggle auto formatting:
"nmap <Leader>C :ClangFormatAutoToggle<CR>

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.xml,*.astro,*.vue'

" svelte

let g:vim_svelte_plugin_load_full_syntax = 1
let g:vim_svelte_plugin_use_typescript = 1

" ==== vim-templates ==================
let g:tmpl_search_paths = ['~/.templates']
let g:tmpl_author_email = 'zeexoc@outlook.com'

" ==== indentLine ==================

let g:indentLine_setConceal = 0
let g:indentLine_char_list = ['|', '¦', '┆', '┊']"
let g:indentLine_concealcursor = 'n'
let g:indentLine_conceallevel = 2

" ==== Vista ==================
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
" ==== end Vista ==================

" ==== end Plug Settings ==================

let mapleader="\<space>"

" ==== load vim files ==================


for f in globpath(stdpath('config').'/user-configs/', '*.vim', 0, 1, 0)
    execute 'source' f
endfor

for l in globpath(stdpath('config').'/user-configs/', '*.lua', 0, 1, 0)
    execute 'source' l
endfor

for f in globpath(stdpath('config').'/plug-configs/', '*.vim', 0, 1, 0)
    execute 'source' f
endfor

for l in globpath(stdpath('config').'/plug-configs/', '*.lua', 0, 1, 0)
    execute 'source' l
endfor

" ==== end load vim files ==================


" vim-which-key

nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
nnoremap <silent> \ :WhichKey '\'<CR>
set timeoutlen=500
let g:which_key_map_space = {}
let g:which_key_map_space['w'] = {
    \ 'name' : '+windows' ,
    \ 'r' : ['<C-W>w'     , 'other-window']          ,
    \ 'd' : ['<C-W>c'     , 'delete-window']         ,
    \ '-' : ['<C-W>s'     , 'split-window-below']    ,
    \ '|' : ['<C-W>v'     , 'split-window-right']    ,
    \ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
    \ 'h' : ['<C-W>h'     , 'window-left']           ,
    \ 'j' : ['<C-W>j'     , 'window-below']          ,
    \ 'l' : ['<C-W>l'     , 'window-right']          ,
    \ 'k' : ['<C-W>k'     , 'window-up']             ,
    \ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
    \ 'J' : [':resize +5'  , 'expand-window-below']  ,
    \ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
    \ 'K' : [':resize -5'  , 'expand-window-up']     ,
    \ '=' : ['<C-W>='     , 'balance-window']        ,
    \ 's' : ['<C-W>s'     , 'split-window-below']    ,
    \ 'v' : ['<C-W>v'     , 'split-window-below']    ,
    \ '?' : ['Windows'    , 'fzf-window']            ,
\ }

let g:which_key_map_space['f'] = {
    \ 'name' : '+find' ,
    \ 'f' :  'quick find all'            ,
    \ 'p' :  'project-mru & git'            ,
    \ 'o' :  'project-mru & buffer'            ,
    \ 'b' :  'file buffers'            ,
    \ 'B' :  'all buffers'            ,
    \ '*' : 'current word'         ,
    \ '/' : 'word'         ,
    \ 'gs' : 'GitStatus'         ,
    \ 'ga' : 'GitActions'         ,
    \ 'gr' : 'project grep'         ,
    \ 't' : 'buffer tags'         ,
    \ 'q' : 'QuickFix'         ,
    \ 'l' : 'LocationList'         ,
\ }
let g:which_key_map_space['p'] = {
    \ 'name' : '+program' ,
    \ 'b' : 'build'       ,
    \ 'r' : 'run'       ,
    \ 'q' : 'quick run'       ,
\ }

let g:which_key_map_space['e'] = {
    \ 'name' : '+editor' ,
\ }

call which_key#register('<Space>', "g:which_key_map_space")
augroup ColorHighlight
	au!
	au BufEnter *.json ColorHighlight
	au BufEnter *.css ColorHighlight
	"au BufEnter *.conf ColorHighlight
augroup END


lua <<EOF
vim.o.guifont = "Cascadia Code,Source Han Sans CN:h14" -- text below applies for VimScript
require('gitsigns').setup()

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the listed parsers MUST always be installed)
  ensure_installed = { "c", "lua", "vim", "typescript", "query", "markdown", "markdown_inline", "astro" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (or "all")
  -- ignore_install = { "javascript" },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    -- disable = { "c", "rust" },
    -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}


--[[

require("codeium").setup({
    -- Optionally disable cmp source if using virtual text only
    enable_cmp_source = false,
    virtual_text = {
        enabled = true,

        -- Set to true if you never want completions to be shown automatically.
        manual = false,
        -- A mapping of filetype to true or false, to enable virtual text.
        filetypes = {},
        -- Whether to enable virtual text of not for filetypes not specifically listed above.
        default_filetype_enabled = true,
        -- How long to wait (in ms) before requesting completions after typing stops.
        idle_delay = 75,
        -- Priority of the virtual text. This usually ensures that the completions appear on top of
        -- other plugins that also add virtual text, such as LSP inlay hints, but can be modified if
        -- desired.
        virtual_text_priority = 65535,
        -- Set to false to disable all key bindings for managing completions.
        map_keys = true,
        accept_fallback = nil,
        -- Key bindings for managing completions in virtual text mode.
        key_bindings = {
            -- Accept the current completion.
            accept = "<C-l>",
            -- Accept the next word.
            accept_word = false,
            -- Accept the next line.
            accept_line = false,
            -- Clear the virtual text.
            clear = false,
            -- Cycle to the next completion.
            next = "<M-n>",
            -- Cycle to the previous completion.
            prev = "<M-S-n>",
        }
    }
})
]]--
require("devcontainer").setup{}
EOF
