" Alternate way to save
nnoremap <C-s> :w<CR>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <leader><Left> <C-w>h
nnoremap <leader><Down> <C-w>j
nnoremap <leader><Up> <C-w>k
nnoremap <leader><Right> <C-w>l

" Consistency
nnoremap Y y$

nnoremap <leader>j :cnext<CR>zz
nnoremap <leader>k :cprev<CR>zz
nnoremap <leader>q :call ToggleQFList()<CR>

let g:open_q = 0

fun! ToggleQFList()
    if g:open_q == 1
        let g:open_q = 0
        cclose
    else
        let g:open_q = 1
        copen
    end
endfun
