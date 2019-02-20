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
Plug 'bling/vim-airline'
Plug 'jiangmiao/auto-pairs'

" Initialize plugin system
call plug#end()

set number relativenumber
set numberwidth=2
set smartindent
set shiftwidth=2
set tabstop=2
set ruler
set cursorline
syntax on

let g:deoplete#enable_at_startup = 1
let g:javascript_plugin_flow = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_fixers = {
\ 	'python': [
\ 		'isort',
\ 		'yapf',
\ 		'remove_trailing_lines',
\ 		'trim_whitespace'
\ 	],
\ 	'javascript': [
\ 		'eslint',
\ 		'prettier'
\ 	]
\ }

map <C-x> :NERDTreeToggle<CR>
