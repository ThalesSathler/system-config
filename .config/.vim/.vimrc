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

"""""" Linting
Plug 'w0rp/ale', { 'do': 'pip install --user flake8 isort yapf' }

"""""" Vim red .editorconfig file
Plug 'editorconfig/editorconfig-vim'

"""""" Allow multiple cursors on vim
Plug 'terryma/vim-multiple-cursors'

"""""" Auto insert quotes, parentheses, brackets, braces
Plug 'jiangmiao/auto-pairs'

"""""" Themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"""""" Syntax highlighting js
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

"""""" Auto completion
Plug 'davidhalter/jedi-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

""""" Onedark theme
Plug 'https://github.com/joshdick/onedark.vim'


"Initialize plugin system
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
set colorcolumn=80,120
set nowritebackup
set noswapfile
set nobackup
set t_Co=256
syntax on

" Theme
colorscheme onedark

" ale config
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
\   '*': [
\ 		'remove_trailing_lines',
\ 		'trim_whitespace',
\   ],
\ 	'python': [
\ 		'isort',
\ 		'yapf',
\ 	],
\ 	'javascript': [
\     'tsserver',
\ 		'eslint',
\     'prettier'
\ 	]
\ }
let g:ale_fix_on_save = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 1
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

" airline config
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" airline theme config
let g:airline_theme = 'dark'

" coc config
let g:coc_global_extensions = [
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-json',
  \ 'coc-vetur',
  \ 'coc-python',
  \ 'coc-yaml',
  \ ]

""" Remap keys for gotos
nmap <silent> gd :call CocAction('jumpDefinition', 'tab drop')<CR>
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

""" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" jedi config
let g:jedi#use_tabs_not_buffers = 1

" Nerdtree config
let g:NERDTreeShowHidden=1
nnoremap <C-x> :NERDTreeToggle<CR>

" Panels navigation
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
