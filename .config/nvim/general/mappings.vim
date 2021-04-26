" let mapleader = ","
let mapleader = "\<Space>"

" Panels navigation
nnoremap <C-H> <C-W><C-H>
" Same as:
" nnoremap <silent> <C-H> :wincmd h
nnoremap <C-J> <C-W><C-J>
" Same as:
" nnoremap <silent> <C-J> :wincmd j
nnoremap <C-K> <C-W><C-K>
" Same as:
" nnoremap <silent> <C-K> :wincmd K
nnoremap <C-L> <C-W><C-L>
" Same as:
" nnoremap <silent> <C-L> :wincmd L

" Buffers config
""" Buffer navigation
nnoremap <silent> <Leader>bn :bn<CR>
nnoremap <silent> <Leader>bp :bp<CR>
""" Buffer deletion
nnoremap <silent> <Leader>bd :bd<CR>

nmap <silent> <Leader> <Space> :nohlsearch

" Copy/Paste from/to clipboard
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>y "+y
vmap <Leader>p "+p
vmap <Leader>P "+P

nnoremap <Leader>v :tabedit $MYVIMRC<CR>

nnoremap <Leader>jf :%!python -m json.tool<CR>
