" 自动打开 quickfix window ，高度为 6
let g:asyncrun_open = 6
" 任务结束时候响铃提醒
let g:asyncrun_bell = 1
" 设置 F10 打开/关闭 Quickfix 窗口
nnoremap <F10> :call asyncrun#quickfix_toggle(6)<cr>

let g:asyncrun_encs = 'utf-8'
let g:asyncrun_program = get(g:, 'asyncrun_program', {})
let g:asyncrun_program.echoInfo = { opts -> 'echo "${VIM_FILEPATH}`n" ;' . opts.cmd }

let g:asynctasks_term_pos = 'TAB'
let g:asynctasks_term_reuse = 1

noremap <silent><f5> :AsyncTask file-run<cr>
noremap <silent><f9> :AsyncTask file-build<cr>
noremap <silent><leader>pr :AsyncTask file-run<cr>
noremap <silent><leader>pc1 :AsyncTask file-run-1<cr>
noremap <silent><leader>pc2 :AsyncTask file-run-2<cr>
noremap <silent><leader>pc3 :AsyncTask file-run-3<cr>
noremap <silent><leader>pc3 :AsyncTask file-run-4<cr>
noremap <silent><leader>pb :AsyncTask file-build<cr>
noremap <silent><leader>ps :AsyncStop!<cr>
