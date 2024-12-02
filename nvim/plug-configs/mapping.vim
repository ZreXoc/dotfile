nmap <leader>pq :%SnipRun<cr>
vmap <leader>pq :SnipRun<cr>


"nmap <Leader>f [fzf-p]
"xmap <Leader>f [fzf-p]
"nnoremap <silent>[fzf-p]p :<C-u>CocCommand fzf-preview.ProjectFiles<CR>
"nnoremap <silent> [fzf-p]b     :<C-u>CocCommand fzf-preview.Buffers<CR>
"nnoremap <silent> [fzf-p]B     :<C-u>CocCommand fzf-preview.AllBuffers<CR>
"nnoremap <silent>[fzf-p]* :<C-u>CocCommand fzf-preview.Lines --add-fzf-arg=--no-sort<CR>
"nnoremap <silent>[fzf-p]w :<C-u>CocCommand fzf-preview.Lines --add-fzf-arg=--no-sort --add-fzf-arg=--query="'"<CR><CR>
"nnoremap <silent>[fzf-p].     :<C-u>CocCommand fzf-preview.Lines --add-fzf-arg=--no-sort --add-fzf-arg=--query="'<C-r>=expand('<cword>')<CR>"<CR>


nnoremap <silent> <Leader>ff     :<C-u>CocCommand fzf-preview.FromResources project git directory buffer project_old project_mru project_mrw old mru mrw<CR>
nnoremap <silent> <Leader>fp     :<C-u>CocCommand fzf-preview.FromResources project_mru git<CR>
nnoremap <silent> <Leader>fgs    :<C-u>CocCommand fzf-preview.GitStatus<CR>
nnoremap <silent> <Leader>fga    :<C-u>CocCommand fzf-preview.GitActions<CR>
nnoremap <silent> <Leader>fb     :<C-u>CocCommand fzf-preview.Buffers<CR>
nnoremap <silent> <Leader>fB     :<C-u>CocCommand fzf-preview.AllBuffers<CR>
nnoremap <silent> <Leader>fo     :<C-u>CocCommand fzf-preview.FromResources buffer project_mru<CR>
nnoremap <silent> <Leader>f<C-o> :<C-u>CocCommand fzf-preview.Jumps<CR>
nnoremap <silent> <Leader>fg;    :<C-u>CocCommand fzf-preview.Changes<CR>
nnoremap <silent> <Leader>f/     :<C-u>CocCommand fzf-preview.Lines --add-fzf-arg=--no-sort --add-fzf-arg=--query=""<CR>
nnoremap <silent> <Leader>f*     :<C-u>CocCommand fzf-preview.Lines --add-fzf-arg=--no-sort --add-fzf-arg=--query="'<C-r>=expand('<cword>')<CR>"<CR>
nnoremap          <Leader>fgr    :<C-u>CocCommand fzf-preview.ProjectGrep<Space>
xnoremap          <Leader>fgr    "sy:CocCommand   fzf-preview.ProjectGrep<Space>-F<Space>"<C-r>=substitute(substitute(@s, '\n', '', 'g'), '/', '\\/', 'g')<CR>"
nnoremap <silent> <Leader>fs     :<C-u>CocCommand fzf-preview.VistaCtags<CR>
nnoremap <silent> <Leader>fq     :<C-u>CocCommand fzf-preview.QuickFix<CR>
nnoremap <silent> <Leader>fl     :<C-u>CocCommand fzf-preview.LocationList<CR>

nnoremap <silent> <leader>ns     :<C-u>Vista!!<CR>
nnoremap <silent> <Leader>st     :<C-u>CocCommand fzf-preview.VistaCtags<CR>
nnoremap <silent> <Leader>sb     :<C-u>CocCommand fzf-preview.VistaBufferCtags<CR>
