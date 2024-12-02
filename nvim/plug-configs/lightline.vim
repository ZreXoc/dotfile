function! g:lightline#cocStatus()
    let info = get(b:,'coc_diagnostic_info',{})
    let str = ''
    if (!empty(info)) 
        if(info.error)
            let str = (str) . ' ' . info.error . ' '
        endif
        if(info.warning)
            let str = (str) . ' ' . info.warning . ' '
        endif 
        if(info.hint)
            let str = (str) . ' ' . info.hint . ' '
        endif
    endif
    return str
endfunction
"echo lightline#cocStatus()

function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

function! CodeiumStatus() abort
  return v:lua.require("codeium.virtual_text").status_string()
endfunction

set showtabline=2
let g:lightline = {
            \  'colorscheme' : 'edge',
            \ 'separator' : { 'left' : '', 'right' : '' },
            \ 'subseparator' : { 'left' : '', 'right' : '' },
            \ 'tabline_separator' : { 'left' : '', 'right' : '' },
            \ 'tabline_subseparator' : { 'left' : '', 'right' : '' },
            \ 'bufferline' : {
            \   'show_number' : 1
            \ },
            \ 'active' : {
            \   'left' : [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified', 'method' ],['cocStatus'] ],
            \ },
            \ 'tabline' : {
            \   'left' : [ [ 'buffers' ] ],
            \   'right' : [ [ 'gitBranch', 'close' ] ]
            \ },
            \ 'component' : {
            \ },
            \ 'component_function' : {
            \   'gitBranch' : 'FugitiveHead',
            \   'cocStatus' : 'lightline#cocStatus',
            \   'method' : 'NearestMethodOrFunction',
            \   'codeiumStatus' : 'CodeiumStatus'
            \ },
            \ 'component_expand' : {
            \   'buffers' : 'lightline#bufferline#buffers'
            \ },
            \ 'component_type' : {
            \   'buffers' : 'tabsel'
            \ }
            \ }

let g:lightline#bufferline#show_number = 2
let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#icon_position = 'first'
