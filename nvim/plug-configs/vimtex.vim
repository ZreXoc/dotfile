let g:tex_flavor='latex'
" This is necessary for VimTeX to load properly. The "indent" is optional.
" Note that most plugin managers will do this automatically.
filetype plugin indent on

" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ":help vimtex-requirements" for more
" info).
syntax enable


" VimTeX uses latexmk as the default compiler backend. If you use it, which is
" strongly recommended, you probably don't need to configure anything. If you
" want another compiler backend, you can change it as follows. The list of
" supported backends and further explanation is provided in the documentation,
" see ":help vimtex-compiler".
 "let g:vimtex_compiler_method = ''
 let g:vimtex_compiler_latexmk = {
\ 'aux_dir' : '',
\ 'out_dir' : '',
\ 'callback' : 1,
\ 'continuous' : 1,
\ 'executable' : 'latexmk',
\ 'hooks' : [],
\ 'options' : [
\   '-verbose',
\   '-file-line-error',
\   '-synctex=1',
\   '-interaction=nonstopmode',
\	'-xelatex',
\ ],
\}
 
let g:vimtex_view_method = 'zathura'
"let g:vimtex_view_general_options_latexmk = '-reuse-instance'
"let g:vimtex_view_general_options
"\ = '-reuse-instance -forward-search @tex @line @pdf'
"\ . ' -inverse-search "' . exepath(v:progpath)
"\ . ' --servername ' . v:servername
"\ . ' --remote-send \"^<C-\^>^<C-n^>'
"\ . ':execute ''drop '' . fnameescape(''\%f'')^<CR^>'
"\ . ':\%l^<CR^>:normal\! zzzv^<CR^>'
"\ . ':call remote_foreground('''.v:servername.''')^<CR^>^<CR^>\""'


set conceallevel=1
let g:tex_conceal='abdmg'
