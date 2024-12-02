imap jk <esc>
"nmap <silent><tab> :bn<cr>
"nmap <silent><S-tab> :bN<cr>
nnoremap <silent><M-w> :bd <CR>
imap <M-a> <esc>gg0vG$   "select all
imap <C-CR> <CR><tab><CR><esc>kA
imap <S-CR> <esc>o
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit! "force write
cnoremap md execute 'silent! write !mkdir -p %:h;' <bar> edit! "force write

" ==== copy and paste ==================

" Paste system clipboard with Ctrl + v
inoremap <C-v> <ESC>"+gpi
nnoremap <C-v> "+gP<ESC>
vnoremap <C-v> d"+gP<ESC>
cnoremap <C-v> <C-r>+

" Cut to system clipboard with Ctrl + x
vnoremap <C-x> "+d
"nnoremap <C-x> "+dd
inoremap <C-x> <ESC>"+ddi

" Copy to system clipboard with Ctr + c
vnoremap <C-c> "+y
nnoremap <C-c> "+yy
inoremap <C-c> <ESC>"+yyi

" ==== end copy and paste ==================

" ==== editor ==================

nnoremap <leader>enh :noh<CR>
nnoremap <leader>eva gg0vG$<C-o>
nnoremap <leader>eca gg0vG$"+y<C-o>
nnoremap <leader>el  :IndentLinesToggle<CR>
nnoremap <leader>et  :FloatermNew<CR>
vnoremap <leader>ec "+y
" ==== end editor ==================

" ==== buffer ==================
nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)

nmap <Tab>   <Plug>lightline#bufferline#go_next()
nmap <S-Tab> <Plug>lightline#bufferline#go_previous()
nmap <Leader><Tab>   <Plug>lightline#bufferline#go_next_category()
nmap <Leader><S-Tab> <Plug>lightline#bufferline#go_previous_category()

nmap <Leader>bl <Plug>lightline#bufferline#move_next()
nmap <Leader>bh <Plug>lightline#bufferline#move_previous()
nmap <Leader>bk <Plug>lightline#bufferline#move_first()
nmap <Leader>bj <Plug>lightline#bufferline#move_last()
nmap <Leader>bb <Plug>lightline#bufferline#reset_order()

nmap <Leader>bc1 <Plug>lightline#bufferline#delete(1)
nmap <Leader>bc2 <Plug>lightline#bufferline#delete(2)
nmap <Leader>bc3 <Plug>lightline#bufferline#delete(3)
nmap <Leader>bc4 <Plug>lightline#bufferline#delete(4)
nmap <Leader>bc5 <Plug>lightline#bufferline#delete(5)
nmap <Leader>bc6 <Plug>lightline#bufferline#delete(6)
nmap <Leader>bc7 <Plug>lightline#bufferline#delete(7)
nmap <Leader>bc8 <Plug>lightline#bufferline#delete(8)
nmap <Leader>bc9 <Plug>lightline#bufferline#delete(9)
nmap <Leader>bc0 <Plug>lightline#bufferline#delete(10)
" ==== end buffer ==================
