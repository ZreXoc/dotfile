" quick-scope
"let g:qs_highlight_on_keys = ['f', 'F', 't', 'T','s',"S"]

 execute 'source' globpath(stdpath('config'),'lua/init.lua', 0, 1, 0)[0]
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
set concealcursor=nv

set hidden

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

" ==== Plug Settings ==================

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

let g:context_filetype#filetypes.norg = [
      \   #{
      \     filetype: 'lua',
      \     start: '^code',
      \     end: '^end',
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

"nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
"nnoremap <silent> \ :WhichKey '\'<CR>
"set timeoutlen=500

augroup ColorHighlight
	au!
	au BufEnter *.json ColorHighlight
	au BufEnter *.css ColorHighlight
	"au BufEnter *.conf ColorHighlight
augroup END

augroup typst
  autocmd!
  autocmd BufRead *.typ TypstPreview
augroup END

augroup norg
  autocmd!
  autocmd BufRead *.norg TSEnable highlight | set conceallevel=3
augroup END


lua <<EOF

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

EOF
