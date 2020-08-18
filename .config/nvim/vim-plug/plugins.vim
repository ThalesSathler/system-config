let vimPlugDir = fnamemodify($HOME, ':p:h') . '/system-config/.config/nvim/autoload'

"""""" VimPlug
if empty(glob(vimPlugDir . '/plug.vim'))
  silent !curl -fLo $HOME/system-config/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

autocmd VimEnter *
  \   if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|    PlugInstall --sync | q
  \|  endif

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin(vimPlugDir . '/plugged')

" Make sure you use single quotes

" Any valid git URL is allowed

"""""" Directory management and travel
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-ctrlspace/vim-ctrlspace'

"""""" Syntax highlighting
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'sheerun/vim-polyglot'

"""""" Linting and Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"""""" Vim read .editorconfig file
Plug 'editorconfig/editorconfig-vim'

"""""" Allow multiple cursors on vim
" Plug 'terryma/vim-multiple-cursors'

"""""" Auto insert quotes, parentheses, brackets, braces
Plug 'jiangmiao/auto-pairs'


""" testing and debugging
Plug 'vim-test/vim-test'

""" Onedark theme
Plug 'joshdick/onedark.vim'

""" Terminal
Plug 'vimlab/split-term.vim'

"""""" Themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim', { 'as': 'dracula' }

"""""" Syntax highlighting js
" Plug 'pangloss/vim-javascript'
" Plug 'mxw/vim-jsx'

call plug#end()

unlet vimPlugDir
