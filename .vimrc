if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $
endif

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Any valid git URL is allowed

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale', { 'do': 'pip install --user flake8 isort yapf' }
Plug 'maralla/completor.vim', { 'do': 'pip install --user jedi' }
Plug 'davidhalter/jedi-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'janko-m/vim-test'
Plug 'editorconfig/editorconfig-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'pangloss/vim-javascript'
" Plug 'mxw/vim-jsx'
" Plug 'jelera/vim-javascript-syntax'
" Plug 'Shougo/deoplete.nvim'
" Plug 'wokalski/autocomplete-flow' "You will also need the following for function argument completion:
" Plug 'Shougo/neosnippet'
" Plug 'Shougo/neosnippet-snippets'

" Initialize plugin system
call plug#end()

filetype plugin on
set omnifunc=syntaxcomplete#Complete
set number relativenumber
set numberwidth=2
set breakindent
set autoindent
set smartindent
set expandtab
set softtabstop=2
set tabstop=2
set shiftwidth=2
set ruler
set cursorline
set colorcolumn=80
set nowritebackup
set noswapfile
set nobackup
" set termguicolors
syntax on

" let g:deoplete#enable_at_startup = 1
let g:javascript_plugin_flow = 1
let g:ale_linters = {
\   'python': [
\     'flake8',
\     'pylint'
\   ],
\   'javascript': [
\     'eslint',
\     'prettier'
\   ]
\ }
let g:ale_fixers = {
\ 	'python': [
\ 		'isort',
\ 		'yapf',
\ 		'remove_trailing_lines',
\ 		'trim_whitespace'
\ 	],
\ 	'javascript': [
\ 		'eslint',
\     'prettier'
\ 	]
\ }
let g:ale_fix_on_save = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 1
let g:airline_theme = 'dark_minimal'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:NERDTreeShowHidden=1
" let g:jsx_ext_required = 1

nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

nnoremap <C-x> :NERDTreeToggle<CR>
