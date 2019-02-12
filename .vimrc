if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
		    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
		  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
		endif

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Theme
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'terryma/vim-multiple-cursors'

Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale', { 'do': 'sudo pip install flake8 isort yapf' }
Plug 'maralla/completor.vim', { 'do': 'sudo pip install jedi' }
Plug 'davidhalter/jedi-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'janko-m/vim-test'
Plug 'tpope/vim-dispatch'

Plug 'https://github.com/pangloss/vim-javascript.git'

Plug 'editorconfig/editorconfig-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'https://github.com/tpope/vim-surround.git'
" Initialize plugin system
call plug#end()

set background=dark
set number " relativenumber
set numberwidth=4
set smartindent
set shiftwidth=2
set tabstop=2
set ruler
syntax on

let g:deoplete#enable_at_startup = 1
let g:javascript_plugin_flow = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0

map <C-x> :NERDTreeToggle<CR>
